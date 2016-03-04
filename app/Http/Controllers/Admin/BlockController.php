<?php
namespace App\Http\Controllers\Admin;
use App\Http\Controllers\AdminController;

use App\Society;
use App\Block;
use Request;
use \Redirect;
use \DB;
use Laracasts\Flash\Flash;

class BlockController extends AdminController
{

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */

    protected $section = 'block';

    public function index()
    {
        $blocks = DB::table('blocks')
            ->join('societies', 'blocks.society_id', '=', 'societies.id')
            ->select('blocks.*', 'societies.name as society_name')
            ->where('blocks.name', '!=', 'none')
            ->get();
        $heading = 'List of Blocks';
        return view('block.listing', compact('blocks', 'heading'))->with('section', $this->section);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        $heading = 'Create Block';
        $societies = ['' => 'Please Select ...'] + Society::lists('name', 'id');
        return view('block.create', compact('societies', 'heading'))->with('section', $this->section);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store()
    {
        $input = Request::all();
        Block::create($input);
        Flash::success('Block created successfully.');
        return Redirect::route('admin.blocks.index');
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
        $heading = 'Update Block';
        $society = Society::lists('name', 'id');
        $block = Block::find($id);
        return view('block.update', compact('block', 'society', 'heading'))->with('section', $this->section);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int $id
     * @return Response
     */
    public function update($id)
    {
        $block = Block::find($id);
        $block->update(Request::all());
        Flash::success('Block updated successfully.');
        return Redirect::route('admin.blocks.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return Response
     */
    public function destroy($id)
    {
        Block::destroy($id);
        Flash::success('Block deleted successfully.');
        return Redirect::route('admin.blocks.index');
    }

}

?>