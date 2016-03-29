<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Notifications;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;


class NotificationsController extends Controller {

	public $request = null;
	public $notifications = null;

	public function __construct(Request $request){
		$this->request = $request;
		$this->notifications = new Notifications();
	}

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$notifications = Notifications::all();
		print_r($notifications);
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
			$validator = Validator::make($this->request->all(),
			[
				'notification'=>'required'
			]);
			if($validator->fails())
			return redirect()->bakc()->withinput()->witherrors($validator);
		 			$NewNotification = $this->getNewNotificationInfo();
			if(!$this->notifications->create($NewNotification))
			return redirect()->back()->withInputs();
			echo 'Notification is ok';
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		//
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		//
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		//
	}

	/**
	 * Update the specified resource in storage.
	 * @return Response
	 */
	public function update()
	{

		$notification = Notifications::find($this->request->notifications_id);
		$validator = Validator::make($this->request->all(),
			[
				'notification'=>'required'
			]);
		 if($validator->fails())
		 {
			return redirect()->back()->withInput()->withErrors();
		 }
		$request = $this->getNewNotificationInfo();

		$notification->update($request);

		echo 'Notification is update ok';
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}

	public function getNewNotificationInfo()
	{
		$NotificationInfo =
		[
			 'notification'=>$this->request->get('notification')
		];
		return $NotificationInfo;
	}

}
