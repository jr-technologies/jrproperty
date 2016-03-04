
@extends('frontend.layout.main')

@section('content')
    <!-- END MAIN NAVIGATION -->
    <!-- Carousel -->
    <div class="section_title features">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <h1>PROPERTIES
                        <span><a href="#">Home </a>/ Properties Listing</span>
                    </h1>
                </div>
            </div>
        </div>
    </div>
    <!-- End Section Title -->

    <!-- End content info -->

    <section class="content_info">
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
            <!-- End Newsletter Box -->

            <section class="row padding_top">
                <!-- Properties -->
                <div class="col-md-9">
                    <!-- Bar Filter properties-->
                    <div class="bar_properties">
                        <div class="row">
                            <div class="col-md-8">

                            </div>
                            <div class="col-md-4">
                                <ul class="text_right tooltip_hover">
                                    <li data-toggle="tooltip" title data-original-title="Box"><a href="{{ route('home.propertieslist') }}"><i class="fa fa-th-large"></i></a></li>
                                    <li class="active"  data-toggle="tooltip" title data-original-title="List"><a href="{{ route('home.properties') }}"><i class="fa fa-list"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- End Bar Filter properties-->

                    <!-- item_property_h-->
                    @if($property > 0)
                    @foreach($property as $properties)
                    <article class="item_property_h">
                        <div class="col-md-4">
                            <div class="image_property_h">
                                <div class="hover_property_h">
                                    @if($properties->picture != '')
                                        <a href="{{ route('home.detail', $properties->id) }}"><img src="/jrproperty/public/up_data/{{$properties->picture}}" width="222" height="184" alt="Image"></a>
                                    @else
                                        <a href="{{ route('home.detail', $properties->id) }}"><img src="{{ asset("assets/front_end/img/property/1.jpg") }}" alt="Image"></a>
                                    @endif
                                    <a href="#" class="info_hover_property_h">
                                        <span class="listing-cover-plus">+</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="info_property_h">
                                <h4><a href="#">{{$properties->title}}</a><span> {{$properties->group}}</span><span>{{$properties->purpose}}</span></h4>
                                <p>{{$properties->address}}<br /><a href="{{ route('home.detail', $properties->id) }}">Read More</a></p>
                            </div>
                        </div>
                        <div class="line_property"><span>{{$properties->price . ' ' . $properties->price_unit}}</span>
                            <ul>
                                <li>BEDROOM : 3 </li>
                                <li>WASHROOM : 2 </li>
                                <li>SIZE: {{$properties->size . ' ' . $properties->size_unit }}</li>
                                <ul/>
                        </div>
                    </article>
                        @endforeach

                        <div class="pagination">{!! $property->setPath('properties')->appends(Input::query())->render() !!}</div>

                    @endif


                </div>

            </section>


@endsection

