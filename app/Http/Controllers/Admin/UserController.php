<?php
namespace App\Http\Controllers\Admin;
use App\Http\Controllers\AdminController;

use App\User;
use Illuminate\Support\Facades\Validator;
use Request;
use Illuminate\Http\Request as MyRequest;
use \Redirect;
use Laracasts\Flash\Flash;

class UserController extends AdminController
{

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */

    protected $section = 'staff';

    public function index()
    {
        $staffs = User::all();
        $heading = 'List of Staff';
        return view('staff.listing',compact('staffs', 'heading'))->with('section', $this->section);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        $heading = 'Create Staff Member';
        return view('staff.create', compact('heading'))->with('section', $this->section);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(MyRequest $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|unique:users',
            'password' => 'required',
        ]);

        if($validator->fails())
            return redirect()->back()->withErrors($validator->errors());

        $input = $request->all();
        $input['password'] = bcrypt($input['password']);
        User::create($input);
        Flash::success('Staff member created successfully.');
        return Redirect::route('admin.staff.index')->with('section', $this->section);
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
        $staff = User::find($id);
        $heading = 'Update Staff Member';
        return view('staff.update', compact('heading', 'staff'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int $id
     * @return Response
     */
    public function update($id)
    {
        $staff = User::find($id);
        $input = Request::all();
        if($input['password'] != '')
            $input['password'] = bcrypt($input['password']);
        $staff->update($input);
        Flash::success('Staff member updated successfully.');
        return Redirect::route('admin.staff.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return Response
     */
    public function destroy($id)
    {
        User::destroy($id);
        Flash::success('Staff member deleted successfully.');
        return Redirect::route('admin.staff.index');
    }

}

?>