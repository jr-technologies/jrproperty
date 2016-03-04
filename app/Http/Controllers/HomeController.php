<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\URL;
use Illuminate\Support\Str;
use Request;
use DB;
use App\City;
use App\Society;
use App\Block;
use App\Category;
use App\User;
use \Redirect;

class HomeController extends Controller {

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    protected $section = 'property';

    public function index() {


        $heading = 'List of Properties';

        $cities = ['' => 'Please Select City ...'] + City::lists('name', 'id');
        $societies = ['' => 'Please Select Society ...'];
        $blocks = ['' => 'Please Select Blocks ...'];




        $property = DB::table('properties')->join('societies', 'societies.id', '=', 'properties.society_id')
                        ->join('blocks', 'blocks.id', '=', 'properties.block_id')
                        ->join('categories', 'categories.id', '=', 'properties.category_id')
                        ->join('cities', 'cities.id', '=', 'properties.city_id')
                        ->join('users', 'users.id', '=', 'properties.user_id')
                        ->select('properties.*', 'societies.name as society_name', 'cities.name as city_name', 'categories.name as categories_name', 'blocks.name as block_name', 'users.name as user_name')->orderBy(DB::raw('RAND()'))->paginate(12);

        $featured = DB::table('properties')->join('societies', 'societies.id', '=', 'properties.society_id')
                        ->join('blocks', 'blocks.id', '=', 'properties.block_id')
                        ->join('categories', 'categories.id', '=', 'properties.category_id')
                        ->join('cities', 'cities.id', '=', 'properties.city_id')
                        ->join('users', 'users.id', '=', 'properties.user_id')
                        ->select('properties.*', 'societies.name as society_name', 'cities.name as city_name', 'categories.name as categories_name', 'blocks.name as block_name', 'users.name as user_name')->where('properties.share_property', '=', 'Y')->orderBy('properties.id', 'DESC')->paginate(16);

        return view('frontend.pages.index', compact('property', 'featured', 'cities', 'societies', 'blocks'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create() {
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store() {

        $input = Request::all();

        $id = Request::get('id');

        if (Request::ajax()) {

            if ($input['field'] == 'society_id') {
                return $sub = Society::select('id', 'name')->where('city_id', '=', $id)->get();
            } elseif ($input['field'] == 'block_id') {
                return $block = Block::select('id', 'name')->where('society_id', '=', $id)->where('name', '!=', 'none')->get();
            }
        }

        $input = Request::get('city_id');


        $search = array();
        $search = Request::all();
        $get_price = Request::get('price_min');
        if ($get_price != "") {
            $search['price'] = Request::get('price_min') . ',' . Request::get('price_max');
        }
        $property = DB::table('properties')
                ->join('societies', 'societies.id', '=', 'properties.society_id')
                ->join('blocks', 'blocks.id', '=', 'properties.block_id')
                ->join('categories', 'categories.id', '=', 'properties.category_id')
                ->join('cities', 'cities.id', '=', 'properties.city_id')
                ->join('users', 'users.id', '=', 'properties.user_id')
                ->select('properties.*', 'societies.name as society_name', 'cities.name as city_name', 'categories.name as categories_name', 'blocks.name as block_name', 'users.name as user_name')
                ->where('properties.city_id', '=', $input)
                ->whereNested(function ($query) use ($search) {
                    foreach ($search as $key => $value) {

                        if ($key == 'search' || $key == 'ajax_url' || $key == '_token' || $key == 'page' || $key == 'price_min' || $key == 'price_max')
                            continue;
                        if ($value != '') {
                            #echo $key.'='.$value;
                            if ($key == 'price') {
                                #echo $key.'='.$value;
                                $value = explode(',', $value);
                                $query->whereBetween('properties.' . $key, $value);
                            }

                            if ($key != 'price') {

                                #echo $key.'='.$value;
                                $query->where('properties.' . $key, '=', $value);
                            }
                        }
                    }
                }, 'and')
                
                ->groupBy('properties.id')
                ->paginate(1000);


        return view('frontend.pages.search', compact('property'));
    }


    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return Response
     */
    public function show($id) {
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return Response
     */
    public function edit($id) {
        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int $id
     * @return Response
     */
    public function update($id) {
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return Response
     */
    public function destroy($id) {
        
    }

    public function detail($id) {
        $detail = $id;

        $property = DB::table('properties')->join('societies', 'societies.id', '=', 'properties.society_id')
                        ->join('blocks', 'blocks.id', '=', 'properties.block_id')
                        ->join('categories', 'categories.id', '=', 'properties.category_id')
                        ->join('cities', 'cities.id', '=', 'properties.city_id')
                        ->join('users', 'users.id', '=', 'properties.user_id')
                        ->select('properties.*', 'societies.name as society_name', 'cities.name as city_name', 'categories.name as categories_name', 'blocks.name as block_name', 'users.name as user_name')->where('properties.id', '=', $detail)->get();


        return view('frontend.pages.detail', compact('detail', 'property'));
    }

    public function properties() {

        $property = DB::table('properties')->join('societies', 'societies.id', '=', 'properties.society_id')
                        ->join('blocks', 'blocks.id', '=', 'properties.block_id')
                        ->join('categories', 'categories.id', '=', 'properties.category_id')
                        ->join('cities', 'cities.id', '=', 'properties.city_id')
                        ->join('users', 'users.id', '=', 'properties.user_id')
                        ->select('properties.*', 'societies.name as society_name', 'cities.name as city_name', 'categories.name as categories_name', 'blocks.name as block_name', 'users.name as user_name')->paginate(6);
        return view('frontend.pages.properties', compact('property'));
    }

    public function propertieslist() {

        $property = DB::table('properties')->join('societies', 'societies.id', '=', 'properties.society_id')
                        ->join('blocks', 'blocks.id', '=', 'properties.block_id')
                        ->join('categories', 'categories.id', '=', 'properties.category_id')
                        ->join('cities', 'cities.id', '=', 'properties.city_id')
                        ->join('users', 'users.id', '=', 'properties.user_id')
                        ->select('properties.*', 'societies.name as society_name', 'cities.name as city_name', 'categories.name as categories_name', 'blocks.name as block_name', 'users.name as user_name')->paginate(6);
        return view('frontend.pages.propertieslist', compact('property'));
    }

}
