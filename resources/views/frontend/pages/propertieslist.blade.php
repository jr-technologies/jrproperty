@extends('frontend.layout.main')

@section('content')
    <!-- END MAIN NAVIGATION -->
    <!-- Carousel -->
    <div class="section_title features">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <h1>PROPERTIES
                        <span><a href="index-2.html">Home </a>/ Properties Listing</span>
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

            <div class="row padding_top">
                <!-- property List-->
                <div class="col-md-9 properties_two">

                    <!-- Bar Filter properties-->
                    <div class="bar_properties">
                        <div class="row">
                            <div class="col-md-8">

                            </div>
                            <div class="col-md-4">
                                <ul class="text_right tooltip_hover">
                                    <li class="active" data-toggle="tooltip" title data-original-title="Box"><a href="{{ route('home.propertieslist') }}"><i class="fa fa-th-large"></i></a></li>
                                    <li data-toggle="tooltip" title data-original-title="List"><a href="{{ route('home.properties') }}"><i class="fa fa-list"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- End Bar Filter properties-->

                    <!-- Row Propertys-->
                    <div class="row">
                        <!-- Item Property-->
                        @if($property > 0)
                            @foreach($property as $properties)
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
                            <div class="item_property">
                                <div class="head_property">
                                    <a href="">
                                        <div class="title sale"></div>
                                        @if($properties->picture != '')
                                            <a href="{{ route('home.detail', $properties->id) }}"><img src="/jrproperty/public/up_data/{{$properties->picture}}" width="335" height="184" alt="Image"></a>
                                        @else
                                            <a href="{{ route('home.detail', $properties->id) }}"><img src="{{ asset("assets/front_end/img/property/1.jpg") }}" alt="Image"></a>
                                        @endif
                                            <h5>{{$properties->title}}</h5>
                                    </a>
                                </div>
                                <div class="info_property">
                                    <ul>
                                        <li><strong>Society</strong><span>{{$properties->society_name}}</span></li>
                                        <li><strong>Size </strong><span>{{$properties->size . ' ' . $properties->size_unit }}</span></li>
                                        <li><strong>Price</strong><span>{{$properties->price . ' ' . $properties->price_unit }}</span></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                            @endforeach




                        <!-- Item Property-->


                        <!-- Item Property-->
                    </div>
                    <div class="pagination">{!! $property->setPath('propertieslist')->appends(Input::query())->render() !!}</div>

                    @endif

                </div>

            </div>
        </div>
    </section>

@endsection

