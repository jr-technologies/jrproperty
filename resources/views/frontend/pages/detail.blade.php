
@extends('frontend.layout.main')

@section('content')
    <!-- END MAIN NAVIGATION -->
    <!-- Carousel -->
    <div class="section_title features">
        <div class="container">
            <div class="row">
                <div class="col-md-10">
                    <h1>PROPERTIES
                        <span><a href="#">Home </a>/ House For Sale in DHA Phase 8 Ex Air Avenue  </span>
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
            @foreach($property as $properties)
            <div class="row padding_top">
                <!-- property List-->
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h3>{{$properties->title}}</h3>
                        </div>
                    </div>
                </div>

                <div class="content col-sm-8 col-md-4">
                    <div class="col-sm-12 col-md-12">
                        <div class="property-gallery">
                            <div class="property-gallery-preview">
                                    @if($properties->picture != '')
                                        <a href="/jrproperty/public/up_data/{{$properties->picture}}"><img src="/jrproperty/public/up_data/{{$properties->picture}}" width="293" height="184" alt="Image"></a>
                                    @else
                                        <a href=""><img src="{{ asset("assets/front_end/img/property/1.jpg") }}" alt="Image"></a>
                                    @endif

                            </div><!-- /.property-gallery-preview -->

                      <!-- /.property-gallery-list-wrapper -->
                        </div><!-- /.property-gallery -->
                    </div>


                </div>


                <div class="col-sm-12 col-md-5">
                    <div class="property">

                        <dl>
                            <dt>Price</dt><dd>{{$properties->price . ' '. $properties->price_unit}}</dd>
                            <dt>Size</dt><dd>{{$properties->size . ' '. $properties->size_unit}}</dd>
                            <dt>Location</dt><dd>{{$properties->address}}</dd>
                            <dt>Block</dt><dd>{{$properties->block_name}}</dd>
                            <dt>Type</dt><dd>{{$properties->group}}</dd>
                            <dt>Category</dt><dd>{{$properties->categories_name}}</dd>
                            <dt>Bedrooms</dt><dd>{{$properties->bedrooms}}</dd>
                        </dl>


                    </div>


                </div>

                @endforeach






                <div class="col-md-3">
                    <div class="agent">

                        <a href="#" class="agent-card-image">
                            <img src="images/asif.jpg" alt="">
                        </a>
                        <div class="desr">
                            <h4>Information</h4>

                            <ul>
                                <li>Asif Mehmood</li>
                                <li>0321/322-8894008</li>
                                <li>64-Q DHA Phase 8</li>
                            </ul>

                            <br>

                            <ul>
                                <li><i class="fa fa-phone"></i> 042 111 167 167</li>
                                <li><i class="fa fa-at"></i> <a href="#">E-mail address</a></li>
                                <li><i class="fa fa-globe"></i> <a href="">www.jrproperty.pk</a></li>
                            </ul>
                        </div>
                    </div>


                </div>

            </div>
        </div>

@endsection

