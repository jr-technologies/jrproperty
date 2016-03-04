
<section class="info_head">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-6">
                    <ul>  
                        <li><i class="fa fa-headphones"></i><a href="#">111 167 167</a></li>
                        <li><i class="fa fa-comment"></i><a href="#">Live chat</a></li>

                    </ul> 
                </div>
                <div class="col-md-6">

                    <ul class="header-topbar-links">


                        <li><a href="auth/login"> sign in</a></li>
                        <li class="bder">
                            @if(Auth::user()->type == 'admin')
                            <a href="admin/properties/create"><button type="button" class="btn srch btn-default">Add Property</button></a>
                            @else
                            <a href="staff/properties/create"><button type="button" class="btn srch btn-default">Add Property</button></a>
                            @endif
                        </li>
                    </ul>

                </div>

            </div>
        </div> 
    </div>				
</section>
<!-- Info Head -->

<!-- Nav-->
<nav>
    <div class="container">
        <div class="row">
            <div class="col-md-3 logo">
                <a href="#"><img src="{{ asset("assets/front_end/images/logo.png") }}" alt="Image" class=""/></a>
            </div>
            <!-- Menu-->
            <ul id="menu" class="col-md-9 sf-menu">
                <li class="{{ Request::is( '/') ? 'active' : '' }}"><a href="{{ URL::to( '/') }}">HOME</a></li>
                <li class="{{ Request::is( '/') ? 'active' : '' }}"><a href="#">ABOUT </a></li>
                <li class="{{ Request::is( 'properties') ? 'active' : '' }}"><a href="{{ URL::to( 'properties') }}">PROPERTIES</a></li>
                <li class="{{ Request::is( '/') ? 'active' : '' }}"><a href="#">MAPS</a></li>
                <li class="{{ Request::is( '/') ? 'active' : '' }}"><a href="#">CONTACT</a></li>

            </ul>
            <!-- End Menu-->
        </div>
    </div>
</nav>