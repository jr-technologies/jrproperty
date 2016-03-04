<?php namespace App\Http\Controllers\Admin;
use App\Http\Controllers\AdminController;
use Illuminate\Support\Facades\DB;
use App\Block;
use App\Category;
use App\City;
use App\Society;
use App\Property;
use App\User;
use Request;
class HomeController extends AdminController
{

    /*
    |--------------------------------------------------------------------------
    | Home Controller
    |--------------------------------------------------------------------------
    |
    | This controller renders your application's "dashboard" for users that
    | are authenticated. Of course, you are free to change or remove the
    | controller as you wish. It is just here to get your app started!
    |
    */

    /**
     * Create a new controller instance.
     *
     * @return void
     */

    protected $section = 'home';

    public function __construct()
    {
        //$this->middleware('auth');
        parent::__construct();
    }

    /**
     * Show the application dashboard to the user.
     *
     * @return Response
     */
    public function index()
    {

        $heading = 'All Property Listing';

        $search = array();
        if(Request::get('search') == 'yes')
        {
            $heading = 'Property Search Results';
            $search = Request::all();
        }


        $properties = DB::table('properties')
            ->join('cities', 'properties.city_id', '=', 'cities.id')
            ->join('societies', 'properties.society_id', '=', 'societies.id')
            ->join('blocks', 'properties.block_id', '=', 'blocks.id')
            ->join('users', 'properties.user_id', '=', 'users.id')
            ->join('categories', 'properties.category_id', '=', 'categories.id')
            ->select('properties.*', 'cities.name as city_name', 'societies.name as society_name', 'blocks.name as block_name', 'users.name as user_name', 'categories.name as category_name')
            ->where('properties.share_property', 'Y')
            ->whereNested(function($query) use ($search) {
                            foreach ($search as $key => $value)
                            {
                                if($key == 'search' || $key == 'ajax_url' || $key == '_token' || $key == 'page') continue;
                                if($value != ''){
                                    $query->where('properties.'.$key, '=', $value);
                                }
                            }
                        }, 'and')
            ->orderBy('created_at', 'desc')
            ->paginate(20);

        $properties->setPath('home');

        $status = ['Y' => 'Sold', 'N' => 'Available'];
        $purpose = ['sale' => 'For Sale', 'rent' => 'For Rent', 'wanted' => 'Wanted'];
        $group = ['' => 'Please Select ...', 'commercial' => 'Commercial', 'residential' => 'Residential'];

        $users = ['' => 'Please Select ...'] + User::lists('name', 'id');
        $cities = ['' => 'Please Select ...'] + City::lists('name', 'id');
        $societies = ['' => 'Please Select ...'] + Society::where('city_id', $search['city_id'])->lists('name', 'id');

        $blocks = ['' => 'Please Select ...'] + Block::where('society_id', $search['society_id'])->lists('name', 'id');
        $location = [   '' => 'Please Select ...',
            'corner' => 'Corner',
            'non-corner' => 'Non-Corner',
            'facing-park' => 'Facing Park',
            'main-boulevard' => 'Main Boulevard',
            'average-plot' => 'Average Plot'
        ];
        $categories = ['' => 'Please Select ...'] + Category::lists('name', 'id');

        $from = 'all_listing';

        $token = csrf_token();
        $route = 'home.index';
        $form_data = serialize($search);

        return view('property.listing', compact('properties', 'form_data', 'route', 'token', 'users', 'cities', 'societies', 'blocks', 'location', 'categories', 'heading', 'status', 'from', 'purpose', 'group'))->with('section', 'home');
    }

}
