@extends('layouts.app')

@section('content')


<section class="padding-y-150 flex-center bg-cover bg-center" data-dark-overlay="6"
    style="background:url(assets/img/1920x800/5.png) no-repeat">
    <div class="container">
        <div class="row">
            <div class="col-12 text-white text-center">

                <h1 class="display-lg-4 my-3 wow slideInUp">
                    Think Design, Think Logic
                </h1>

                <h4 class="text-primary wow slideInUp">
                    Learn a new skill online, on your time
                </h4>

            </div>
            <div class="col-12 mt-5">

                <div class="owl-carousel arrow-on-hover text-center" data-space="10" data-items="5" data-arrow="true"
                    data-loop="true" data-tablet="4">
                    <a href="#" class="card p-4">
                        <img src="{{asset('assets/img/category/autocad.png')}}" alt="">
                        <h6 class="mt-2">
                            AutoCAD
                        </h6>
                    </a>
                    <a href="#" class="card p-4">
                        <img src="{{asset('assets/img/category/solidwork.png')}}" alt="">
                        <h6 class="mt-2">
                            SolidWorks
                        </h6>
                    </a>
                    <a href="#" class="card p-4">
                        <img src="{{asset('assets/img/category/rhino.png')}}" alt="">
                        <h6 class="mt-2">
                            Rhino
                        </h6>
                    </a>

                </div>
            </div>
        </div> <!-- END row-->
    </div> <!-- END container-->
</section>





<section class="padding-y-50">
    <div class="container">
        <div class="row">
            <div class="col-md-4 mt-4 text-center">
                <div class="iconbox iconbox-xxl font-size-26 bg-primary-0_2">
                    <i class="ti-bookmark-alt text-primary"></i>
                </div>
                <h4 class="my-4">
                    44,00 Online Courses
                </h4>
                <p>
                    Investig ationes demons travg ectores legere lrus quod legunt saepius.
                </p>
            </div>
            <div class="col-md-4 mt-4 text-center">
                <div class="iconbox iconbox-xxl font-size-26 bg-primary-0_2">
                    <i class="ti-user text-primary"></i>
                </div>
                <h4 class="my-4">
                    Expert Instruction
                </h4>
                <p>
                    Investig ationes demons travg ectores legere lrus quod legunt saepius.
                </p>
            </div>
            <div class="col-md-4 mt-4 text-center">
                <div class="iconbox iconbox-xxl font-size-26 bg-primary-0_2">
                    <i class="ti-cup text-primary"></i>
                </div>
                <h4 class="my-4">
                    Professional Certificates
                </h4>
                <p>
                    Investig ationes demons travg ectores legere lrus quod legunt saepius.
                </p>
            </div>
        </div> <!-- END row-->
    </div> <!-- END container-->
</section>







<section class="paddingTop-50 paddingBottom-100 bg-light-v2">
    <div class="container">
      
        @foreach ($data->courses as $key => $rows)



        <div class="row mt-5 marginTop-50">
            <div class="col-md-6 my-2">
                <h3>
                    {{$key}} Courses
                </h3>
            </div>

            <div class="col-md-6 my-2 text-md-right">
                <a href="{{route('courses',$rows[0]->type)}}" class="btn btn-outline-primary">All Courses</a>
            </div>

            <div class="col-12 mt-2">

                <div class="owl-carousel arrow-on-hover" data-items="4" data-arrow="true" data-state-outer-class="py-4"
                    data-autoplay="false" data-space="20" data-loop="false" data-wind="true">

                    @foreach ($rows as $row)

                    @include('pages.course-card',['row'=>$row])

                    @endforeach

                </div>

            </div>
        </div> 
      <!-- END row-->

        @endforeach




    </div> <!-- END container-->
</section> <!-- END section-->





