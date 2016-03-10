<?php namespace App\Providers;

use App\Notifications;
use Illuminate\Support\ServiceProvider;

class ViewServiceProvider extends ServiceProvider {

	/**
	 * Bootstrap any application services.
	 *
	 * @return void
	 */
	public function boot()
	{
		view()->share('notifications', Notifications::get());
	}


	public function register()
	{
		//
	}

}
