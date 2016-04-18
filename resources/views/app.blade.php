<!DOCTYPE html>
<html lang="en">
<head>
    <title>JR Property | Backoffice</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <script src="{{url('/')}}/js/jquery-2.1.3.js"></script>
    <script src="{{url('/')}}/js/jquery-ui.min.js"></script>
    <link href="{{url('/')}}/css/jquery-ui.css" rel="stylesheet">
    <link href="{{url('/')}}/css/bootstrap.min.css" rel="stylesheet">
    <link href="{{url('/')}}/css/fonts.css" rel='stylesheet' type='text/css'>
    <script src="{{url('/')}}/js/bootstrap.min.js"></script>
    {{--<link href="{{public_path()}}/css/dropdowns-enhancement.min.css" rel="stylesheet" type="text/css">--}}
    <link href="{{url('/')}}/css/styles.css" rel="stylesheet" type="text/css">
	<link href="{{url('/')}}/css/property_search.css" rel="stylesheet" type="text/css">
    {{--<script src="{{url('/')}}/js/dropdowns-enhancement.js"></script>--}}
    <script src="{{url('/')}}/js/scripts.js"></script>
  </head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle Navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="{{url('/')}}">JR Property</a>
			</div>

			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">

					@if(!Auth::guest())
						@if($user->type == 'staff')
							<li @if($section == 'staffpanel/property') class="active" @endif><a href="{{ url('my-properties') }}">Property Listing</a></li>
							<li @if($section == 'staffpanel/staff') class="active" @endif><a href="{{ route('staff.staff.edit', $user->id) }}">Update Profile</a></li>
						@endif
						@if($user->type == 'admin')
							<li @if($section == 'home') class="active" @endif><a href="{{ url('all-properties') }}">Property Listing</a></li>
							<li @if($section == 'city') class="active" @endif><a href="{{ url('admin/city') }}">Manage Cities</a></li>
							<li @if($section == 'society') class="active" @endif><a href="{{ url('admin/societies') }}">Manage Societies</a></li>
							<li @if($section == 'block') class="active" @endif><a href="{{ url('admin/blocks') }}">Manage Blocks</a></li>
							<li @if($section == 'category') class="active" @endif><a href="{{ url('admin/categories') }}">Manage Property Types</a></li>
							{{--<li @if($section == 'property') class="active" @endif><a href="{{ url('admin/properties') }}">Manage Property Listings</a></li>--}}
							<li @if($section == 'staff') class="active" @endif><a href="{{ url('admin/staff') }}">Manage Staff</a></li>
						@endif

					@endif
				</ul>

				<ul class="nav navbar-nav navbar-right">
					@if (Auth::guest())
						<li><a href="{{ url('/auth/login') }}">Login</a></li>
					<!--	<li><a href="{{ url('/auth/register') }}">Register</a></li>-->
					@else
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">{{ Auth::user()->name }} <span class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="{{ url('/auth/logout') }}">Logout</a></li>
							</ul>
						</li>
					@endif
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">
            @include('flash::message')
            @yield('content')
    </div>

</body>
</html>
