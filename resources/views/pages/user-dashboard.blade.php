@extends('layouts.app')


@section('content')
{{-- 
     @php
          dd($continue_courses);
     @endphp --}}

<section class="paddingTop-50 paddingBottom-100 bg-light">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 mt-4">
                <div class="card shadow-v1">
                    <div class="card-header text-center border-bottom pt-5 mb-4">
                        <img class="rounded-circle mb-4" src="{{asset($user->avatar)}}" width="200" height="200" alt="">
                        <h4>
                            {{$user->name}}
                        </h4>
                        <p>{{$user->email}}</p>
                        <a href="#" class="btn btn-success btn-sm ">Instructor Profile</a>

                        <ul class="list-inline mb-0">
                            <li class="list-inline-item m-2">
                                <i class="ti-shopping-cart text-primary"></i>
                                <span class="d-block">Courses Order</span>
                                <span class="h6">{{count($completed_courses)+count($continue_courses)}}</span>
                            </li>
                            <li class="list-inline-item m-2">
                                <i class="ti-heart text-primary"></i>
                                <span class="d-block">Completed</span>
                                <span class="h6">{{count($completed_courses)}}</span>
                            </li>
                        </ul>

                    </div>
                    <div class="card-body border-bottom">
                        <ul class="list-unstyled">
                            <li class="mb-3">
                                <span class="d-block">Email address:</span>
                                <a class="h6" href="mailto:{{$user->email}}">{{$user->email}}</a>
                            </li>
                            <li class="mb-3">
                                <span class="d-block">Phone:</span>
                                <a class="h6" href="tel:{{$user->phone}}">{{$user->phone}}</a>
                            </li>
                            <li class="mb-3">
                                <span class="d-block">Address:</span>
                                <a class="h6" href="javascript:void(0)">{{$user->address}}</a>
                            </li>
                            <li class="mb-3">
                                <a href="/become-instructor" class="btn btn-success "> Become an Instructor</a>
                            </li>
                        </ul>
                    </div>
                    <div class="card-footer">
                         @if (isset($user->social_media) && $user->social_media!='')
                             <p>
                                 Social Profile:
                             </p>
                             <ul class="list-inline mb-0">
                                  @if ($user->social_media->facebook!='')
                                       <li class="list-inline-item">
                                           <a href="{{$user->social_media->facebook}}" target="_blank" class="btn btn-outline-facebook iconbox iconbox-sm">
                                               <i class="ti-facebook"></i>
                                           </a>
                                       </li>
                                 @endif

                                 @if ($user->social_media->instagram!='')
                                      <li class="list-inline-item">
                                         <a href="{{$user->social_media->instagram}}" target="_blank" class="btn btn-outline-google-plus iconbox iconbox-sm">
                                             <i class="ti-instagram"></i>
                                         </a>
                                    </li>

                               @endif

                               @if ($user->social_media->twitter!='')
                                    <li class="list-inline-item">
                                        <a href="{{$user->social_media->twitter}}" target="_blank" class="btn btn-outline-twitter iconbox iconbox-sm">
                                            <i class="ti-twitter"></i>
                                        </a>
                                    </li>
                               @endif

                               @if ($user->social_media->linkedin!='')
                                    <li class="list-inline-item">
                                        <a href="{{$user->social_media->linkedin}}" target="_blank" class="btn btn-outline-linkedin iconbox iconbox-sm">
                                            <i class="ti-linkedin"></i>
                                        </a>
                                    </li>
                               @endif

                             </ul>
                        @endif
                    </div>
                </div>
            </div> <!-- END col-md-4 -->
            <div class="col-lg-8 mt-4">

                <div class="card padding-20">
                    <ul class="nav tabs-portlet" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#Tabs_12-1" role="tab" aria-selected="true">
                                <i class="ti-home mr-1"></i>
                                Dashboard
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#Tabs_12-2" role="tab" aria-selected="false">
                                <i class="ti-user mr-1"></i>
                                Wishlist
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#Tabs_12-4" role="tab" aria-selected="false">
                                <i class="ti-settings mr-1"></i>
                                Settings
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#Tabs_12-5" role="tab" aria-selected="false">
                                <i class="ti-user mr-1"></i>
                                Activity Log
                            </a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane fade mt-4 show active" id="Tabs_12-1" role="tabpanel">
                            <div class="m-2">
                                <h3>
                                    Continue Learning
                                </h3>
                            </div>

                            <div class="owl-carousel arrow-on-hover" data-items="3" data-arrow="true" data-state-outer-class="py-4" data-autoplay="false" data-space="10" data-loop="false" data-rewind="true">


                                 @foreach ($continue_courses as $order)

                                      @include('pages.profile-page-course-card',['row'=>$order])

                                @endforeach

                            </div>
                            <div class="m-2">
                                <h3>
                                    Completed Courses
                                </h3>
                            </div>

                            <div class="owl-carousel arrow-on-hover" data-items="3" data-arrow="true" data-state-outer-class="py-4" data-autoplay="false" data-space="10" data-loop="false" data-rewind="true">

                                 @foreach ($completed_courses as $order)
                                      @include('pages.profile-page-course-card',['row'=>$order])

                                @endforeach

                            </div>
                        </div>
                        <div class="tab-pane fade mt-4" id="Tabs_12-2" role="tabpanel">

                            <div class="col-md-6 float-left">
                                <div class="card text-gray overflow-hidden height-100p shadow-v2">
                                    <span class="ribbon-badge font-size-sm bg-success text-white">Best selling</span>
                                    <img class="card-img-top" src="assets/img/360x220/1.jpg" alt="">
                                    <div class="card-body">
                                        <a href="page-sp-course-details.html" class="h5">
                                            The Web Developer Bootcamp In Austin
                                        </a>
                                        <p class="my-3">
                                            <i class="ti-user mr-2"></i>
                                            Andrew Mead
                                        </p>
                                        <ul class="list-unstyled ec-review-rating">
                                            <li class="active"><i class="fas fa-star"></i></li>
                                            <li class="active"><i class="fas fa-star"></i></li>
                                            <li class="active"><i class="fas fa-star"></i></li>
                                            <li class="active"><i class="fas fa-star"></i></li>
                                            <li class="active"><i class="fas fa-star"></i></li>
                                            <li class="text-gray">
                                                <span>(4.9)</span>
                                                <span>4578</span>
                                            </li>
                                        </ul>

                                    </div>
                                    <div class="card-footer media align-items-center justify-content-between">
                                        <ul class="list-unstyled mb-0">
                                            <li class="mb-1">
                                                <i class="ti-headphone small mr-2"></i>
                                                46 lectures
                                            </li>
                                            <li class="mb-1">
                                                <i class="ti-time small mr-2"></i>
                                                27.5 hours
                                            </li>
                                        </ul>
                                        <ul class="list-unstyled mb-0">

                                            <li class="mb-1">
                                                <div class="group">
                                                    <button class="btn btn-opacity-primary iconbox iconbox-sm mr-2">
                                                        <i class="ti-heart"></i>
                                                    </button>
                                                    <button class="btn btn-opacity-primary iconbox iconbox-sm">
                                                        <i class="ti-share"></i>
                                                    </button>
                                                </div>
                                            </li>
                                            <li class="mb-1">
                                                <a href="#" class="btn btn-primary btn-sm"> Enroll Now</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                            </div>


                        </div>

                        <div class="tab-pane fade mt-4" id="Tabs_12-4" role="tabpanel">
                            <div class="border-bottom mb-4 pb-4">
                                <h4>
                                    Upload Picture
                                </h4>
                                <div class="media align-items-end mt-4">
                                    <div class="position-relative">
                                        <input type="file" class="opacity-0 position-absolute as-parent">
                                        <img src="assets/img/placeholder-1.jpg" alt="">
                                    </div>
                                    <div class="media-body ml-4 mb-4 mb-md-0">
                                        <p>
                                            JPG or PNG 200x200 px
                                        </p>
                                        <a href=""></a>
                                        <button class="btn btn-outline-primary">
                                            <input type="file" class="opacity-0 position-absolute">
                                            Upload
                                        </button>

                                    </div>
                                </div>
                            </div>

                            <div class="border-bottom mb-4 pb-4">


                                <h4 class="mb-4">
                                    Manage your Account
                                </h4>

                                <div class="form-group row">
                                    <label class="col-md-3 col-form-label text-dark">Full Name</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" value="{{Auth::User()->name}}">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-3 col-form-label text-dark">Profession</label>
                                    <div class="col-md-9">
                                        <select data-placeholder="Select Your Profession" class="chosen-select ec-select my_select_box" tabindex="5">
                                            <option value="">--Select--</option>
                                            <option value="">Student</option>
                                            <option value="">Unemployed</option>
                                            <option value="">Employed</option>
                                        </select>
                                    </div>

                                </div>

                                <div class="form-group row">
                                    <label class="col-md-3 col-form-label text-dark">Organization</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" placeholder="Enter Organization">
                                    </div>
                                </div>


                                <div class="form-group row">
                                    <label class="col-md-3 col-form-label text-dark">Email</label>
                                    <div class="col-md-9">
                                        <input type="email" class="form-control" value="support@echotheme.com">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-3 col-form-label text-dark">Phone</label>
                                    <div class="col-md-9">
                                        <input type="tel" class="form-control" value="+91 654 784 547">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-3 col-form-label text-dark">Address</label>
                                    <div class="col-md-9">
                                        <input type="tel" class="form-control" value="South Street, London, UK">
                                    </div>
                                </div>

                            </div>

                            <div class="border-bottom mb-4 pb-4">
                                <h4 class="mb-4">
                                    Security Settings
                                </h4>

                                <div class="form-group row">
                                    <label class="col-md-3 col-form-label text-dark">Current Password</label>
                                    <div class="col-md-9">
                                        <input type="password" class="form-control" value="123456">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-3 col-form-label text-dark">New Password</label>
                                    <div class="col-md-9">
                                        <input type="password" class="form-control" placeholder="12345678">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-3 col-form-label text-dark">Confirm Password</label>
                                    <div class="col-md-9">
                                        <input type="password" class="form-control" placeholder="12345678">
                                    </div>
                                </div>
                            </div>

                            <h4 class="mb-4">
                                Social Account
                            </h4>

                            <div class="form-group row">
                                <label class="col-md-3 col-form-label text-dark">Facebook</label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control" value="https://fb.com/jaman57">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-md-3 col-form-label text-dark">Twitter</label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control" value="https://Twitter.com/jaman57">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-md-3 col-form-label text-dark">Linkdin</label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control" value="https://Linkdin.com/jaman57">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-md-3 col-form-label text-dark">Google</label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control" value="https://Google.com/jaman57">
                                </div>
                            </div>


                            <div class="my-5">
                                <button class="btn btn-success m-2">Update Profile</button>
                                <button class="btn btn-danger m-2">Cancel</button>
                            </div>
                        </div>

                        <div class="tab-pane fade  mt-4" id="Tabs_12-5" role="tabpanel">

                            <div class="alert border border-success text-success bg-success-0_1 px-4 py-3 alert-dismissible fade show" role="alert">
                                <div class="media align-items-center">
                                    <i class="mr-2 ti-check font-size-20"></i>
                                    <div class="media-body">
                                        <strong> Well done!</strong> You successfully read this important alert message.
                                    </div>
                                </div>
                                <button type="button" class="close font-size-14 absolute-center-y" data-dismiss="alert" aria-label="Close">
                                    <i class="ti-close"></i>
                                </button>
                            </div>

                            <div class="alert border border-info text-info bg-info-0_1 px-4 py-3 alert-dismissible fade show" role="alert">
                                <div class="media align-items-center">
                                    <i class="mr-2 ti-bell font-size-20"></i>
                                    <div class="media-body">
                                        <strong> Heads up!</strong> This alert needs your attention, but it's not super important.
                                    </div>
                                </div>
                                <button type="button" class="close font-size-14 absolute-center-y" data-dismiss="alert" aria-label="Close">
                                    <i class="ti-close"></i>
                                </button>
                            </div>

                            <div class="alert border border-warning text-warning bg-warning-0_1 px-4 py-3 alert-dismissible fade show" role="alert">
                                <div class="media align-items-center">
                                    <i class="mr-2 ti-info-alt font-size-20"></i>
                                    <div class="media-body">
                                        <strong> Warning!</strong> Better check yourself, you're not looking too good.
                                    </div>
                                </div>
                                <button type="button" class="close font-size-14 absolute-center-y" data-dismiss="alert" aria-label="Close">
                                    <i class="ti-close"></i>
                                </button>
                            </div>

                            <div class="alert border border-danger text-danger bg-danger-0_1 px-4 py-3 alert-dismissible fade show" role="alert">
                                <div class="media align-items-center">
                                    <i class="mr-2 ti-alert font-size-20"></i>
                                    <div class="media-body">
                                        <strong> Oh snap!</strong> Changae a few things up and try submitting again.
                                    </div>
                                </div>
                                <button type="button" class="close font-size-14 absolute-center-y" data-dismiss="alert" aria-label="Close">
                                    <i class="ti-close"></i>
                                </button>
                            </div>



                        </div>
                    </div> <!-- END tab-content-->
                </div> <!-- END col-12 -->


            </div> <!-- END col-md-8 -->
        </div>
        <!--END row-->
    </div>
    <!--END container-->
</section>


@endsection
