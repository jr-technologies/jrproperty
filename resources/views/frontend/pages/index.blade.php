
@extends('frontend.layout.main')

@section('content')
<!-- END MAIN NAVIGATION --> 
<!-- Carousel -->
<header>
    <!-- Filter Search-->
    <div class="container1">
        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <div class="row bg_header">
                        <ul class="tabs_services">
                            <!--<li><a id="1" class="switcher set2">Property Check</a></li>-->
                            <li><a id="2" class="switcher set2">Wanted</a></li>
                            <li><a id="3" class="switcher set2">Selling</a></li>
                            <li><a id="4" class="switcher set2">Renting</a></li>
                        </ul>

                        <div class="clearfix"></div>
                        <div class="switcher-panel"></div>

                        <!-- 1-content -->
                        <!--
                        <div id="1-content" class="switcher-content set2 show">
                            <div class="search_box calculator">
                                {!! Form::open(array('route' => 'home.index', 'method' => 'GET')) !!}
                                    <div class="col-sm-12">
                                        {!! Form::select('city_id',$cities,'',['class'=>'form-control']) !!}
                                    </div>

                                    <div class="col-sm-12">
                                            {!! Form::select('society_id',$societies,'',['class'=>'form-control']) !!}
                                    </div>

                                    <div class="col-sm-12">
                                        {!! Form::select('block_id',$blocks,'',['class'=>'form-control']) !!}
                                    </div>

                                    <div class="col-sm-6">
                                        {!! Form::text('price_start','',['class'=>'form-control','placeholder'=>'Price Range']) !!}
                                    </div>

                                    <div class="col-sm-6">
                                        {!! Form::text('price_end','',['class'=>'form-control','placeholder'=>'Price Range']) !!}
                                    </div>

                                    <div class="col-sm-12" >
                                        {!! Form::text('size','',['class'=>'form-control','placeholder'=>'Size']) !!}
                                     </div>
                                        <div class="col-sm-12">
                                            {!! Form::select('size_unit',array('marla' => 'Marla', 'kanal' => 'Kanal'),'',['class'=>'form-control']) !!}
                                        </div>



                                        <div align="right">
                                            <input type="submit" class="button" value="Check">
                                        </div>
                                {!! Form::hidden('search', 'yes'); !!}

                                {!! Form::close() !!}
                                <div id="result_calculator"></div>
                            </div>
                        </div> -->
                        <!-- End 1-content -->

                        <!-- 2-content -->
                        <div id="2-content" class="switcher-content set2 show">
                            <div class="search_box calculator">
                                {!! Form::open(array('route' => 'store', 'method' => 'POST')) !!}

                                <div class="col-sm-12">
                                    {!! Form::select('city_id',$cities,'',['class'=>'form-control', 'onchange' => 'pone(this.value, \'society_id\')']) !!}
                                </div>

                                <div class="col-sm-12">

                                    {!! Form::select('society_id',$societies,'',['id'=>'society_id','class'=>'form-control', 'onchange' => 'pone(this.value, \'block_id\')']) !!}
                                </div>

                                <div class="col-sm-12">

                                    {!! Form::select('block_id',$blocks,'null',['id'=>'block_id','class'=>'form-control']) !!}
                                </div>

                                <div class="col-sm-6">
                                    {!! Form::text('price_min','',['class'=>'form-control','placeholder'=>'Price Min']) !!}
                                </div>

                                <div class="col-sm-6">
                                    {!! Form::text('price_max','',['class'=>'form-control','placeholder'=>'Price Max']) !!}
                                </div>

                                <div class="col-sm-12" >
                                    {!! Form::text('size','',['class'=>'form-control','placeholder'=>'Size']) !!}
                                </div>
                                <div class="col-sm-12">
                                    {!! Form::select('size_unit',array('marla' => 'Marla', 'kanal' => 'Kanal'),'',['class'=>'form-control']) !!}
                                </div>



                                <div>
                                    <input type="submit" class="button" value="Search">
                                </div>

                                {!! Form::hidden('purpose', 'wanted'); !!}
                                {!! Form::hidden('ajax_url', route('store')) !!}

                                {!! Form::close() !!}
                            </div>
                        </div>
                        <!-- End 1-content -->

                        <!-- 3-content -->
                        <div id="3-content" class="switcher-content set2">
                            <div class="search_box calculator" >
                                {!! Form::open(array('route' => 'store', 'method' => 'POST')) !!}

                                <div class="col-sm-12">
                                    {!! Form::select('city_id',$cities,'',['class'=>'form-control', 'onchange' => 'pone(this.value, \'society_id\')']) !!}
                                </div>

                                <div class="col-sm-12">

                                    {!! Form::select('society_id',$societies,'',['id'=>'society_id','class'=>'form-control', 'onchange' => 'pone(this.value, \'block_id\')']) !!}
                                </div>

                                <div class="col-sm-12">

                                    {!! Form::select('block_id',$blocks,'null',['id'=>'block_id','class'=>'form-control']) !!}
                                </div>

                                <div class="col-sm-6">
                                    {!! Form::text('price_start','',['class'=>'form-control','placeholder'=>'Price Range']) !!}
                                </div>

                                <div class="col-sm-6">
                                    {!! Form::text('price_end','',['class'=>'form-control','placeholder'=>'Price Range']) !!}
                                </div>

                                <div class="col-sm-12" >
                                    {!! Form::text('size','',['class'=>'form-control','placeholder'=>'Size']) !!}
                                </div>
                                <div class="col-sm-12">
                                    {!! Form::select('size_unit',array('marla' => 'Marla', 'kanal' => 'Kanal'),'',['class'=>'form-control']) !!}
                                </div>



                                <div>
                                    <input type="submit" class="button" value="Search">
                                </div>

                                {!! Form::hidden('purpose', 'sale'); !!}
                                {!! Form::hidden('ajax_url', route('store')) !!}

                                {!! Form::close() !!}
                            </div>
                        </div>
                        <!-- End 3-content -->

                        <!-- 4-content -->
                        <div id="4-content" class="switcher-content set2">
                            <div class="search_box calculator" >
                                {!! Form::open(array('route' => 'store', 'method' => 'POST')) !!}

                                <div class="col-sm-12">
                                    {!! Form::select('city_id',$cities,'',['class'=>'form-control', 'onchange' => 'pone(this.value, \'society_id\')']) !!}
                                </div>

                                <div class="col-sm-12">

                                    {!! Form::select('society_id',$societies,'',['id'=>'society_id','class'=>'form-control', 'onchange' => 'pone(this.value, \'block_id\')']) !!}
                                </div>

                                <div class="col-sm-12">

                                    {!! Form::select('block_id',$blocks,'null',['id'=>'block_id','class'=>'form-control']) !!}
                                </div>

                                <div class="col-sm-6">
                                    {!! Form::text('price_start','',['class'=>'form-control','placeholder'=>'Price Range']) !!}
                                </div>

                                <div class="col-sm-6">
                                    {!! Form::text('price_end','',['class'=>'form-control','placeholder'=>'Price Range']) !!}
                                </div>

                                <div class="col-sm-12" >
                                    {!! Form::text('size','',['class'=>'form-control','placeholder'=>'Size']) !!}
                                </div>
                                <div class="col-sm-12">
                                    {!! Form::select('size_unit',array('marla' => 'Marla', 'kanal' => 'Kanal'),'',['class'=>'form-control']) !!}
                                </div>



                                <div>
                                    <input type="submit" class="button" value="Search">
                                </div>

                                {!! Form::hidden('purpose', 'rent'); !!}
                                {!! Form::hidden('ajax_url', route('store')) !!}

                                {!! Form::close() !!}
                            </div>
                        </div>
                        <!-- End 4-content -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Filter Search-->

    <!-- Slide -->
    <div class="camera_wrap camera_white_skin" id="slide">
        <!-- Item Slide -->
        <div  data-src="{{ asset("assets/front_end/images/2.jpg") }}">
            <div class="camera_caption fadeFromTop">
                <div class="container">
                    <div class="row">
                        <div class="col-md-7 col-md-offset-5">
                            <h1 class="animated fadeInRight delay1">PROPERTY SERVICES:
                                <span class="arrow_title_slide"></span>
                            </h1>
                            <p class="animated fadeInRight delay2">Furnished or unfurnished, long term rental or short term, investment property or family home – whatever the reason we can help.</p>
                            <div class="more animated fadeInRight delay4">
                                <a href="properties.html" class="button">More Info</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Item Slide -->

        <!-- Item Slide -->
        <div data-src="{{ asset("assets/front_end/images/3.jpg") }}">
            <div class="camera_caption fadeFromTop">
                <div class="container">
                    <div class="row">
                        <div class="col-md-7 col-md-offset-5">
                            <h1 class="animated fadeInRight delay1">We would love to help you!
                                <span class="arrow_title_slide"></span>
                            </h1>
                            <p class="animated fadeInRight delay2">We have 4 Bed House for sale in DHA Phase 8.</p>
                            <ul class="animated fadeInRight delay3">
                                <li class="bathrooms"><span>4</span></li>
                                <li class="bedrooms"><span>4</span></li>
                                <li class="price">Pkr.<span>14,500,000/-</span></li>
                            </ul>
                            <div class="more animated fadeInRight delay4">
                                <a href="properties.html" class="button">More Info</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Item Slide -->

        <!-- Item Slide -->
        <div data-src="{{ asset("assets/front_end/images/4.jpg") }}">
            <div class="camera_caption fadeFromTop">
                <div class="container">
                    <div class="row">
                        <div class="col-md-7 col-md-offset-5">
                            <h1 class="animated fadeInRight delay1">Apartment For Rent
                                <span class="arrow_title_slide"></span>
                            </h1>
                            <p class="animated fadeInRight delay2">3 Bed Apartment is available on rent in DHA Phase 8 Ex Air Avenue</p>
                            <ul class="animated fadeInRight delay3">
                                <li class="bathrooms"><span>3</span></li>
                                <li class="bedrooms"><span>3</span></li>
                                <li class="price">Pkr<span>50000</span></li>
                            </ul>
                            <div class="more animated fadeInRight delay4">
                                <a href="properties.html" class="button">More Info</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Item Slide -->
    </div>
    <!-- End Slide -->
