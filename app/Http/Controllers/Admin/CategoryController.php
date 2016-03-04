<?php namespace App\Http\Controllers\Admin;
use App\Http\Controllers\AdminController;
use App\Category;
use Request;
use \Redirect;
use Laracasts\Flash\Flash;

class CategoryController extends AdminController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */

    protected $section = 'category';

	public function index()
	{
        $categories = Category::all();
        $heading = 'List of Property Types';
        return view('category.listing', compact('categories', 'heading'))->with('section', $this->section);
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
        $heading = 'Create Property Type';
        return view('category.create', compact('heading'))->with('section', $this->section);
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
        $input = Request::all();
        Category::create($input);
        Flash::success('Property type created successfully.');
        return Redirect::route('admin.categories.index')->with('section', $this->section);
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{

	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
        $category = Category::find($id);
        $heading = 'Update Property Type';
        return view('category.update', compact('heading', 'category'));
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
        $category = Category::find($id);
        $category->update(Request::all());
        Flash::success('Property type updated successfully.');
        return Redirect::route('admin.categories.index');
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
        Category::destroy($id);
        Flash::success('Property type deleted successfully.');
        return Redirect::route('admin.categories.index');
	}

}
