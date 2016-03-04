<?php
namespace App\Http\Controllers\Admin;
use App\Http\Controllers\AdminController;
use App\Block;
use App\Category;
use App\City;
use App\Society;
use App\Property;
use App\User;
use Redirect;
use Request;
use Laracasts\Flash\Flash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
class PropertyController extends AdminController
{

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */

    protected $section = 'property';

    public function index()
    {
        $heading = 'List of Properties';

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
            ->where('properties.user_id', $this->user->id)
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

        $properties->setPath('properties');

        $status = ['Y' => 'Sold', 'N' => 'Available'];
        $purpose = ['sale' => 'For Sale', 'rent' => 'For Rent', 'wanted' => 'Wanted'];
        $group = ['' => 'Please Select ...', 'commercial' => 'Commercial', 'residential' => 'Residential'];
        $from = 'my_listing';

        $users = ['' => 'Please Select ...'] + User::lists('name', 'id');
        $cities = ['' => 'Please Select ...'] + City::lists('name', 'id');
        //$societies = $blocks = ['' => 'Please Select ...'];

        $societies = ['' => 'Please Select ...'] + Society::where('city_id', $search['city_id'])->lists('name', 'id');
        $blocks = ['' => 'Please Select ...'] + Block::where('society_id', $search['society_id'])->lists('name', 'id');

        //$societies = ['' => 'Please Select ...'] + Society::lists('name', 'id');
        //$blocks = ['' => 'Please Select ...'] + Block::lists('name', 'id');

        $location = [   '' => 'Please Select ...',
            'corner' => 'Corner',
            'non-corner' => 'Non-Corner',
            'facing-park' => 'Facing Park',
            'main-boulevard' => 'Main Boulevard',
            'average-plot' => 'Average Plot'
        ];
        $categories = ['' => 'Please Select ...'] + Category::lists('name', 'id');

        $route = 'properties.index';
        $token = csrf_token();



        $form_data = serialize($search);

        return view('property.listing', compact('properties', 'token', 'form_data', 'route', 'users', 'cities', 'societies', 'blocks', 'location', 'categories','heading', 'status', 'from', 'purpose', 'group'))->with('section', $this->section);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        $heading = 'Create Property';
        $purpose = ['' => 'Please Select ...', 'sale' => 'For Sale', 'rent' => 'For Rent', 'wanted' => 'Wanted'];
        $type = ['' => 'Please Select ...', 'direct' => 'Direct', 'indirect' => 'Indirect'];
        $group = ['' => 'Please Select ...', 'commercial' => 'Commercial', 'residential' => 'Residential'];
        $location = [   '' => 'Please Select ...',
                        'corner' => 'Corner',
                        'non-corner' => 'Non-Corner',
                        'facing-park' => 'Facing Park',
                        'main-boulevard' => 'Main Boulevard',
                        'average-plot' => 'Average Plot'
                    ];
        //$societies = $blocks = ['' => 'Please Select ...'];

        $societies = ['' => 'Please Select ...'] + Society::lists('name', 'id');
        $blocks = ['' => 'Please Select ...'] + Block::lists('name', 'id');
        $users = ['' => 'Please Select ...'] + User::lists('name', 'id');
        $cities = ['' => 'Please Select ...'] + City::lists('name', 'id');
        $categories = ['' => 'Please Select ...'] + Category::lists('name', 'id');
        $house_type = ['' => 'Please Select ...', 'new' => 'Brand New House', 'old' => 'Old House'];
        $bedrooms = ['' => 'Please Select ...', 1 => '1 Bedroom', 2 => '2 Bedrooms', 3 => '3 Bedrooms', 4 => '4 Bedrooms', 5 => '5 Bedrooms', 6 => '6 Bedrooms', 7 => '6+ Bedrooms'];
        $features = ['TV Lounge', 'Drawing Room', 'Dinning Room', 'Servant Quarters', 'Study Room', 'Garage', 'Store Room', 'Balcony'];

        return view('property.create', compact('users', 'house_type', 'bedrooms', 'features', 'group', 'purpose', 'categories', 'societies', 'blocks', 'type', 'location', 'cities', 'heading'))->with('section', $this->section);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store()
    {

        $input = Request::all();

        if(Request::ajax())
        {
            if($input['field'] == 'society_id')
            {
                $return = Society::select('id','name')->where('city_id', $input['id'])->get();
            }
            elseif($input['field'] == 'block_id')
            {
                $return = Block::select('id','name')->where('society_id', $input['id'])->where('name', '!=', 'none')->get();
            }

            return json_encode($return);
        }

        if($input['share_contact_info'] == '') $input['share_contact_info'] = 'N';
        if($input['share_property'] == '') $input['share_property'] = 'N';
        if($input['sold'] == '') $input['sold'] = 'N';

        if($input['price_unit'] == 'thousand')
            $input['price_converted'] = $input['price'] * 1000;
        elseif($input['price_unit'] == 'lakh')
            $input['price_converted'] = $input['price'] * 100000;
        else
            $input['price_converted'] = $input['price'] * 10000000;

        if($input['block_id'] == '')
        {
            $block = Block::select('id')->where('society_id', '=', $input['society_id'])->first();
            if($block->id == '')
            {
                $block = new Block();
                $block->society_id = $input['society_id'];
                $block->name = 'none';
                $block->save();
                //echo 'Using New ID: '.$block->id;
            }
            //else echo 'Using Old ID: '.$block->id;
            $input['block_id'] = $block->id;
        }

        if(sizeof($input['features']) > 0)
            $input['features'] = implode(',', $input['features']);

        if($this->user->type == 'admin') {
            $file = Request::file('picture');
            $fileName = strtolower(Str::slug(substr($file->getClientOriginalName(), 0, -4), '-') . '.' . $file->getClientOriginalExtension());
            $name = time('s') . '-' . $fileName;

            $file->move(public_path() . '/up_data', $name);
            $property = Property::create($input);
            $property->picture = $name;
            $property->save();
        }




        else {
            Auth::user()->properties()->create($input);
        }


        Flash::success('Property created successfully.');

        return redirect::route('admin.properties.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return Response
     */
    public function show($id)
    {
        $heading = 'Property Detail';

        $property = DB::table('properties')
            ->join('cities', 'properties.city_id', '=', 'cities.id')
            ->join('societies', 'properties.society_id', '=', 'societies.id')
            ->join('blocks', 'properties.block_id', '=', 'blocks.id')
            ->join('users', 'properties.user_id', '=', 'users.id')
            ->join('categories', 'properties.category_id', '=', 'categories.id')
            ->select('properties.*', 'cities.name as city_name', 'societies.name as society_name', 'blocks.name as block_name', 'users.name as user_name', 'categories.name as category_name')
            ->where('properties.id', $id)
            ->orderBy('created_at', 'desc')
            ->first();

        if($this->user->id != $property->user_id && $property->share_property == 'N')
        {
            Flash::error('You are not authorized to view this property.');
            return redirect('home');
        }

        $status = ['Y' => 'Sold', 'N' => 'Available'];
        $purpose = ['sale' => 'For Sale', 'rent' => 'For Rent', 'wanted' => 'Wanted'];
        $group = ['commercial' => 'Commercial', 'residential' => 'Residential'];
        $location = [
                        'corner' => 'Corner',
                        'non-corner' => 'Non-Corner',
                        'facing-park' => 'Facing Park',
                        'main-boulevard' => 'Main Boulevard',
                        'average-plot' => 'Average Plot'
                    ];

        $house_type = ['' => 'N/A', 'new' => 'Brand New House', 'old' => 'Old House'];
        $bedrooms = [1 => '1 Bedroom', 2 => '2 Bedrooms', 3 => '3 Bedrooms', 4 => '4 Bedrooms', 5 => '5 Bedrooms', 6 => '6 Bedrooms', 7 => '6+ Bedrooms'];

        $heading .= ' (Added '. date('M h, Y H:i', strtotime($property->created_at)) .')';

        return view('property.show', compact('property', 'location', 'heading', 'status', 'purpose', 'group', 'house_type', 'bedrooms'))->with('section', $this->section);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return Response
     */
    public function edit($id)
    {
        $property = Property::find($id);

        $checks = ['share_contact_info', 'share_property', 'sold'];
        foreach($checks as $check)
            if($property->{$check} == 'N') $property->{$check} = false;

        $heading = 'Update Property';
        $purpose = ['' => 'Please Select ...', 'sale' => 'For Sale', 'rent' => 'For Rent', 'wanted' => 'Wanted'];
        $type = ['' => 'Please Select ...', 'direct' => 'Direct', 'indirect' => 'Indirect'];
        $group = ['' => 'Please Select ...', 'commercial' => 'Commercial', 'residential' => 'Residential'];
        $location = [   '' => 'Please Select ...',
                        'corner' => 'Corner',
                        'non-corner' => 'Non-Corner',
                        'facing-park' => 'Facing Park',
                        'main-boulevard' => 'Main Boulevard',
                        'average-plot' => 'Average Plot'
                    ];
        $societies = ['' => 'Please Select ...'] + Society::where('city_id', $property->city_id)->lists('name', 'id');
        $blocks = ['' => 'Please Select ...'] + Block::where('society_id', $property->society_id)->lists('name', 'id');

        $users = ['' => 'Please Select ...'] + User::lists('name', 'id');
        $cities = ['' => 'Please Select ...'] + City::lists('name', 'id');
        $categories = ['' => 'Please Select ...'] + Category::lists('name', 'id');

        $house_type = ['' => 'Please Select ...', 'new' => 'Brand New House', 'old' => 'Old House'];
        $bedrooms = ['' => 'Please Select ...', 1 => '1 Bedroom', 2 => '2 Bedrooms', 3 => '3 Bedrooms', 4 => '4 Bedrooms', 5 => '5 Bedrooms', 6 => '6 Bedrooms', 7 => '6+ Bedrooms'];
        $features = ['TV Lounge', 'Drawing Room', 'Dinning Room', 'Servant Quarters', 'Study Room', 'Garage', 'Store Room', 'Balcony'];
        $features_selected = explode(',', $property->features);

        return view('property.update', compact('property','users', 'house_type', 'bedrooms', 'features', 'features_selected', 'group', 'purpose', 'categories', 'societies', 'blocks', 'type', 'location', 'cities', 'heading'))->with('section', $this->section);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int $id
     * @return Response
     */
    public function update($id)
    {
        $property = Property::find($id);

        $property->update(Request::all());

        $input = Request::all();

        if($input['share_contact_info'] == '') $input['share_contact_info'] = 'N';
        if($input['share_property'] == '') $input['share_property'] = 'N';
        if($input['sold'] == '') $input['sold'] = 'N';

        if($input['price_unit'] == 'thousand')
            $input['price_converted'] = $input['price'] * 1000;
        elseif($input['price_unit'] == 'lakh')
            $input['price_converted'] = $input['price'] * 100000;
        else
            $input['price_converted'] = $input['price'] * 10000000;

        if($input['block_id'] == '')
        {
            $block = Block::select('id')->where('society_id', '=', $input['society_id'])->first();
            if($block->id == '')
            {
                $block = new Block();
                $block->society_id = $input['society_id'];
                $block->name = 'none';
                $block->save();
                //echo 'Using New ID: '.$block->id;
            }
            //else echo 'Using Old ID: '.$block->id;
            $input['block_id'] = $block->id;
        }

        if(sizeof($input['features']) > 0)
            $input['features'] = implode(',', $input['features']);


        $property->update($input);

        $file     = Request::file('picture');

        if($file !=null) {


            $fileName = strtolower(Str::slug(substr($file->getClientOriginalName(), 0, -4), '-') . '.' . $file->getClientOriginalExtension());
            $name = time('s') . '-' . $fileName;

            $file->move(public_path() . '/up_data', $name);
            $property->picture = $name;
            $property->save();

        }




        Flash::success('Property updated successfully.');

        return redirect::route('admin.properties.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return Response
     */
    public function destroy($id)
    {
        Property::destroy($id);
        Flash::success('Property deleted successfully.');
        return redirect::route('all-properties');
    }

}

?>