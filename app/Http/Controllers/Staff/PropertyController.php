<?php
namespace App\Http\Controllers\Staff;
use App\Http\Controllers\StaffController;
use App\Block;
use App\Category;
use App\City;
use App\Notifications;
use App\Society;
use App\Property;
use App\User;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Validator;
use Redirect;
use \Illuminate\Http\Request;
use Laracasts\Flash\Flash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use App\Traits\PropertyRequestTrait;
use App\Libs\Helpers\Land as LandHelper;

class PropertyController extends StaffController
{
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */

    protected $section = 'property';
    public $request = null;
    public $authenticatedUser = null;
    public function __construct(Request $request){
        parent::__construct();
        $this->request = $request;
        $this->authenticatedUser = Auth::user();
    }

    public function computeData(){
        $data = [
            'status' => config('constants.PROPERTY_STATUSES'),
            'purpose' => config('constants.PROPERTY_PURPOSES'),
            'group' => config('constants.PROPERTY_TYPES'),
            'location' => config('constants.PROPERTY_LOCATIONS'),
            'lead_type' => config('constants.LEAD_TYPES'),
            'size_units' => config('constants.SIZE_UNITS'),
            'users' => User::lists('name', 'id'),
            'cities' => City::lists('name', 'id'),
            'societies' => Society::lists('name','id'),
            'blocks' => Block::lists('name', 'id'),
            'categories' => Category::lists('name', 'id'),
        ];

        return $data;
    }
    public function index()
    {
        $properties = Property::search($this->createSearchParams())
            ->orderBy('properties.id','DESC')->get();

        $view = 'property.listing';
        if($this->request->get('print') == true)
            $view = 'print.property.listing';
        return view($view, ['heading'=>'All Properties'])
            ->with('properties',$properties)
            ->with('data',$this->computeData())
            ->with('previousSearch', $this->request->all());
    }

    public function myProperties()
    {
        $properties = Property::search($this->createSearchParams(['user'=>$this->authenticatedUser->id]))
            ->orderBy('properties.id','DESC')->get();

        $view = 'property.listing';
        if($this->request->get('print') == true)
            $view = 'print.property.listing';
        return view($view, ['heading'=>'My Properties'])
            ->with('properties',$properties)
            ->with('data',$this->computeData())
            ->with('previousSearch', $this->request->all());
    }

    public function search()
    {

        $properties = Property::search($this->createSearchParams($this->request->all()))
            ->orderBy('properties.id','DESC')
            ->paginate(config('constants.PROPERTIES_PER_PAGE'))->setPath(Route::getCurrentRoute()->getPath());

        $view = 'property.listing';
        if($this->request->get('print') == true)
            $view = 'print.property.listing';

        return view($view, ['heading'=>'Searched Properties'])
            ->with('properties',$properties)
            ->with('data',$this->computeData())
            ->with('previousSearch', $this->request->all());
    }

