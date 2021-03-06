@extends('layouts.app')


@section('content')

@if (IsPaidOrder(Auth::User()->id,$course->id)==true)

<section class="paddingTop-50 paddingBottom-100 bg-light">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 mt-4">
                <div class="card shadow-v1">

                    <div class="card card-body accordion-item">
                        <div class="shadow-v2">
                            <select class="chosen-select ec-select my_select_box" tabindex="5">
                                @foreach ($courses as $row)

                                <option value="{{$row->id}}" {{$row->id==$course->id? "selected" : ""}}>{{$row->title}}
                                </option>
                                @endforeach
                            </select>

                        </div>




                        <a href="#acc1" class="accordion__title h6 mt-4 mb-0 collapsed" data-toggle="collapse"
                            aria-expanded="true">
                            <i class="ti-home mr-1"></i> Classroom
                            <span class="accordion__icon float-right small mx-2 mt-1">
                                <i class="ti-angle-down"></i>
                                <i class="ti-angle-up"></i>
                            </span>
                        </a>
                        <div id="acc1" class="collapse" data-parent="#accordion">

                            @foreach ($lectures as $row)




                            <div class="py-2 pl-5">
                                <a href="{{route('lecture',[$row->course_id,$row->id])}}"
                                    class="p-2 h6 mb-0">{{$row->title}}<i class="ti-home ml-4"></i></a>
                            </div>

                            @endforeach





                        </div>

                        <a href="{{route('notebook',$course->id)}}" class="accordion__title h6 mb-0 mt-2 collapsed">
                            <i class="ti-home mr-1"></i> Notebook

                        </a>

                        <a href="{{route('library',$course->id)}}" class="accordion__title h6 mb-0 mt-2 collapsed">
                            <i class="ti-home mr-1"></i> Library

                        </a>

                        <a href="{{route('discussion',$course->id)}}" class="accordion__title h6 mb-0 mt-2 collapsed">
                            <i class="ti-home mr-1"></i> Discussion

                        </a>

                        <a href="{{route('grade',$course->id)}}" class="accordion__title h6 mb-0 mt-2 collapsed">
                            <i class="ti-home mr-1"></i> Grade

                        </a>

                        <a href="{{route('course-info',$course->id)}}" class="accordion__title h6 mb-0 mt-2 collapsed">
                            <i class="ti-home mr-1"></i> Course Info

                        </a>

                    </div> <!-- END accordion-item-->


                </div>
            </div> <!-- END col-md-4 -->
            <div class="col-lg-8 mt-4">
                <h1>
                    {{$course->title}}
                </h1>
                <div class="row mt-3">
                    <div class="col-lg-3 col-md-6 my-2">
                        <div class="media border-right height-100p">
                            <img class="iconbox mr-3" src="assets/img/avatar/4.jpg" alt="">
                            <div class="media-body">
                                <span class="text-gray d-block">Instructor:</span>
                                <a href="#" class="h6">John Richi</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 my-2">
                        <div class="border-right height-100p">
                            <span class="text-gray d-block">Categories:</span>
                            <a href="#" class="h6">Development</a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 my-2">
                        <div class="border-right height-100p">
                            <span class="text-gray">Reviews:</span>
                            <p class="mb-0">
                                <i class="fas fa-star text-warning small"></i>
                                <i class="fas fa-star text-warning small"></i>
                                <i class="fas fa-star text-warning small"></i>
                                <i class="fas fa-star text-warning small"></i>
                                <i class="fas fa-star-half small"></i>
                                <span class="text-dark">4.9</span>
                                <span>(793)</span>
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 my-2">
                        <div class="text-md-right height-100p">
                            <h2 class="font-weight-bold text-primary mb-2">{{$course->price}} Taka</h2>

                            <a class="btn btn-primary" @if(Auth::User())
                                onclick="PayNow({{user()->id}},{{$course->id}},{{$course->price}})" id="sslczPayBtn"
                                token="if you have any token validation"
                                postdata="your javascript arrays or objects which requires in backend"
                                order="If you already have the transaction generated for current order"
                                endpoint="{{ url('/pay-via-ajax') }}" @else href="/login" @endif>Buy Course</a>
                        </div>
                    </div>
                </div> <!-- END row-->

                <div class="ec-video-container my-4">
                    {!! $course->demo_embed_code !!}
                </div>

                <div class="card padding-30 shadow-v3">
                    <h4>
                        Features Includes:
                    </h4>
                    <ul class="list-inline mb-0 mt-2">
                        <li class="list-inline-item my-2 pr-md-4">
                            <i class="ti-headphone small text-primary"></i>
                            <span class="ml-2">246 lectures</span>
                        </li>
                        <li class="list-inline-item my-2 pr-md-4">
                            <i class="ti-time small text-primary"></i>
                            <span class="ml-2">27.5 Hours</span>
                        </li>
                        <li class="list-inline-item my-2 pr-md-4">
                            <i class="ti-user small text-primary"></i>
                            <span class="ml-2">98,250 students entrolled</span>
                        </li>
                        <li class="list-inline-item my-2 pr-md-4">
                            <i class="ti-reload small text-primary"></i>
                            <span class="ml-2">Lifetime access</span>
                        </li>
                        <li class="list-inline-item my-2 pr-md-4">
                            <i class="ti-crown small text-primary"></i>
                            <span class="ml-2">Certificate of Completion</span>
                        </li>
                        <li class="list-inline-item my-2 pr-md-4">
                            <i class="ti-crown small text-primary"></i>
                            <span class="ml-2">30-Day Money-Back Guarantee of Completion</span>
                        </li>
                    </ul>
                </div>

                <div class="col-12 mt-4">
                    <ul class="nav tab-line tab-line tab-line--3x border-bottom mb-5" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#tabDescription" role="tab"
                                aria-selected="true">
                                Description
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabCurriculum" role="tab" aria-selected="true">
                                Curriculum
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabInstructors" role="tab"
                                aria-selected="true">
                                Instructors
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabReviews" role="tab" aria-selected="true">
                                Reviews
                            </a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="tabDescription" role="tabpanel">
                            <h4>
                                Course Description
                            </h4>
                            <p>
                                Investig ationes demons travge vunt lectores legee lrus quodk legunt saepius claritas
                                est conctetur adip sicing. Dummy text of the printing and typesetting industry. Lorem
                                Ipsum has been the industry standad dummy
                                text ever since the 1500s, when an unknown printer took a galley of type and scrambled
                                it make type specimen book. It has survived not only five centuries, but also the leap
                                into electronic typesetting remaining
                                essentially unchanged.
                            </p>
                            <p>
                                Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad
                                litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam
                                ac urna eu felis dapibus condimen tum sit
                                amet a augue. Sed non neque elit. Sed ut imperdiet nisi.
                            </p>

                            <div class="row mt-5">
                                <div class="col-12">
                                    <h4>
                                        What Will I Learn?
                                    </h4>
                                </div>
                                <div class="col-md-6 my-2">
                                    <ul class="list-unstyled list-style-icon list-icon-check">
                                        <li>Learn how to captivate your audience</li>
                                        <li>Get rid of negative self talk that brings you down before your presentations
                                        </li>
                                        <li>Take your business / job to the next level</li>
                                        <li>Overcome the fear of public speaking</li>
                                    </ul>
                                </div>
                                <div class="col-md-6 my-2">
                                    <ul class="list-unstyled list-style-icon list-icon-check">
                                        <li>Learn how to captivate your audience</li>
                                        <li>Get rid of negative self talk that brings you down before your presentations
                                        </li>
                                        <li>Take your business / job to the next level</li>
                                        <li>Overcome the fear of public speaking</li>
                                    </ul>
                                </div>

                                <div class="col-md-6 my-2">
                                    <h4>
                                        Course Requirments
                                    </h4>
                                    <ul class="list-unstyled list-style-icon list-icon-bullet">
                                        <li>Learn how to captivate your audience</li>
                                        <li>Take your business / job to the next level</li>
                                        <li>Overcome the fear of public speaking</li>
                                        <li>Learn how to captivate your audience</li>
                                        <li>Take your business / job to the next level</li>
                                    </ul>
                                </div>

                                <div class="col-md-6 my-2">
                                    <h4>
                                        Who is the Target Audience?
                                    </h4>
                                    <ul class="list-unstyled list-style-icon list-icon-bullet">
                                        <li>Learn how to captivate your audience</li>
                                        <li>Take your business / job to the next level</li>
                                        <li>Overcome the fear of public speaking</li>
                                        <li>Learn how to captivate your audience</li>
                                        <li>Take your business / job to the next level</li>
                                    </ul>
                                </div>
                            </div> <!-- END row-->
                        </div> <!-- END tab-pane-->

                        <div class="tab-pane fade" id="tabCurriculum" role="tabpanel">
                            <div id="accordionCurriculum">

                                <div class="accordion-item list-group mb-3">

                                    <div class="list-group-item bg-light">
                                        <a class="row" href="#accordionCurriculum_1" data-toggle="collapse"
                                            aria-expanded="true">
                                            <span class="col-9 col-md-8">
                                                <span class="accordion__icon text-primary mr-2">
                                                    <i class="ti-plus"></i>
                                                    <i class="ti-minus"></i>
                                                </span>
                                                <span class="h6 d-inline">Getting Started</span>
                                            </span>
                                            <span class="col-2 d-none d-md-block text-right">
                                                6 Lectures
                                            </span>
                                            <span class="col-3 col-md-2 text-right">
                                                20:20
                                            </span>
                                        </a>
                                    </div>

                                    <div id="accordionCurriculum_1" class="collapse show"
                                        data-parent="#accordionCurriculum">

                                        <div class="list-group-item">
                                            <span class="row">
                                                <a class="col-9 col-md-8" href="#">
                                                    <i class="ti-control-play small mr-1 text-primary"></i>
                                                    Introduction To Getting Started Section
                                                </a>
                                                <span class="col-2 d-none d-md-block text-right">
                                                    <a href="https://www.youtube.com/embed/nrJtHemSPW4?rel=0"
                                                        data-fancybox class="text-success">Preview</a>
                                                </span>
                                                <span class="col-3 col-md-2 ml-auto text-right">00:36</span>
                                            </span>
                                        </div>

                                        <div class="list-group-item">
                                            <span class="row">
                                                <a class="col-9 col-md-8" href="#">
                                                    <i class="ti-file text-primary small mr-1"></i>
                                                    Your First Webpage
                                                </a>
                                                <span class="col-2 d-none d-md-block text-right">
                                                    <a href="https://www.youtube.com/embed/nrJtHemSPW4?rel=0"
                                                        data-fancybox class="text-success">Preview</a>
                                                </span>
                                                <span class="col-3 col-md-2 ml-auto text-right">2:36</span>
                                            </span>
                                        </div>

                                        <div class="list-group-item">
                                            <span class="row">
                                                <span class="col-9 col-md-8" href="#">
                                                    <i class="ti-control-play small mr-1 text-primary"></i>
                                                    Creating A Full Webpage
                                                </span>
                                                <span class="col-3 col-md-2 ml-auto text-right">7:12</span>
                                            </span>
                                        </div>

                                        <div class="list-group-item">
                                            <span class="row">
                                                <span class="col-9 col-md-8" href="#">
                                                    <i class="ti-files small mr-1 text-primary"></i>
                                                    Accessing Elements - Files
                                                </span>
                                                <span class="col-3 col-md-2 ml-auto text-right">4:07</span>
                                            </span>
                                        </div>

                                        <div class="list-group-item">
                                            <span class="row">
                                                <span class="col-9 col-md-8" href="#">
                                                    <i class="ti-control-play small mr-1 text-primary"></i>
                                                    Responding To A Click
                                                </span>
                                                <span class="col-3 col-md-2 ml-auto text-right">4:07</span>
                                            </span>
                                        </div>

                                        <div class="list-group-item">
                                            <span class="row">
                                                <span class="col-9 col-md-8" href="#">
                                                    <i class="ti-control-play small mr-1 text-primary"></i>
                                                    Changing Website Content - Files
                                                </span>
                                                <span class="col-3 col-md-2 ml-auto text-right">4:07</span>
                                            </span>
                                        </div>

                                    </div>
                                </div> <!-- END accordion-item -->


                                <div class="accordion-item list-group mb-3">

                                    <div class="list-group-item bg-light">
                                        <a class="row collapsed" href="#accordionCurriculum_2" data-toggle="collapse"
                                            aria-expanded="true">
                                            <span class="col-9 col-md-8">
                                                <span class="accordion__icon text-primary mr-2">
                                                    <i class="ti-plus"></i>
                                                    <i class="ti-minus"></i>
                                                </span>
                                                <span class="h6 d-inline">HTML 5</span>
                                            </span>
                                            <span class="col-2 d-none d-md-block text-right">
                                                19 Lectures
                                            </span>
                                            <span class="col-3 col-md-2 text-right">
                                                2:37:10
                                            </span>
                                        </a>
                                    </div>

                                    <div id="accordionCurriculum_2" class="collapse" data-parent="#accordionCurriculum">

                                        <div class="list-group-item">
                                            <span class="row">
                                                <a class="col-9 col-md-8" href="#">
                                                    <i class="ti-control-play small mr-1 text-primary"></i>
                                                    Introduction To Getting Started Section
                                                </a>
                                                <span class="col-2 d-none d-md-block text-right">
                                                    <a href="https://www.youtube.com/embed/nrJtHemSPW4?rel=0"
                                                        data-fancybox class="text-success">Preview</a>
                                                </span>
                                                <span class="col-3 col-md-2 ml-auto text-right">00:36</span>
                                            </span>
                                        </div>

                                        <div class="list-group-item">
                                            <span class="row">
                                                <a class="col-9 col-md-8" href="#">
                                                    <i class="ti-file text-primary small mr-1"></i>
                                                    Your First Webpage
                                                </a>
                                                <span class="col-2 d-none d-md-block text-right">
                                                    <a href="https://www.youtube.com/embed/nrJtHemSPW4?rel=0"
                                                        data-fancybox class="text-success">Preview</a>
                                                </span>
                                                <span class="col-3 col-md-2 ml-auto text-right">2:36</span>
                                            </span>
                                        </div>

                                        <div class="list-group-item">
                                            <span class="row">
                                                <span class="col-9 col-md-8" href="#">
                                                    <i class="ti-control-play small mr-1 text-primary"></i>
                                                    Creating A Full Webpage
                                                </span>
                                                <span class="col-3 col-md-2 ml-auto text-right">7:12</span>
                                            </span>
                                        </div>

                                        <div class="list-group-item">
                                            <span class="row">
                                                <span class="col-9 col-md-8" href="#">
                                                    <i class="ti-files small mr-1 text-primary"></i>
                                                    Accessing Elements - Files
                                                </span>
                                                <span class="col-3 col-md-2 ml-auto text-right">4:07</span>
                                            </span>
                                        </div>

                                        <div class="list-group-item">
                                            <span class="row">
                                                <span class="col-9 col-md-8" href="#">
                                                    <i class="ti-control-play small mr-1 text-primary"></i>
                                                    Responding To A Click
                                                </span>
                                                <span class="col-3 col-md-2 ml-auto text-right">4:07</span>
                                            </span>
                                        </div>

                                        <div class="list-group-item">
                                            <span class="row">
                                                <span class="col-9 col-md-8" href="#">
                                                    <i class="ti-control-play small mr-1 text-primary"></i>
                                                    Changing Website Content - Files
                                                </span>
                                                <span class="col-3 col-md-2 ml-auto text-right">4:07</span>
                                            </span>
                                        </div>

                                    </div>
                                </div> <!-- END accordion-item -->

                                <div class="accordion-item list-group mb-3">

                                    <div class="list-group-item bg-light">
                                        <a class="row collapsed" href="#accordionCurriculum_3" data-toggle="collapse"
                                            aria-expanded="true">
                                            <span class="col-9 col-md-8">
                                                <span class="accordion__icon text-primary mr-2">
                                                    <i class="ti-plus"></i>
                                                    <i class="ti-minus"></i>
                                                </span>
                                                <span class="h6 d-inline">Bootstrap 4</span>
                                            </span>
                                            <span class="col-2 d-none d-md-block text-right">
                                                8 Lectures
                                            </span>
                                            <span class="col-3 col-md-2 text-right">
                                                40:40
                                            </span>
                                        </a>
                                    </div>

                                    <div id="accordionCurriculum_3" class="collapse" data-parent="#accordionCurriculum">

                                        <div class="list-group-item">
                                            <span class="row">
                                                <a class="col-9 col-md-8" href="#">
                                                    <i class="ti-control-play small mr-1 text-primary"></i>
                                                    Introduction To Getting Started Section
                                                </a>
                                                <span class="col-2 d-none d-md-block text-right">
                                                    <a href="https://www.youtube.com/embed/nrJtHemSPW4?rel=0"
                                                        data-fancybox class="text-success">Preview</a>
                                                </span>
                                                <span class="col-3 col-md-2 ml-auto text-right">00:36</span>
                                            </span>
                                        </div>

                                        <div class="list-group-item">
                                            <span class="row">
                                                <a class="col-9 col-md-8" href="#">
                                                    <i class="ti-file text-primary small mr-1"></i>
                                                    Your First Webpage
                                                </a>
                                                <span class="col-2 d-none d-md-block text-right">
                                                    <a href="https://www.youtube.com/embed/nrJtHemSPW4?rel=0"
                                                        data-fancybox class="text-success">Preview</a>
                                                </span>
                                                <span class="col-3 col-md-2 ml-auto text-right">2:36</span>
                                            </span>
                                        </div>

                                        <div class="list-group-item">
                                            <span class="row">
                                                <span class="col-9 col-md-8" href="#">
                                                    <i class="ti-control-play small mr-1 text-primary"></i>
                                                    Creating A Full Webpage
                                                </span>
                                                <span class="col-3 col-md-2 ml-auto text-right">7:12</span>
                                            </span>
                                        </div>

                                        <div class="list-group-item">
                                            <span class="row">
                                                <span class="col-9 col-md-8" href="#">
                                                    <i class="ti-files small mr-1 text-primary"></i>
                                                    Accessing Elements - Files
                                                </span>
                                                <span class="col-3 col-md-2 ml-auto text-right">4:07</span>
                                            </span>
                                        </div>

                                        <div class="list-group-item">
                                            <span class="row">
                                                <span class="col-9 col-md-8" href="#">
                                                    <i class="ti-control-play small mr-1 text-primary"></i>
                                                    Responding To A Click
                                                </span>
                                                <span class="col-3 col-md-2 ml-auto text-right">4:07</span>
                                            </span>
                                        </div>

                                        <div class="list-group-item">
                                            <span class="row">
                                                <span class="col-9 col-md-8" href="#">
                                                    <i class="ti-control-play small mr-1 text-primary"></i>
                                                    Changing Website Content - Files
                                                </span>
                                                <span class="col-3 col-md-2 ml-auto text-right">4:07</span>
                                            </span>
                                        </div>

                                    </div>
                                </div> <!-- END accordion-item -->

                                <div class="accordion-item list-group mb-3">

                                    <div class="list-group-item bg-light">
                                        <a class="row collapsed" href="#accordionCurriculum_4" data-toggle="collapse"
                                            aria-expanded="true">
                                            <span class="col-9 col-md-8">
                                                <span class="accordion__icon text-primary mr-2">
                                                    <i class="ti-plus"></i>
                                                    <i class="ti-minus"></i>
                                                </span>
                                                <span class="h6 d-inline">JavaScript: The Tricky Stuff</span>
                                            </span>
                                            <span class="col-2 d-none d-md-block text-right">
                                                12 Lectures
                                            </span>
                                            <span class="col-3 col-md-2 text-right">
                                                1:20:40
                                            </span>
                                        </a>
                                    </div>

                                    <div id="accordionCurriculum_4" class="collapse" data-parent="#accordionCurriculum">

                                        <div class="list-group-item">
                                            <span class="row">
                                                <a class="col-9 col-md-8" href="#">
                                                    <i class="ti-control-play small mr-1 text-primary"></i>
                                                    Introduction To Getting Started Section
                                                </a>
                                                <span class="col-2 d-none d-md-block text-right">
                                                    <a href="https://www.youtube.com/embed/nrJtHemSPW4?rel=0"
                                                        data-fancybox class="text-success">Preview</a>
                                                </span>
                                                <span class="col-3 col-md-2 ml-auto text-right">00:36</span>
                                            </span>
                                        </div>

                                        <div class="list-group-item">
                                            <span class="row">
                                                <a class="col-9 col-md-8" href="#">
                                                    <i class="ti-file text-primary small mr-1"></i>
                                                    Your First Webpage
                                                </a>
                                                <span class="col-2 d-none d-md-block text-right">
                                                    <a href="https://www.youtube.com/embed/nrJtHemSPW4?rel=0"
                                                        data-fancybox class="text-success">Preview</a>
                                                </span>
                                                <span class="col-3 col-md-2 ml-auto text-right">2:36</span>
                                            </span>
                                        </div>

                                        <div class="list-group-item">
                                            <span class="row">
                                                <span class="col-9 col-md-8" href="#">
                                                    <i class="ti-control-play small mr-1 text-primary"></i>
                                                    Creating A Full Webpage
                                                </span>
                                                <span class="col-3 col-md-2 ml-auto text-right">7:12</span>
                                            </span>
                                        </div>

                                        <div class="list-group-item">
                                            <span class="row">
                                                <span class="col-9 col-md-8" href="#">
                                                    <i class="ti-files small mr-1 text-primary"></i>
                                                    Accessing Elements - Files
                                                </span>
                                                <span class="col-3 col-md-2 ml-auto text-right">4:07</span>
                                            </span>
                                        </div>

                                        <div class="list-group-item">
                                            <span class="row">
                                                <span class="col-9 col-md-8" href="#">
                                                    <i class="ti-control-play small mr-1 text-primary"></i>
                                                    Responding To A Click
                                                </span>
                                                <span class="col-3 col-md-2 ml-auto text-right">4:07</span>
                                            </span>
                                        </div>

                                        <div class="list-group-item">
                                            <span class="row">
                                                <span class="col-9 col-md-8" href="#">
                                                    <i class="ti-control-play small mr-1 text-primary"></i>
                                                    Changing Website Content - Files
                                                </span>
                                                <span class="col-3 col-md-2 ml-auto text-right">4:07</span>
                                            </span>
                                        </div>

                                    </div>
                                </div> <!-- END accordion-item -->


                            </div> <!-- END accordion-->
                        </div> <!-- END tab-pane -->


                        <div class="tab-pane fade" id="tabInstructors" role="tabpanel">
                            <h4 class="mb-4">
                                About Instructors
                            </h4>

                            <div class="border-bottom mb-4 pb-4">
                                <div class="d-md-flex mb-4">
                                    <a href="#">
                                        <img class="iconbox iconbox-xxxl" src="assets/img/262x230/5.jpg" alt="">
                                    </a>
                                    <div class="media-body ml-md-4 mt-4 mt-md-0">
                                        <h6>
                                            Hasan Jubayer
                                        </h6>
                                        <p class="mb-2">
                                            <i class="ti-world mr-2"></i> Web Developer and Instructor
                                        </p>
                                        <ul class="list-inline">
                                            <li class="list-inline-item mb-2">
                                                <i class="ti-user mr-1"></i>
                                                147570 studends
                                            </li>
                                            <li class="list-inline-item mb-2">
                                                <i class="ti-book mr-1"></i>
                                                20 Courses
                                            </li>
                                            <li class="list-inline-item mb-2">
                                                <i class="ti-star text-warning mr-1"></i>
                                                4.9 Average Rating (4578)
                                            </li>
                                        </ul>
                                        <a href="#" class="btn btn-outline-primary btn-pill btn-sm">View Profile</a>
                                    </div>
                                </div>
                                <h6>
                                    Experience as Web Developer
                                </h6>
                                <p>
                                    Investig ationes demons travge vunt lectores legee lrus quodk legunt saepius
                                    claritas est conctetur adip sicing. Dummy text of the printing and typesetting
                                    industry. Lorem Ipsum has been the industry standad dummy
                                    text ever since the 1500s, when an unknown printer took a galley of type and
                                    scrambled it make type specimen book. It has survived not only five centuries.
                                </p>
                            </div>

                            <div class="border-bottom mb-4 pb-5">
                                <div class="d-md-flex mb-4">
                                    <a href="#">
                                        <img class="iconbox iconbox-xxxl" src="assets/img/262x230/6.jpg" alt="">
                                    </a>
                                    <div class="media-body ml-md-4 mt-4 mt-md-0">
                                        <h4>
                                            Hasan Jubayer
                                        </h4>
                                        <p class="mb-2">
                                            <i class="ti-world mr-2"></i> Web Developer and Instructor
                                        </p>
                                        <ul class="list-inline">
                                            <li class="list-inline-item mb-2">
                                                <i class="ti-user mr-1"></i>
                                                147570 studends
                                            </li>
                                            <li class="list-inline-item mb-2">
                                                <i class="ti-book mr-1"></i>
                                                20 Courses
                                            </li>
                                            <li class="list-inline-item mb-2">
                                                <i class="ti-star text-warning mr-1"></i>
                                                4.7 Average Rating (4578)
                                            </li>
                                        </ul>
                                        <a href="#" class="btn btn-outline-primary btn-pill btn-sm">View Profile</a>
                                    </div>
                                </div>
                            </div>

                        </div> <!-- END tab-pane -->

                        <div class="tab-pane fade" id="tabReviews" role="tabpanel">
                            <h4 class="mb-4">
                                Students Feedback
                            </h4>

                            <div class="row px-0 align-items-center border p-4">
                                <div class="col-md-4 text-center">
                                    <h1 class="display-4 text-primary mb-0">
                                        4.70
                                    </h1>
                                    <p class="my-2">
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                    </p>
                                    <p class="mb-0">
                                        Average Rating
                                    </p>
                                </div>
                                <div class="col-md-8">
                                    <div class="d-flex align-items-center mb-2">
                                        <div class="width-7rem text-light d-none d-sm-block mr-3">
                                            <i class="fas fa-star text-warning"></i>
                                            <i class="fas fa-star text-warning"></i>
                                            <i class="fas fa-star text-warning"></i>
                                            <i class="fas fa-star text-warning"></i>
                                            <i class="fas fa-star text-warning"></i>
                                        </div>
                                        <div class="progress flex-auto mr-3" style="height:10px">
                                            <div class="progress-bar bg-primary" style="width:100%" role="progressbar"
                                                aria-valuenow="20" aria-valuemin="20" aria-valuemax="100"></div>
                                        </div>
                                        <span>90%</span>
                                    </div>
                                    <div class="d-flex align-items-center mb-2">
                                        <div class="width-7rem text-light d-none d-sm-block mr-3">
                                            <i class="fas fa-star text-warning"></i>
                                            <i class="fas fa-star text-warning"></i>
                                            <i class="fas fa-star text-warning"></i>
                                            <i class="fas fa-star text-warning"></i>
                                            <i class="fas fa-star"></i>
                                        </div>
                                        <div class="progress flex-auto mr-3" style="height:10px">
                                            <div class="progress-bar bg-primary" style="width:80%" role="progressbar"
                                                aria-valuenow="20" aria-valuemin="20" aria-valuemax="100"></div>
                                        </div>
                                        <span>87%</span>
                                    </div>
                                    <div class="d-flex align-items-center mb-2">
                                        <div class="width-7rem text-light d-none d-sm-block mr-3">
                                            <i class="fas fa-star text-warning"></i>
                                            <i class="fas fa-star text-warning"></i>
                                            <i class="fas fa-star text-warning"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                        </div>
                                        <div class="progress flex-auto mr-3" style="height:10px">
                                            <div class="progress-bar bg-primary" style="width:60%" role="progressbar"
                                                aria-valuenow="20" aria-valuemin="20" aria-valuemax="100"></div>
                                        </div>
                                        <span>34%</span>
                                    </div>
                                    <div class="d-flex align-items-center mb-2">
                                        <div class="width-7rem text-light d-none d-sm-block mr-3">
                                            <i class="fas fa-star text-warning"></i>
                                            <i class="fas fa-star text-warning"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                        </div>
                                        <div class="progress flex-auto mr-3" style="height:10px">
                                            <div class="progress-bar bg-primary" style="width:40%" role="progressbar"
                                                aria-valuenow="20" aria-valuemin="20" aria-valuemax="100"></div>
                                        </div>
                                        <span>12%</span>
                                    </div>
                                    <div class="d-flex align-items-center mb-2">
                                        <div class="width-7rem text-light d-none d-sm-block mr-3">
                                            <i class="fas fa-star text-warning"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                        </div>
                                        <div class="progress flex-auto mr-3" style="height:10px">
                                            <div class="progress-bar bg-primary" style="width:10%" role="progressbar"
                                                aria-valuenow="20" aria-valuemin="20" aria-valuemax="100"></div>
                                        </div>
                                        <span>2%</span>
                                    </div>
                                </div>
                            </div>

                            <div class="row border-bottom mx-0 py-4 mt-4">
                                <div class="col-md-4 my-2 media">
                                    <img class="iconbox iconbox-xl" src="assets/img/avatar/4.jpg" alt="">
                                    <div class="media-body ml-4">
                                        <small class="text-gray">7 min ago</small>
                                        <h6>
                                            Anthony Forsey
                                        </h6>
                                    </div>
                                </div>
                                <div class="col-md-8 my-2">
                                    <p>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                    </p>
                                    <p class="font-size-18">
                                        Awesome course
                                    </p>
                                    <p>
                                        Investig ationes demons travge vunt lectores legee lrus quodk legunt saepius was
                                        claritas kesty they conctetur they kedadip lectores legee sicing.
                                    </p>
                                </div>
                            </div> <!-- END row-->

                            <div class="row border-bottom mx-0 py-4 mt-4">
                                <div class="col-md-4 my-2 media">
                                    <img class="iconbox iconbox-xl" src="assets/img/avatar/5.jpg" alt="">
                                    <div class="media-body ml-4">
                                        <small class="text-gray">1 mon ago</small>
                                        <h6>
                                            Justin Nam
                                        </h6>
                                    </div>
                                </div>
                                <div class="col-md-8 my-2">
                                    <p class="text-light">
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                    </p>
                                    <p class="font-size-18">
                                        Test review lol
                                    </p>
                                    <p>
                                        Investig ationes demons travge vunt lectores legee lrus quodk legunt saepius was
                                        claritas kesty.
                                    </p>
                                </div>
                            </div> <!-- END row-->

                            <div class="row border-bottom mx-0 py-4 mt-4">
                                <div class="col-md-4 my-2 media">
                                    <div class="iconbox iconbox-xl border">
                                        MD
                                    </div>
                                    <div class="media-body ml-4">
                                        <small class="text-gray">3 Mon ago</small>
                                        <h6>
                                            Murir Dokan
                                        </h6>
                                    </div>
                                </div>
                                <div class="col-md-8 my-2">
                                    <p>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                    </p>
                                    <p class="font-size-18">
                                        This is a title of review. the developer suffer from lot's of vitamin. what
                                        about you?
                                    </p>
                                    <p>
                                        Investig ationes demons travge vunt lectores legee lrus quodk legunt saepius was
                                        claritas kesty they conctetur they kedadip lectores legee sicing.
                                    </p>
                                </div>
                            </div> <!-- END row-->


                            <div class="row border-bottom mx-0 py-4 mt-4">
                                <div class="col-md-4 my-2 media">
                                    <img class="iconbox iconbox-xl" src="assets/img/avatar/6.jpg" alt="">
                                    <div class="media-body ml-4">
                                        <small class="text-gray">1 year ago</small>
                                        <h6>
                                            John Doe
                                        </h6>
                                    </div>
                                </div>
                                <div class="col-md-8 my-2">
                                    <p>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                    </p>
                                    <p class="font-size-18">
                                        Best course ever
                                    </p>
                                    <p>
                                        Investig ationes demons travge vunt lectores legee lrus quodk legunt saepius was
                                        claritas kesty they conctetur they kedadip lectores legee sicing.
                                        Investig ationes demons travge vunt lectores legee lrus quodk legunt saepius was
                                        claritas kesty they conctetur they kedadip lectores legee sicing.
                                    </p>
                                </div>
                            </div> <!-- END row-->
                            <div class="text-center mt-5">
                                <a href="#" class="btn btn-primary btn-icon">
                                    <i class="ti-reload mr-2"></i>
                                    Load More
                                </a>
                            </div>
                        </div> <!-- END tab-pane -->

                    </div> <!-- END tab-content-->
                </div> <!-- END col-12 -->

            </div> <!-- END col-md-8 -->
        </div>
        <!--END row-->
    </div>
    <!--END container-->
</section>

@else
<h1 class="text-center">You can't Acces This Page.</h1>
@endif


@endsection
@section('css')
<style media="screen">
    .card-body.accordion-item .chosen-single {
        color: white !important;
        border-radius: 50px;
        background-color: rgb(111, 218, 68) !important;

    }

    .card-body.accordion-item a.accordion__title {
        padding: 20px;
    }

    .card-body.accordion-item a.accordion__title:hover,
    .card-body.accordion-item a.accordion__title:active,
    .card-body.accordion-item a.accordion__title:focus,
    #acc1 a:hover,
    #acc1 a:active,
    #acc1 a:focus {
        background-color: #F3F6F9;
        border-radius: 2px;
    }
</style>

@endsection
