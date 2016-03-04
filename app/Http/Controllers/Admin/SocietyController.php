<?php
namespace App\Http\Controllers\Admin;
use App\Http\Controllers\AdminController;
use App\City;
use App\Society;
use Request;
use \Redirect;
use \DB;
use Laracasts\Flash\Flash;

class SocietyController extends AdminController
{

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */

    protected $section = 'society';

    public function index()
    {
        $societies = DB::table('societies')
            ->join('cities', 'societies.city_id', '=', 'cities.id')
            ->select('societies.*', 'cities.name as city_name')
            ->get();
        $heading = 'List of Societies';
        return view('society.listing', compact('societies', 'heading'))->with('section', $this->section);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        $heading = 'Create Society';
        $city = ['' => 'Please Select ...'] + City::lists('name', 'id');
        return view('society.create', compact('city', 'heading'))->with('section', $this->section);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store()
    {
        $input = Request::all();
        Society::create($input);
        Flash::success('Society created successfully.');
        return Redirect::route('admin.societies.index');
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
        $heading = 'Update Society';
        $city = City::lists('name', 'id');
        $society = Society::find($id);
        return view('society.update', compact('city', 'society', 'heading'))->with('section', $this->section);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int $id
     * @return Response
     */
    public function update($id)
    {
        $society = Society::find($id);
        $society->update(Request::all());
        Flash::success('Society updated successfully.');
        return Redirect::route('admin.societies.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return Response
     */
    public function destroy($id)
    {
        Society::destroy($id);
        Flash::success('Society deleted successfully.');
        return Redirect::route('admin.societies.index');
    }

}

?>