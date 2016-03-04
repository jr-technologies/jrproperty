<?php
namespace App\Http\Controllers\Admin;

use App\City;
use App\Http\Controllers\AdminController;
use Request;
use \Redirect;
use Laracasts\Flash\Flash;

class CityController extends AdminController
{

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */

    protected $section = 'city';

    public function index()
    {
        $cities = City::all();
        $heading = 'List of Cities';
        return view('city.listing', compact('cities', 'heading'))->with('section', $this->section);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        $heading = 'Create City';
        return view('city.create', compact('heading'))->with('section', $this->section);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store()
    {
        $input = Request::all();
        City::create($input);
        Flash::success('City created successfully.');
        return Redirect::route('admin.city.index')->with('section', $this->section);
        //return redirect :: route(‘city.create’);
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return Response
     */
    public function show($id)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return Response
     */
    public function edit($id)
    {
        $city = City::find($id);
        $heading = 'Update City';
        return view('city.update', compact('heading', 'city'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int $id
     * @return Response
     */
    public function update($id)
    {
        $city = City::find($id);
        $city->update(Request::all());
        Flash::success('City updated successfully.');
        return Redirect::route('admin.city.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return Response
     */
    public function destroy($id)
    {
        City::destroy($id);
        Flash::success('City deleted successfully.');
        return Redirect::route('admin.city.index');
    }

}

?>