<section class="padding-y-50 bg-cover bg-center" data-dark-overlay="7"
    style="background: url(assets/img/1920/550_2.jpg) no-repeat;">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-5 mr-auto text-white my-3">
                <h2 class="line-height-normal">
                    Trusted by <span class="text-primary">1800+</span> students and professionals from the top tech
                    organizations
                </h2>
                <a href="#" class="btn btn-primary mt-3">Join Now</a>
            </div>
            <div class="col-lg-6 col-md-5 my-3">
                <div class="owl-carousel dots-white-outline" data-dots="true" data-smartspeed="300"
                    data-items-tablet="3" data-items-mobile="2" data-space="15">
                    <div class="card height-6rem justify-content-center p-4">
                        <img src="assets/img/logos/1.png" alt="">
                    </div>
                    <div class="card height-6rem justify-content-center p-4">
                        <img src="assets/img/logos/2.png" alt="">
                    </div>
                    <div class="card height-6rem justify-content-center p-4">
                        <img src="assets/img/logos/3.png" alt="">
                    </div>
                    <div class="card height-6rem justify-content-center p-4">
                        <img src="assets/img/logos/4.png" alt="">
                    </div>
                    <div class="card height-6rem justify-content-center p-4">
                        <img src="assets/img/logos/5.png" alt="">
                    </div>
                    <div class="card height-6rem justify-content-center p-4">
                        <img src="assets/img/logos/6.png" alt="">
                    </div>
                    <div class="card height-6rem justify-content-center p-4">
                        <img src="assets/img/logos/7.png" alt="">
                    </div>
                    <div class="card height-6rem justify-content-center p-4">
                        <img src="assets/img/logos/8.png" alt="">
                    </div>
                    <div class="card height-6rem justify-content-center p-4">
                        <img src="assets/img/logos/9.png" alt="">
                    </div>
                    <div class="card height-6rem justify-content-center p-4">
                        <img src="assets/img/logos/10.png" alt="">
                    </div>
                     <div class="card height-6rem justify-content-center p-4">
                        <img src="assets/img/logos/11.png" alt="">
                    </div>
                </div>
            </div>
        </div> <!-- END row-->
    </div> <!-- END container-->
</section>






<section class="padding-y-50">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
                <h2 class="mb-4">
                    Blog
                </h2>
                <div class="width-3rem height-4 rounded bg-primary mx-auto"></div>
            </div>
            <div class="col-lg-4 mt-5">
                <div class="card">
                    <img class="rounded" src="assets/img/360x220/1.jpg" alt="">
                    <div class="card-body px-0">
                        <a href="#" class="text-primary">PHP & My SQL</a>
                        <a href="#" class="h4 my-2">
                            Expand Your Programming Knowledge
                        </a>
                        <p>
                            6 October, 2017 - by <a href="#" class="text-primary">Abdullah</a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mt-5">
                <div class="card">
                    <img class="rounded" src="assets/img/360x220/2.jpg" alt="">
                    <div class="card-body px-0">
                        <a href="#" class="text-primary">PHP & My SQL</a>
                        <a href="#" class="h4 my-2">
                            Expand Your Programming Knowledge
                        </a>
                        <p>
                            6 October, 2017 - by <a href="#" class="text-primary">Abdullah</a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mt-5">
                <div class="card">
                    <img class="rounded" src="assets/img/360x220/3.jpg" alt="">
                    <div class="card-body px-0">
                        <a href="#" class="text-primary">PHP & My SQL</a>
                        <a href="#" class="h4 my-2">
                            Expand Your Programming Knowledge
                        </a>
                        <p>
                            6 October, 2017 - by <a href="#" class="text-primary">Abdullah</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="padding-y-50 bg-cover bg-center" data-dark-overlay="7"
    style="background: url(assets/img/1920/550_3.jpg) no-repeat;">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-5 mr-auto text-white my-3">
                <h2 class="line-height-normal">
                    Share your knowledge and reach millions of students across the globe.
                </h2>
                <a href="#" class="btn btn-primary mt-3">Become an Instructor</a>
            </div>
            <div class="col-lg-6 col-md-5 my-3">
            </div>
        </div>
    </div>
</section>




@endsection