</header>
<!-- End Header-->

<!-- content info -->
<div class="content_info">
    <div class="container">
        <!-- Newsletter Box -->
        <div class="newsletter_box">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <h3>
                            File Rates<marquee>- DHA 9: 10 Marla File @ 35 Lac.--</span> <span>-- DHA 7: 10 Marla File @ 55Lac.</marquee>
                        </h3>
                    </div>
                    <div class="col-md-4">
                        <!--<form id="newsletterForm" action="">
                            <input type="email" placeholder="Your Mail..." required >
                            <button class="register" type="submit"><i class="fa fa-angle-right"></i></button>
                        </form> -->
                        <div id="result-newsletter"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-carousel">
            <div class="row">
                <div class="col-md-12">
                    <!-- Divisor-->
                    <div class="divisor">
                        <div class="circle_left"></div>
                        <div class="circle_right"></div>
                    </div>
                    <!-- End Divisor-->

                    <!-- Title-->
                    <div class="titles">
                        <h1>FEATURED PROPERTIES LISTING</h1>
                    </div>
                    <!-- End Title-->
                </div>
            </div>

            <!-- Carousel Properties -->
            <div id="properties-carousel" class="properties-carousel">
                @foreach($featured as $feature)
                <!-- Item Property-->
                <div class="item_property">
                    <div class="head_property">
                        <a href="properties.html">
                            <div class="title rent"></div>
                            @if($feature->picture != '')
                            <a href="{{ route('home.detail', $feature->id) }}"><img src="/jrproperty/public/up_data/{{$feature->picture}}" width="222" height="184" alt="Image"></a>
                            @else
                            <a href="{{ route('home.detail', $feature->id) }}"><img src="{{ asset("assets/front_end/img/property/1.jpg") }}" width="222" height="184" alt="Image"></a>
                            @endif
                            <h5>{{$feature->title}}</h5>
                        </a>
                    </div>
                    <div class="info_property">
                        <ul>
                            <li><strong>Society</strong><span>{{$feature->society_name}}</span></li>
                            <li><strong>Size </strong><span>{{$feature->size . ' '. $feature->size_unit}}</span></li>
                            <li><strong>Price</strong><span>{{$feature->price . ' '. $feature->price_unit}}</span></li>
                            <li><strong>Agent</strong><span>{{$feature->user_name}}</span></li>
                            <li><strong>Date & Time</strong><span>{{date('d/m/Y h:m:s',strtotime($feature->created_at))}}</span></li>
                        </ul>
                    </div>
                </div>
                <!-- Item Property-->
                @endforeach

                <!-- End Item Property-->
            </div>
            <!-- End Carousel Properties -->
        </div>
        <!-- End Newsletter Box -->

        <!-- Title-->
        <div class="row">
            <div class="col-md-12">
                <div class="titles">

                    <h1>PROPERTIES LISTING</h1>
                </div>
            </div>
        </div>

        <!-- End Bar Filter properties-->

        <!-- Row Properties-->
        <div class="row">
            @foreach($property as $properties)
            <!-- Item Property-->
            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
                <div class="item_property">
                    <div class="head_property">
                        <a href="properties.html">
                            <div class="title rent"></div>
                            @if($properties->picture != '')
                            <a href="{{ route('home.detail', $properties->id) }}"><img src="/jrproperty/public/up_data/{{$properties->picture}}" width="293" height="184" alt="Image"></a>
                            @else
                            <a href="{{ route('home.detail', $properties->id) }}"><img src="{{ asset("assets/front_end/img/property/1.jpg") }}" width="293" height="184" alt="Image"></a>
                            @endif
                            <h5>{{$properties->title}}</h5>
                        </a>
                    </div>
                    <div class="info_property">
                        <ul>
                            <li><strong>Society</strong><span>{{$properties->society_name}}</span></li>
                            <li><strong>Size </strong><span>{{$properties->size . ' '. $properties->size_unit}}</span></li>
                            <li><strong>Price</strong><span>{{$properties->price . ' '. $properties->price_unit}}</span></li>
                            <li><strong>Agent</strong><span>{{$properties->user_name}}</span></li>
                            <li><strong>Date & Time</strong><span>{{date('d/m/Y h:m:s',strtotime($properties->created_at))}}</span></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- Item Property-->
            @endforeach

        </div>


        <!-- Content Carousel Properties -->

        <!-- End Content Carousel Properties -->
    </div>

    @endsection

