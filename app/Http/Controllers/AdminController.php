<?php namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesCommands;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\View;


abstract class AdminController extends BaseController
{

    use DispatchesCommands, ValidatesRequests;

    protected $user;

    public function __construct()
    {
        $this->user = Auth::user();
        View::share('user', $this->user);
    }

}
