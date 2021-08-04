@extends('layouts.app')

@section('content')




     <div class="padding-y-60 bg-cover bg-center" data-dark-overlay="6" style="background:url({{asset('assets/img/breadcrumb-bg-code.jpg')}}) no-repeat">
       <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 my-2 text-white">

           <h2 class="h1">
             code Courses
           </h2>

          </div>
        </div>
       </div>
     </div>




     <section class="py-3 position-relative shadow-v1">
       <div class="container">
         <form class="row">
           <div class="col-md-12 my-2">
             <ul class="list-inline">
               <li class="list-inline-item my-2">
                 <select class="form-control">
                   <option selected>Category</option>
                   <option>Starting Soon</option>
                   <option>MATLAB</option>
                   <option>C Programming</option>
                   <option>Android App</option>
                 </select>
               </li>
               <li class="list-inline-item my-2">
                 <select class="form-control">
                   <option selected>Sort By</option>
                   <option>Newest</option>
                   <option>Top rated</option>
                   <option>Best selling</option>
                   <option>Price: Low to High</option>
                   <option>Price: High to Low</option>
                 </select>
               </li>
             </ul>
           </div>

         </form> <!-- END row-->
       </div> <!-- END container-->
     </section>




     <section class="padding-y-60 bg-light-v2">
       <div class="container">
         <div class="row">
           <div class="col-lg-4 col-md-6 marginTop-30">
             <div href="page-course-details.html" class="card height-100p text-gray shadow-v1">
               <img class="card-img-top" src="{{asset('assets/img/360x220/1.jpg')}}" alt="">
               <div class="card-body">
                <span class="badge position-absolute top-0 bg-success text-white" data-offset-top="-13">
                  Best selling
                </span>
                 <a href="#" class="h5">
                   The Web Developer Bootcamp
                 </a>
                 <p class="my-3">
                   <i class="ti-user mr-2"></i>
                   Andrew Mead
                 </p>
                 <p class="mb-0">
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <span class="text-dark">5</span>
                   <span>(4578)</span>
                 </p>
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
                 <h4 class="h5 text-right">
                   <span class="text-primary">$180</span>
                 </h4>
               </div>
             </div>
           </div>

           <div class="col-lg-4 col-md-6 marginTop-30">
             <div href="page-course-details.html" class="card height-100p text-gray shadow-v1">
               <img class="card-img-top" src="{{asset('assets/img/360x220/2.jpg')}}" alt="">
               <div class="card-body">
                <span class="badge position-absolute top-0 bg-danger text-white" data-offset-top="-13">
                  Trending
                </span>
                 <a href="#" class="h5">
                   Visual Basic Essential Training For Begainers
                 </a>
                 <p class="my-3">
                   <i class="ti-user mr-2"></i>
                   Andrew Mead, John Doe
                 </p>
                 <p class="mb-0">
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <span class="text-dark">5</span>
                   <span>(4578)</span>
                 </p>
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
                 <h4 class="h5 text-right">
                   <span class="text-primary">$10</span>
                   <span class="d-block text-gray"><s>$129</s></span>
                 </h4>
               </div>
             </div>
           </div>

           <div class="col-lg-4 col-md-6 marginTop-30">
             <div href="page-course-details.html" class="card height-100p text-gray shadow-v1">
               <img class="card-img-top" src="{{asset('assets/img/360x220/3.jpg')}}" alt="">
               <div class="card-body">
                 <a href="#" class="h5">
                   Programming Real-World Examples
                 </a>
                 <p class="my-3">
                   <i class="ti-user mr-2"></i>
                   Anthony Broks
                 </p>
                 <p class="mb-0">
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <span class="text-dark">5</span>
                   <span>(4578)</span>
                 </p>
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
                 <h4 class="h5 text-right">
                   <span class="text-primary">$375</span>
                 </h4>
               </div>
             </div>
           </div>

           <div class="col-lg-4 col-md-6 marginTop-30">
             <div href="page-course-details.html" class="card height-100p text-gray shadow-v1">
               <img class="card-img-top" src="{{asset('assets/img/360x220/4.jpg')}}" alt="">
               <div class="card-body">
                 <a href="#" class="h5">
                   Programming Real-World Examples
                 </a>
                 <p class="my-3">
                   <i class="ti-user mr-2"></i>
                   Asif vai
                 </p>
                 <p class="mb-0">
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <span class="text-dark">5</span>
                   <span>(4578)</span>
                 </p>
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
                 <h4 class="h5 text-right">
                   <span class="text-primary">$180</span>
                 </h4>
               </div>
             </div>
           </div>

           <div class="col-lg-4 col-md-6 marginTop-30">
             <div href="page-course-details.html" class="card height-100p text-gray shadow-v1">
               <img class="card-img-top" src="{{asset('assets/img/360x220/5.jpg')}}" alt="">
               <div class="card-body">
                 <a href="#" class="h5">
                   Java 8 Essential Training
                 </a>
                 <p class="my-3">
                   <i class="ti-user mr-2"></i>
                   Jonathon
                 </p>
                 <p class="mb-0">
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <span class="text-dark">5</span>
                   <span>(4578)</span>
                 </p>
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
                 <h4 class="h5 text-right">
                   <span class="text-primary">$249</span>
                 </h4>
               </div>
             </div>
           </div>

           <div class="col-lg-4 col-md-6 marginTop-30">
             <div href="page-course-details.html" class="card height-100p text-gray shadow-v1">
               <img class="card-img-top" src="{{asset('assets/img/360x220/6.jpg')}}" alt="">
               <div class="card-body">
                 <a href="#" class="h5">
                   C++ Essential Training
                 </a>
                 <p class="my-3">
                   <i class="ti-user mr-2"></i>
                   Jonathon
                 </p>
                 <p class="mb-0">
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <span class="text-dark">5</span>
                   <span>(4578)</span>
                 </p>
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
                 <h4 class="h5 text-right">
                   <span class="text-success font-weight-bold">Free</span>
                 </h4>
               </div>
             </div>
           </div>

           <div class="col-lg-4 col-md-6 marginTop-30">
             <div href="page-course-details.html" class="card height-100p text-gray shadow-v1">
               <img class="card-img-top" src="{{asset('assets/img/360x220/1.jpg')}}" alt="">
               <div class="card-body">
                <span class="badge position-absolute top-0 bg-success text-white" data-offset-top="-13">
                  Best selling
                </span>
                 <a href="#" class="h5">
                   The Web Developer Bootcamp
                 </a>
                 <p class="my-3">
                   <i class="ti-user mr-2"></i>
                   Andrew Mead
                 </p>
                 <p class="mb-0">
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <span class="text-dark">5</span>
                   <span>(4578)</span>
                 </p>
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
                 <h4 class="h5 text-right">
                   <span class="text-primary">$180</span>
                 </h4>
               </div>
             </div>
           </div>

           <div class="col-lg-4 col-md-6 marginTop-30">
             <div href="page-course-details.html" class="card height-100p text-gray shadow-v1">
               <img class="card-img-top" src="{{asset('assets/img/360x220/2.jpg')}}" alt="">
               <div class="card-body">
                <span class="badge position-absolute top-0 bg-danger text-white" data-offset-top="-13">
                  Trending
                </span>
                 <a href="#" class="h5">
                   Visual Basic Essential Training For Begainers
                 </a>
                 <p class="my-3">
                   <i class="ti-user mr-2"></i>
                   Andrew Mead, John Doe
                 </p>
                 <p class="mb-0">
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <span class="text-dark">5</span>
                   <span>(4578)</span>
                 </p>
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
                 <h4 class="h5 text-right">
                   <span class="text-primary">$10</span>
                   <span class="d-block text-gray"><s>$129</s></span>
                 </h4>
               </div>
             </div>
           </div>

           <div class="col-lg-4 col-md-6 marginTop-30">
             <div href="page-course-details.html" class="card height-100p text-gray shadow-v1">
               <img class="card-img-top" src="{{asset('assets/img/360x220/3.jpg')}}" alt="">
               <div class="card-body">
                 <a href="#" class="h5">
                   Programming Real-World Examples
                 </a>
                 <p class="my-3">
                   <i class="ti-user mr-2"></i>
                   Anthony Broks
                 </p>
                 <p class="mb-0">
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <span class="text-dark">5</span>
                   <span>(4578)</span>
                 </p>
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
                 <h4 class="h5 text-right">
                   <span class="text-primary">$375</span>
                 </h4>
               </div>
             </div>
           </div>

           <div class="col-lg-4 col-md-6 marginTop-30">
             <div href="page-course-details.html" class="card height-100p text-gray shadow-v1">
               <img class="card-img-top" src="{{asset('assets/img/360x220/4.jpg')}}" alt="">
               <div class="card-body">
                 <a href="#" class="h5">
                   Programming Real-World Examples
                 </a>
                 <p class="my-3">
                   <i class="ti-user mr-2"></i>
                   Asif vai
                 </p>
                 <p class="mb-0">
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <span class="text-dark">5</span>
                   <span>(4578)</span>
                 </p>
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
                 <h4 class="h5 text-right">
                   <span class="text-primary">$180</span>
                 </h4>
               </div>
             </div>
           </div>

           <div class="col-lg-4 col-md-6 marginTop-30">
             <div href="page-course-details.html" class="card height-100p text-gray shadow-v1">
               <img class="card-img-top" src="{{asset('assets/img/360x220/5.jpg')}}" alt="">
               <div class="card-body">
                 <a href="#" class="h5">
                   Java 8 Essential Training
                 </a>
                 <p class="my-3">
                   <i class="ti-user mr-2"></i>
                   Jonathon
                 </p>
                 <p class="mb-0">
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <span class="text-dark">5</span>
                   <span>(4578)</span>
                 </p>
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
                 <h4 class="h5 text-right">
                   <span class="text-primary">$249</span>
                 </h4>
               </div>
             </div>
           </div>

           <div class="col-lg-4 col-md-6 marginTop-30">
             <div href="page-course-details.html" class="card height-100p text-gray shadow-v1">
               <img class="card-img-top" src="{{asset('assets/img/360x220/6.jpg')}}" alt="">
               <div class="card-body">
                 <a href="#" class="h5">
                   C++ Essential Training
                 </a>
                 <p class="my-3">
                   <i class="ti-user mr-2"></i>
                   Jonathon
                 </p>
                 <p class="mb-0">
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <i class="fas fa-star text-warning"></i>
                   <span class="text-dark">5</span>
                   <span>(4578)</span>
                 </p>
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
                 <h4 class="h5 text-right">
                   <span class="text-success font-weight-bold">Free</span>
                 </h4>
               </div>
             </div>
           </div>

           <div class="col-12 marginTop-70">
                <ul class="pagination pagination-primary justify-content-center">
                  <li class="page-item mx-1">
                    <a class="page-link iconbox width-auto rounded-pill" href="#">
                      <span><i class="ti-angle-left small mr-2"></i> Previous</span>
                    </a>
                  </li>
                  <li class="page-item active mx-1">
                    <a class="page-link iconbox" href="#">1</a>
                  </li>
                  <li class="page-item disabled mx-1">
                    <a class="page-link iconbox border-0" href="#">
                      <i class="ti-more-alt"></i>
                    </a>
                  </li>
                  <li class="page-item mx-1">
                    <a class="page-link iconbox" href="#">16</a>
                  </li>
                  <li class="page-item mx-1">
                    <a class="page-link iconbox width-auto rounded-pill" href="#">
                      <span>Next <i class="ti-angle-right small ml-2"></i></span>
                    </a>
                  </li>
                </ul>
           </div>
         </div> <!-- END row-->
       </div> <!-- END container-->
     </section>





@endsection
