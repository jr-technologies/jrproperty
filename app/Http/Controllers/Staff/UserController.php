<?php
namespace App\Http\Controllers\Staff;
use App\Http\Controllers\StaffController;
use App\User;
use App\property;
use Illuminate\Support\Facades\Auth;
use Request;
use \Redirect;
use Laracasts\Flash\Flash;

class UserController extends StaffController
{

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */

    protected $section = 'staff';

    public function index()
    {
        /*if($user->cannot('see','staffMembers'))
            return response()->redirect()->back();*/

        $staffs = User::all();
        $heading = 'List of Staff';
        return view('staffpanel.staff.listing', compact('staffs', 'heading'))->with('section', $this->section);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        $heading = 'Create Staff Member';
        return view('staffpanel.staff.create', compact('heading'))->with('section', $this->section);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store()
    {
        $input = Request::all();
        $input['password'] = bcrypt($input['password']);
        User::create($input);
        Flash::success('Staff member created successfully.');
        return Redirect::route('staff.staff.index')->with('section', $this->section);
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
        $authenticatedUser = Auth::user();
        $subject = User::find($id);

        if($authenticatedUser->cannot('update','user', $subject))
            return redirect()->back();

        $staff = User::find($id);
        $heading = 'Update Staff Member';
        return view('staffpanel.staff.update', compact('heading', 'staff'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int $id
     * @return Response
     */
    public function update($id)
    {
        $authenticatedUser = Auth::user();
        $staff = User::find($id);
        if($authenticatedUser->cannot('update','user', $staff))
            return redirect()->back();

        $input = Request::all();

        if($input['password'] != '')
            $input['password'] = bcrypt($input['password']);

        $staff->update($input);

        Flash::success('Your Profile updated successfully.');
        return view('staffpanel.staff.update', compact('heading', 'staff'));
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
        return Redirect::route('staff.staff.index');
    }

}

?>