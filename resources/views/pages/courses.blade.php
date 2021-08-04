@extends('layouts.app')

@section('content')


     @isset($type)



     <div class="padding-y-60 bg-cover bg-center" data-dark-overlay="6" style="background:url({{asset($type->banner)}}) no-repeat">
       <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 my-2 text-white">

           <h2 class="h1">
             {{$type->title}} Courses
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
                   <option>AutoCAD</option>
                   <option>SolidWorks</option>
                   <option>Rhinoceros</option>
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
              @foreach ($courses as $row)
                   <div class="col-lg-4 col-md-6 marginTop-30">

                   @include('pages.course-card',['row'=>$row])

                   </div>

              @endforeach

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


@endisset


@endsection
