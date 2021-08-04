@extends('layouts.app')


@section('content')
    <section class="paddingTop-50 paddingBottom-120 bg-light">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 mt-4">
                    <div class="card shadow-v1">
                        <div class="card-header text-center border-bottom pt-5 mb-4">
                            <img class="rounded-circle mb-4" src="{{ asset('storage/' . $teacher->photo) }}" width="200"
                                height="200" alt="">
                            <h4>
                                {{ $teacher->name }}
                            </h4>
                            <p>
                                {{ $teacher->title }}
                            </p>
                            <ul class="list-inline mb-0">
                                <li class="list-inline-item m-2">
                                    <i class="ti-user text-primary"></i>
                                    <span class="d-block">Students</span>
                                    <span class="h6">147570</span>
                                </li>
                                <li class="list-inline-item m-2">
                                    <i class="ti-book text-primary"></i>
                                    <span class="d-block">Courses</span>
                                    <span class="h6">27</span>
                                </li>
                                <li class="list-inline-item m-2">
                                    <i class="ti-star text-primary"></i>
                                    <span class="d-block">Reviews</span>
                                    <span class="h6">10467</span>
                                </li>
                            </ul>
                        </div>
                        <div class="card-body border-bottom">
                            <ul class="list-unstyled">
                                <li class="mb-3">
                                    <span class="d-block">Email address:</span>
                                    <a class="h6" href="mailto:saifullah@gmail.com">{{ $teacher->email }}</a>
                                </li>
                                <li class="mb-3">
                                    <span class="d-block">Phone:</span>
                                    <a class="h6" href="mailto:saifullah@gmail.com">{{ $teacher->phone }}</a>
                                </li>
                                <li class="mb-3">
                                    <span class="d-block">Location:</span>
                                    <a class="h6" href="mailto:saifullah@gmail.com">{{ $teacher->address }}</a>
                                </li>
                            </ul>
                        </div>
                        <div class="card-footer">
                            <p>
                                Social Profile:
                            </p>
                            <ul class="list-inline mb-0">
                                <li class="list-inline-item">
                                    <a href="#" class="btn btn-outline-facebook iconbox iconbox-sm">
                                        <i class="ti-facebook"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#" class="btn btn-outline-twitter iconbox iconbox-sm">
                                        <i class="ti-twitter"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#" class="btn btn-outline-google-plus iconbox iconbox-sm">
                                        <i class="ti-google"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#" class="btn btn-outline-linkedin iconbox iconbox-sm">
                                        <i class="ti-linkedin"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div> <!-- END col-md-4 -->
                <div class="col-lg-8 mt-4">
                    <div class="card shadow-v1 padding-30">
                        <ul class="nav tab-line tab-line border-bottom mb-4" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#Tabs_1-1" role="tab"
                                    aria-selected="true">
                                    About
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#Tabs_1-2" role="tab" aria-selected="true">
                                    Courses
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#Tabs_1-3" role="tab" aria-selected="true">
                                    Reviews
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#Tabs_1-4" role="tab" aria-selected="true">
                                    Message
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#Tabs_1-5" role="tab" aria-selected="true">
                                    Settings
                                </a>
                            </li>
                        </ul>

                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="Tabs_1-1" role="tabpanel">
                                <h4>
                                    Biography
                                </h4>
                                <p>
                                    {{ $teacher->description }}
                                </p>

                                <hr class="my-4">
                                <div class="border-bottom mb-4 pb-4">
                                    <h4 class="mb-4">
                                        Experience
                                    </h4>
                                    <ul class="ec-timeline-portlet list-unstyled bullet-line-list">
                                        <li class="ec-timeline-portlet__item mb-4">
                                            <small>2000-2004</small>
                                            <h6 class="mb-0">Full Stack Developer</h6>
                                            <p class="mb-2">Apple Inc.</p>
                                            <p>
                                                Investig ationes demons travge vunt lectores legee lrus quodk legunt saepius
                                                was claritas kesty conctetur they kedadip lectores legee sicing. legee lrus
                                                quodk legunt.
                                            </p>
                                        </li>
                                        <li class="ec-timeline-portlet__item">
                                            <small>2004-2018</small>
                                            <h6 class="mb-0">Project Manager</h6>
                                            <p class="mb-2">Google</p>
                                            <p>
                                                Investig ationes demons travge vunt lectores legee lrus quodk legunt saepius
                                                was claritas kesty conctetur they kedadip lectores legee sicing. legee lrus
                                                quodk legunt.
                                            </p>
                                        </li>
                                    </ul>
                                </div>
                                <div class="mb-4">
                                    <h4 class="mb-4">
                                        Education
                                    </h4>
                                    <ul class="ec-timeline-portlet list-unstyled bullet-line-list">
                                        <li class="ec-timeline-portlet__item mb-4">
                                            <small>2000-2004</small>
                                            <h6 class="mb-0">Full Stack Developer</h6>
                                            <p class="mb-2">Apple Inc.</p>
                                            <p>
                                                Investig ationes demons travge vunt lectores legee lrus quodk legunt saepius
                                                was claritas kesty conctetur they kedadip lectores legee sicing. legee lrus
                                                quodk legunt.
                                            </p>
                                        </li>
                                        <li class="ec-timeline-portlet__item">
                                            <small>2004-2018</small>
                                            <h6 class="mb-0">Project Manager</h6>
                                            <p class="mb-2">Google</p>
                                            <p>
                                                Investig ationes demons travge vunt lectores legee lrus quodk legunt saepius
                                                was claritas kesty conctetur they kedadip lectores legee sicing. legee lrus
                                                quodk legunt.
                                            </p>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="Tabs_1-2" role="tabpanel">
                                <div class="row">
                                    @foreach ($courses as $course)
                                        <div class="col-md-6 mt-4">
                                            <a href="page-course-details.html"
                                                class="card text-gray overflow-hidden height-100p shadow-v1 border">
                                                @if ($course->is_bestselling == 1)
                                                    <span class="ribbon-badge font-size-sm bg-success text-white">Best
                                                        selling</span>
                                                @endif
                                                <img class="card-img-top" src="assets/img/360x220/1.jpg" alt="">
                                                <div class="card-body">
                                                    <h4 class="h5">
                                                        {{ $course->title }}
                                                    </h4>
                                                    <p class="my-3">
                                                        <i class="ti-user mr-2"></i>
                                                        <?php $instructor = App\Teacher::where('id',
                                                        $course->instructor_id)->first(); ?>
                                                        {{ $instructor->name }}
                                                    </p>
                                                    @php
                                                        $rating = CourseRating($course->id);
                                                    @endphp
                                                    <p class="mb-0">
                                                        @for ($i = 1; $i <= 5; $i++)

                                                            @if ($rating->average >= $i) <i class="fas
                                                            fa-star text-warning"></i>
                                                        @elseif ($rating->average>($i-1))

                                                            <i class="fas fa-star-half
                                                            text-warning"></i>
                                                        @else
                                                            <i class="fas fa-star"></i> @endif
                                                        @endfor

                                                        <span
                                                            class="text-dark">{{ $rating->average > 5 ? 5 : round($rating->average, 1) }}</span>
                                                        <span>({{ $rating->count > 0 ? $rating->count : 0 }})</span>
                                                    </p>
                                                </div>
                                                <div class="card-footer media align-items-center justify-content-between">
                                                    <ul class="list-unstyled mb-0">
                                                        <li class="mb-1">
                                                            <i class="ti-headphone small mr-2"></i>
                                                            {{$course->lectures}} lectures
                                                        </li>
                                                        <li class="mb-1">
                                                            <i class="ti-time small mr-2"></i>
                                                            {{$course->hours}} hours
                                                        </li>
                                                    </ul>
                                                    <h4 class="h5">
                                                        <span class="text-primary">{{$course->price}} BDT</span>
                                                    </h4>
                                                </div>
                                            </a>
                                        </div>
                                    @endforeach
                                    <div class="col-12 text-center mt-5">
                                        <a href="#" class="btn btn-icon btn-outline-primary">
                                            <i class="ti-reload mr-2"></i>
                                            Load More
                                        </a>
                                    </div>
                                </div> <!-- END row-->
                            </div> <!-- END tab-pane -->
                            <div class="tab-pane fade" id="Tabs_1-3" role="tabpanel">
                                <div class="row mx-0 py-4 border-bottom mt-4">
                                    <div class="col-md-4 media">
                                        <img class="iconbox iconbox-xl" src="assets/img/avatar/4.jpg" alt="">
                                        <div class="media-body ml-4 mb-4 mb-md-0">
                                            <small class="text-gray">7 min ago</small>
                                            <h6>
                                                Anthony Forsey
                                            </h6>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
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
                                </div> <!-- END d-flex-->

                                <div class="row mx-0 py-4 border-bottom mt-4">
                                    <div class="col-md-4 media">
                                        <img class="iconbox iconbox-xl" src="assets/img/avatar/5.jpg" alt="">
                                        <div class="media-body ml-4 mb-4 mb-md-0">
                                            <small class="text-gray">1 mon ago</small>
                                            <h6>
                                                Justin Nam
                                            </h6>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
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
                                </div> <!-- END d-flex-->

                                <div class="row mx-0 py-4 border-bottom mt-4">
                                    <div class="col-md-4 media">
                                        <div class="iconbox iconbox-xl border">
                                            MD
                                        </div>
                                        <div class="media-body ml-4 mb-4 mb-md-0">
                                            <small class="text-gray">3 Mon ago</small>
                                            <h6>
                                                Murir Dokan
                                            </h6>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
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
                                </div> <!-- END d-flex-->


                                <div class="row mx-0 py-4 border-bottom mt-4">
                                    <div class="col-md-4 media">
                                        <img class="iconbox iconbox-xl" src="assets/img/avatar/6.jpg" alt="">
                                        <div class="media-body ml-4 mb-4 mb-md-0">
                                            <small class="text-gray">1 year ago</small>
                                            <h6>
                                                John Doe
                                            </h6>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
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
                                </div> <!-- END d-flex-->
                                <div class="text-center mt-5">
                                    <a href="#" class="btn btn-primary btn-icon">
                                        <i class="ti-reload mr-2"></i>
                                        Load More
                                    </a>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="Tabs_1-4" role="tabpanel">
                                <form action="#" method="POST" class="p-4">
                                    <div class="row">
                                        <div class="col-md-6 mb-4">
                                            <input type="text" class="form-control" placeholder="Name" required>
                                        </div>
                                        <div class="col-md-6 mb-4">
                                            <input type="email" class="form-control" placeholder="Email" required>
                                        </div>
                                        <div class="col-12 mb-4">
                                            <textarea class="form-control" placeholder="Message" rows="5"
                                                required></textarea>
                                        </div>
                                        <div class="col-12 mb-4">
                                            <button class="btn btn-primary">Send Now</button>
                                        </div>
                                    </div>
                                </form>
                            </div>

                            <div class="tab-pane fade" id="Tabs_1-5" role="tabpanel">
                                <div class="border-bottom mb-4 pb-4">
                                    <h4>
                                        Upload Avatar
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
                                            <a href="#"></a>
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
                                            <input type="text" class="form-control" value="John Doe">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-md-3 col-form-label text-dark">Position</label>
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" value="Web Developer and Instructor">
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
                                        <label class="col-md-3 col-form-label text-dark">Location</label>
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

                                <div class="border-bottom mb-4 pb-4">
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
                                            <input type="text" class="form-control" value="https://twitter.com/jaman57">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-md-3 col-form-label text-dark">Linkdin</label>
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" value="https://linkdin.com/jaman57">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-md-3 col-form-label text-dark">Google</label>
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" value="https://google.com/jaman57">
                                        </div>
                                    </div>

                                </div>

                                <div class="border-bottom mb-4 pb-4">
                                    <h4 class="mb-4">
                                        About You
                                    </h4>
                                    <textarea rows="6" class="form-control">Dummy text of the printing and typesetting industry. It was popular ised in the kest with the release of Letraset sheets contain was luing lorem kepsum passages, and more recently with desktop publishing software.
                       </textarea>
                                </div>

                                <div class="border-bottom mb-4 pb-4">
                                    <h4 class="mb-4">
                                        Account Type
                                    </h4>
                                    <p>
                                        <span class="badge badge-danger">Free</span>
                                    </p>
                                </div>
                                <div class="my-5">
                                    <button class="btn btn-success m-2">Update Profile</button>
                                    <button class="btn btn-danger m-2">Cancel</button>
                                </div>
                            </div> <!-- END tab-pane -->
                        </div> <!-- END tab-content-->
                    </div> <!-- END card-->
                </div> <!-- END col-md-8 -->
            </div>
            <!--END row-->
        </div>
        <!--END container-->
    </section>

@endsection