    private function createSearchParams($params = [])
    {
        $searchParams = $params;

        $searchParams['bedrooms']  =($params['bedrooms'] == 3)? $params['bedrooms']:null;
        $searchParams['size_from'] = ($params['size_from'] != null)? LandHelper::convert($searchParams['land'], 'square feets', $params['size_from']) :null;
        $searchParams['size_to']   = ($params['size_to'] != null)? LandHelper::convert($searchParams['land'], 'square feets', $params['size_to']) :null;
        $searchParams['size_to']   = ($searchParams['size_to'] == null)?$searchParams['size_from']:$searchParams['size_to'];
        $searchParams['price_to']  = ($searchParams['price_to'] == null)?$searchParams['price_from']:$searchParams['price_to'];

        $searchParams['authenticated_user'] = $this->authenticatedUser;
        return $searchParams;
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        $heading = 'Create Property';

        $house_type = ['' => 'Please Select ...', 'new' => 'Brand New House', 'old' => 'Old House'];
        $bedrooms = ['' => 'Please Select ...', 1 => '1 Bedroom', 2 => '2 Bedrooms', 3 => '3 Bedrooms', 4 => '4 Bedrooms', 5 => '5 Bedrooms', 6 => '6 Bedrooms', 7 => '6+ Bedrooms'];
        $features = ['TV Lounge', 'Drawing Room', 'Dinning Room', 'Servant Quarters', 'Study Room', 'Garage', 'Store Room', 'Balcony'];

        return view('property.create', compact('house_type', 'bedrooms', 'features', 'heading'))
            ->with('section', $this->section)
            ->with('data',$this->computeData());
    }


    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store()
    {
        $validator = Validator::make($this->request->all(),
            [
                'category'=>'required',
                'city'=>'required',
                'society'=>'required',
                'block'=>'required',
                'location'=>'required',
                'lead_type'=>'required',
                'size'=>'required',
                'size_unit'=>'required',
                'type' =>'required',
                'purpose' => 'required',
                'price' => 'required',
                'owner_estate' => ($this->request->get('lead_type') == 'indirect')?'required':null,
                'owner_name' =>'required',
                'owner_phone' => 'required',
                'owner_mobile' =>'required',
                'owner_address' =>'required',
             ]
        );
        if($validator->fails()){
            return redirect()->back()->withErrors($validator);
        }

        $newPropertyInfo = $this->getNewPropertyInfo();
       if(!Property::create($newPropertyInfo))
            return redirect()->back()->withInputs();

        return redirect('my-properties');

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

        $property = Property::search($this->createSearchParams(['property_id'=>$id]))->get()->first();

        if($this->user->id != $property->user_id && $property->share_property == 'N')
        {
            /*Flash::error('You are not authorized to view this property.');
            return redirect('home');*/
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

        $users = Auth::user()->id;
        $house_type = ['' => 'Please Select ...', 'new' => 'Brand New House', 'old' => 'Old House'];
        $bedrooms = ['' => 'Please Select ...', 1 => '1 Bedroom', 2 => '2 Bedrooms', 3 => '3 Bedrooms', 4 => '4 Bedrooms', 5 => '5 Bedrooms', 6 => '6 Bedrooms', 7 => '6+ Bedrooms'];
        $features = ['TV Lounge', 'Drawing Room', 'Dinning Room', 'Servant Quarters', 'Study Room', 'Garage', 'Store Room', 'Balcony'];
        $features_selected = explode(',', $property->features);

        return view('property.update', compact('property','users', 'house_type', 'bedrooms', 'features', 'features_selected', 'heading'))
            ->with('section', $this->section)
            ->with('data', $this->computeData());
    }

    /**
     * Update the specified resource in storage.
     *
     * @return Response
     */
    public function update()
    {

        $property = Property::find($this->request->get('property_id'));

        if($this->authenticatedUser->cannot('update','property',$property))
            return redirect('my-properties');

        $validator = Validator::make($this->request->all(),
            [

                'category'=>'required',
                'city'=>'required',
                'society'=>'required',
                'block'=>'required',
                'location'=>'required',
                'lead_type'=>'required',
                'size'=>'required',
                'size_unit'=>'required',
                'type' =>'required',
                'purpose' => 'required',
                'price' => 'required',
                'owner_estate' => ($this->request->get('lead_type') == 'indirect')?'required':null,
                'owner_name' =>'required',
                'owner_phone' => 'required',
                'owner_mobile' =>'required',
                'owner_address' =>'required',
            ]
        );
        if($validator->fails()){
            return redirect()->back()->withErrors($validator);
        }

        $request = $this->getNewPropertyInfo();
        $property->update($request);

        Flash::success('Property updated successfully.');
        return redirect::route('my-properties');
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
        return redirect::route('my-properties');
    }



    public function getNewPropertyInfo()
    {
        $propertyInfo = [
            'category_id'=>$this->request->get('category'),
            'bedrooms' =>($this->request->get('category') == 3)? $this->request->get('bedrooms'):null,
            'city_id'=>$this->request->get('city'),
            'society_id'=>$this->request->get('society'),
            'block_id'=>$this->request->get('block'),
            'location'=>$this->request->get('location'),
            'user_id'=>$this->authenticatedUser->id,
            'type'=>$this->request->get('lead_type'),
            'property_no'=>$this->request->get('property_number'),
            'size'=>LandHelper::convert($this->request->get('size_unit'), 'square feets', $this->request->get('size')),
            'size_unit'=>$this->request->get('size_unit'),
            'group' =>$this->request->get('type'),
            'purpose' => $this->request->get('purpose'),
            'price' => $this->request->get('price'),
            'estate_name' => ($this->request->get('lead_type') == 'indirect')?$this->request->get('owner_estate'):null,
            'contact_person' =>($this->request->get('lead_type') != '')?$this->request->get('owner_name'):null,
            'phone' => ($this->request->get('lead_type') != '')?$this->request->get('owner_phone'):null,
            'mobile' =>($this->request->get('lead_type') != '')? $this->request->get('owner_mobile'):null,
            'address' =>($this->request->get('lead_type') != '')? $this->request->get('owner_address'):null,
            'share_contact_info'=>($this->request->get('share_contact_info') != null)?$this->request->get('share_contact_info'):'N',
            'sold'=>($this->request->get('sold') != null)?$this->request->get('sold'):'N',
            'share_property'=>($this->request->get('share_property') != null)?$this->request->get('share_property'):'N',
        ];

        return $propertyInfo;
    }
}

?>