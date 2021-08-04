@extends('layouts.app')

@section('content')

     <div class="padding-y-80 bg-cover" data-dark-overlay="6" style="background:url(assets/img/1920/658_2.jpg) no-repeat">
       <div class="container">
         <h2 class="text-white">
           Design Your Desire
         </h2>
         <ol class="breadcrumb breadcrumb-double-angle text-white bg-transparent p-0">
           <li class="breadcrumb-item"><a href="#">Home</a></li>
           <li class="breadcrumb-item"><a href="#">Page</a></li>
           <li class="breadcrumb-item">Design Your Desire</li>
         </ol>
       </div>
     </div>


     <section class="padding-y-100">
       <div class="container">

            <div class="row text-center">
                 <div class="col-12 text-center">
                 <h2>How It Works </h2>
                 <div class="width-4rem height-4 bg-primary my-2 mx-auto rounded"></div>
               </div>

      <div class="col-lg-4 col-md-6 marginTop-30 wow fadeInUp" data-wow-delay=".1s" style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
       <div class="card height-100p text-center p-4 p-md-5 transition hover:shadow-v3">
        <span class="iconbox iconbox-lg bg-primary mx-auto">
           <i class="ti-magnet font-size-24"></i>
         </span>
          <h5 class="my-4">
            Excellent Features
          </h5>
          <p>
            Investig ationes demons travg vunt lectores legere lrus quod legunt saepius claritas est.
          </p>
       </div>
      </div>

      <div class="col-lg-4 col-md-6 marginTop-30 wow fadeInUp" data-wow-delay=".2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
       <div class="card height-100p text-center p-4 p-md-5 transition hover:shadow-v3">
        <span class="iconbox iconbox-lg bg-success text-white mx-auto">
           <i class="ti-light-bulb font-size-24"></i>
         </span>
          <h5 class="my-4">
            Creative Ideas
          </h5>
          <p>
            Investig ationes demons travg vunt lectores legere lrus quod legunt saepius claritas est.
          </p>
        </div>
      </div>

      <div class="col-lg-4 col-md-6 marginTop-30 wow fadeInUp" data-wow-delay=".3s" style="visibility: visible; animation-delay: 0.3s; animation-name: fadeInUp;">
        <div class="card height-100p text-center p-4 p-md-5 transition hover:shadow-v3">
          <span class="iconbox iconbox-lg bg-danger text-white mx-auto">
           <i class="ti-shortcode font-size-24"></i>
          </span>
          <h5 class="my-4">
            Clean Code
          </h5>
          <p>
            Investig ationes demons travg vunt lectores legere lrus quod legunt saepius claritas est.
          </p>
        </div>
      </div>


    </div>
       </div> <!--END container-->
     </section>


     <section class="padding-y-100">
     <div class="container">
       <div class="row">
        <div class="col-12 text-center">
           <h2>
             Describe Your Desire
           </h2>
           <div class="width-4rem height-4 bg-primary my-2 mx-auto rounded"></div>
         </div>
         <div class="col-lg-10 mx-auto mt-5">
           <div class="card text-center shadow-v3 p-5">


             <form action="#" method="POST" class="mt-4">

                  <div class="col-md-6 float-left">
                       <div class="input-group mb-3">
                   <div class="input-group-prepend">
                     <span class="input-group-text rounded-0 ti-email"></span>
                   </div>
                   <input type="text" class="form-control rounded-0" placeholder="Full Name">
                 </div>

                  </div>

                  <div class="col-md-6 float-left">
                       <div class="input-group mb-3">
                   <div class="input-group-prepend">
                     <span class="input-group-text rounded-0 ti-email"></span>
                   </div>
                   <input type="email" class="form-control rounded-0" placeholder="Email">
                 </div>

                  </div>
                  <div class="col-md-6 float-left">
                       <div class="input-group mb-3 text-left">

                   <select data-placeholder="Select Your Profession" class="chosen-select ec-select my_select_box" tabindex="5">
                       <option value="">--Select Profession--</option>
                       <option value="">Student</option>
                       <option value="">Unemployed</option>
                       <option value="">Employed</option>
                   </select>
                 </div>

                  </div>

                  <div class="col-md-6 float-left">
                       <div class="input-group mb-3">
                   <div class="input-group-prepend">
                     <span class="input-group-text rounded-0 ti-email"></span>
                   </div>
                   <input type="text" class="form-control rounded-0" placeholder="Institution">
                 </div>
                 </div>

                 <div class="col-md-6 float-left">
                     <div class="input-group mb-3 text-left">

                  <select data-placeholder="Select Your Profession" class="chosen-select ec-select my_select_box" tabindex="5">
                     <option value="">--Select Category--</option>
                     <option value="">CAD</option>
                     <option value="">Code</option>
                  </select>
               </div>

                 </div>

                 <div class="col-md-6 float-left">
                     <div class="input-group mb-3 text-left">

                  <select data-placeholder="Select Your Profession" class="chosen-select ec-select my_select_box" tabindex="5">
                     <option value="">--Select Subcategory--</option>
                     <optgroup label="AutoCAD">
                       <option>Dallas Cowboys</option>
                       <option>New York Giants</option>
                       <option>Philadelphia Eagles</option>
                       <option>Washington Redskins</option>
                     </optgroup>
                     <optgroup label="SolidWorks">
                       <option>Chicago Bears</option>
                       <option>Detroit Lions</option>
                       <option>Green Bay Packers</option>
                       <option>Minnesota Vikings</option>
                     </optgroup>
                     <optgroup label="NFC SOUTH">
                       <option>Atlanta Falcons</option>
                       <option>Carolina Panthers</option>
                       <option>New Orleans Saints</option>
                       <option>Tampa Bay Buccaneers</option>
                     </optgroup>
                  </select>
               </div>

                 </div>

                 <div class="col-md-12 float-left">
                     <div class="form-group">
                 <textarea class="form-control rounded-0" rows="3" placeholder="Whats your desire"></textarea>
              </div>
                </div>


                 <div class="col-md-6 float-left">
                     <div class="input-group mb-3 text-left">

                  <select data-placeholder="Select Your Profession" class="chosen-select ec-select my_select_box" tabindex="5">
                     <option value="">--How will this help--</option>
                     <option value="">Self Development</option>
                     <option value="">Exam Preparation</option>
                     <option value="">Its in Syllabus</option>
                     <option value="">Office Project</option>
                  </select>
               </div>
               </div>
               <div class="col-md-6 float-left">
                   <div class="input-group mb-3">
               <input type="file" class="form-control rounded-0" multiple placeholder="Attachments">
              </div>
              </div>



               <div class="col-md-12 float-left">
                    <div class="input-group my-4">
                    <label class="ec-checkbox">
                      <input type="checkbox" name="checkbox">
                      <span class="ec-checkbox__control"></span>
                      <span class="ec-checkbox__lebel text-left">
                        I agree to the
                        <a href="page-terms-and-privacy-policy.html" class="text-primary" target="_blank">
                          terms and conditions.
                        </a>
                      </span>
                    </label>
                    </div>

               </div>
               <div class="col-md-12 float-left">

                    <button class="btn btn-primary px-5">Submit Now</button>

               </div>


             </form>
           </div>
         </div>
       </div> <!-- END row-->
     </div> <!-- END container-->
   </section>


@endsection
