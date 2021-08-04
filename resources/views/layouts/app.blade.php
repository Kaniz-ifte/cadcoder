<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">

    <!-- Title-->
    <title>cadcoder</title>

    <!-- SEO Meta-->
    <meta name="description" content="CadCoder|An Expert for Every Goal">
    <meta name="keywords" content="CadCoder|An Expert for Every Goal">
    <meta name="author" content="education">

    <!-- viewport scale-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">


    <!-- Favicon and Apple Icons-->
    <link rel="icon" type="image/x-icon" href="{{ asset('favicon.png') }}">
    <link rel="shortcut icon" href="{{ asset('favicon.png') }}">
    <link rel="apple-touch-icon-precomposed" href="{{ asset('favicon.png') }}">


    <!--Google fonts-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Maven+Pro:400,500,700%7CWork+Sans:400,500">


    <!-- Icon fonts -->
    <link rel="stylesheet" href="{{ asset('assets/fonts/fontawesome/css/all.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/fonts/themify-icons/css/themify-icons.css') }}">


    <!-- stylesheet-->
    <link rel="stylesheet" href="{{ asset('assets/css/vendors.bundle.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/custom.css') }}">

    @yield('css')

</head>

<body>



    <nav class="ec-nav sticky-top bg-white">
        <div class="container">
            <div class="navbar p-0 navbar-expand-lg">
                <div class="navbar-brand">
                    <a class="logo-default" href="{{ url('/') }}"><img alt=""
                            src="{{ asset('assets/img/logo-black.png') }}"></a>
                </div>
                <span aria-expanded="false" class="navbar-toggler ml-auto collapsed" data-target="#ec-nav__collapsible"
                    data-toggle="collapse">
                    <div class="hamburger hamburger--spin js-hamburger">
                        <div class="hamburger-box">
                            <div class="hamburger-inner"></div>
                        </div>
                    </div>
                </span>
                <div class="collapse navbar-collapse when-collapsed" id="ec-nav__collapsible">
                    <ul class="nav navbar-nav ec-nav__navbar ml-auto">


                        <li class="nav-item nav-item__has-dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
                                <span class="nav-btn">
                                    Courses
                                </span>
                            </a>
                            <ul class="dropdown-menu">

                                @foreach (CourseTypes() as $row)
                                    <li><a href="{{ route('courses', $row->id) }}"
                                            class="nav-link__list">{{ $row->title }}</a></li>

                                @endforeach


                            </ul>
                        </li>

                        @if (Auth::User())

                            <li class="nav-item">
                                <a class="nav-link" href="{{ url('/dashboard') }}">
                                    <span class="nav-btn btn btn-success">
                                        Dashboard
                                    </span>
                                </a>
                            </li>

                        @else
                            <li class="nav-item">
                                <a class="nav-link" href="{{ url('/login') }}">
                                    <span class="nav-btn btn btn-outline-success">
                                        Log In
                                    </span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('register') }}">
                                    <span class="nav-btn btn btn-success">
                                        Join
                                    </span>
                                </a>
                            </li>

                        @endif

                    </ul>

                </div>
                <div class="nav-toolbar">
                    <ul class="navbar-nav ec-nav__navbar">

                        <li class="nav-item">
                            <div class="search-box">

                                <form class="" action="#" method="get">
                                    <input type="search" class="search-input border border-success mr-5" name="search">

                                </form>

                            </div>
                        </li>

                    </ul>
                </div>


                @if (Auth::User())

                    <div class="dropdown dropdown-click">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <span>{{ Auth::User()->name }}</span>
                            <img class="iconbox iconbox-sm mx-1" src="{{ asset(Auth::User()->avatar) }}" alt="">
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="{{ route('dashboard') }}">
                                <i class="ti-user mr-2"></i>
                                <span class="mr-2">
                                    Dashboard
                                </span>
                            </a>

                            <a class="dropdown-item" href="{{ route('notifications') }}">
                                <i class="ti-user mr-2"></i>
                                <span class="mr-2">
                                    Notification
                                </span>
                            </a>
                            <a class="dropdown-item" href="{{ route('message') }}">
                                <i class="ti-email mr-2"></i>
                                <span class="mr-2">Message</span>
                                <span class="badge badge-success ml-auto">78</span>
                            </a>
                            <a class="dropdown-item" href="{{ route('settings') }}">
                                <i class="ti-settings mr-2"></i>
                                <span class="mr-2">Settings</span>
                                <span class="badge badge-success ml-auto">27</span>
                            </a>
                            <a class="dropdown-item" href="{{ route('help') }}">
                                <i class="ti-user mr-2"></i>
                                <span class="mr-2">
                                    Help
                                </span>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="{{ route('logout') }}"
                                onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                                <i class="ti-back-left mr-2"></i>
                                <span class="mr-2">Logout</span>
                            </a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                style="display: none;">
                                @csrf
                            </form>


                        </div>
                    </div>

                @endif


            </div>
        </div> <!-- END container-->
    </nav> <!-- END ec-nav -->

    <div class="site-search">
        <div class="site-search__close bg-black-0_8"></div>
        <form class="form-site-search" action="#" method="POST">
            <div class="input-group">
                <input type="text" placeholder="Search" class="form-control py-3 border-white" required="">
                <div class="input-group-append">
                    <button class="btn btn-primary" type="submit"><i class="ti-search"></i></button>
                </div>
            </div>
        </form>
    </div> <!-- END site-search-->


    @yield('content')


    <footer class="site-footer">
        <div class="footer-top bg-dark text-white-0_6 pt-5 paddingBottom-100">
            <div class="container">
                <div class="row">

                    <div class="col-lg-3 col-md-6 mt-5">
                        <img src="{{ asset('assets/img/logo-black.png') }}" alt="Logo">
                        <div class="margin-y-40">
                            <p>
                                An expert community who thinks through design and logic
                            </p>
                        </div>
                        <ul class="list-inline">
                            <li class="list-inline-item"><a class="iconbox bg-white-0_2 hover:primary"
                                    href="https://www.facebook.com/cadcoderbd" target="_blank" value=""><i
                                        class="ti-facebook"> </i></a></li>
                            <li class="list-inline-item"><a class="iconbox bg-white-0_2 hover:primary"
                                    href="https://www.instagram.com/cadcoder/" target="_blank"><i
                                        class="ti-instagram"></i></a></li>
                            <li class="list-inline-item"><a class="iconbox bg-white-0_2 hover:primary"
                                    href="https://twitter.com/CoderCad" target="_blank"><i class="ti-twitter"> </i></a>
                            </li>
                            <li class="list-inline-item"><a class="iconbox bg-white-0_2 hover:primary"
                                    href="https://www.linkedin.com/company/cadcoder/" target="_blank"><i
                                        class="ti-linkedin"> </i></a></li>

                        </ul>
                    </div>

                    <div class="col-lg-2 col-md-6 mt-5">
                        <h4 class="h5 text-white">Quick links</h4>
                        <div class="width-3rem bg-primary height-3 mt-3"></div>
                        <ul class="list-unstyled marginTop-40">

                            <li class="mb-2">
                                <a href="{{ url('/about-us') }}">About Us</a>
                            </li>


                            <li class="mb-2">
                                <a href="{{ url('/faqs') }}">FAQs</a>
                            </li>
                            <li class="mb-2">
                                <a href="{{ url('/instructors') }}">Instructors</a>
                            </li>
                            <li class="mb-2">
                                <a href="{{ url('/blogs') }}">Blogs</a>
                            </li>


                            <li class="mb-2">
                                <a href="{{ url('/events') }}">Events</a>
                            </li>

                            <li class="mb-2">
                                <a href="{{ url('/terms-conditions') }}">Terms & Conditions</a>
                            </li>

                        </ul>
                    </div>

                    <div class="col-lg-3 col-md-6 mt-5">
                        <h4 class="h5 text-white">Contact Us</h4>
                        <div class="width-3rem bg-primary height-3 mt-3"></div>
                        <ul class="list-unstyled marginTop-40">
                            <li class="mb-3">
                                <a href="{{ url('/design-your-desire') }}"> Design Your Desire</a>
                            </li>
                            <li class="mb-3">
                                <a href="{{ url('/contact-us') }}"> Contact Us</a>
                            </li>
                            <li class="mb-3"><i class="ti-email mr-2"></i><a href="#"> support@cadcoder.com.bd</a></li>
                            <li class="mb-3">
                                <div class="media">
                                    <i class="ti-location-pin mt-2 mr-2"></i>
                                    <div class="media-body">
                                        <span>
                                            Dhaka, Bangladesh.
                                        </span>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>



                    <div class="col-lg-4 col-md-6 mt-5">
                        <h4 class="h5 text-white">Newsletter</h4>
                        <div class="width-3rem bg-primary height-3 mt-3"></div>
                        <div class="marginTop-40">
                            <p class="mb-4">Subscribe to get update and information. Don't worry, we won't send spam!
                            </p>
                            <form class="marginTop-30" action="#" method="POST">
                                <div class="input-group">
                                    <input type="text" placeholder="Enter your email"
                                        class="form-control py-3 border-white" required="">
                                    <div class="input-group-append">
                                        <button class="btn btn-primary" type="submit">Subscribe</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                </div> <!-- END row-->
            </div> <!-- END container-->
        </div> <!-- END footer-top-->

        <div class="footer-bottom bg-black-0_9  text-center">
            <div class="container">
                <p class="text-white-0_5 mb-0">&copy; {{ date('Y') }} . All rights reserved. Created by <a href="#"
                        target="_blunk">cadcoder</a></p>
            </div>
        </div> <!-- END footer-bottom-->
    </footer> <!-- END site-footer -->


    <div class="scroll-top">
        <i class="ti-angle-up"></i>
    </div>

    <script src="{{ asset('assets/js/vendors.bundle.js') }}"></script>
    <script src="{{ asset('assets/js/scripts.js') }}"></script>


    <script>
        (function(window, document) {
            var loader = function() {
                var script = document.createElement("script"),
                    tag = document.getElementsByTagName("script")[0];
                script.src =
                    "{{ env('SANDBOX_API_URL', 'https://seamless-epay.sslcommerz.com') }}/embed.min.js?" + Math
                    .random().toString(36).substring(7);

                tag.parentNode.insertBefore(script, tag);
            };

            window.addEventListener ? window.addEventListener("load", loader, false) : window.attachEvent("onload",
                loader);
        })(window, document);




        function PayNow(user_id, course_id, amount) {

            var obj = {};
            obj.course_id = course_id;
            obj.order_id = user_id + '' + course_id;
            obj.amount = amount;

            // console.log(obj);



            $('#sslczPayBtn').prop('postdata', obj);

        }

    </script>



    @yield('js')



</body>

</html>
