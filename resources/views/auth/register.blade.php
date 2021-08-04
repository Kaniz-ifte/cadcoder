@extends('layouts.app')

@section('content')

     <section class="padding-y-100 bg-light">
       <div class="container">
         <div class="row">
           <div class="col-lg-6 mx-auto">
             <div class="card shadow-v2">
              <div class="card-header border-bottom">
               <h4 class="mt-4">
                 Sign Up and Start Learning!
               </h4>
              </div>
               <div class="card-body">
                 <div class="row">
                   <div class="col my-2">
                     <button class="btn btn-block btn-facebook">
                      <i class="ti-facebook mr-1"></i>
                      <span>Facebook Sign in</span>
                    </button>
                   </div>
                   <div class="col my-2">
                     <button class="btn btn-block btn-google-plus">
                      <i class="ti-google mr-1"></i>
                      <span>Google Sign in</span>
                    </button>
                   </div>
                 </div>
                 <p class="text-center my-4">
                   OR
                 </p>
                 <form method="POST" action="{{ route('register') }}" class="px-lg-4">
                      @csrf
                   <div class="input-group input-group--focus mb-3">
                     <div class="input-group-prepend">
                       <span class="input-group-text bg-white ti-user"></span>
                     </div>
                     <input id="name" type="text" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }} border-left-0 pl-0" placeholder="Full Name" name="name" value="{{ old('name') }}" required autofocus>

                     @if ($errors->has('name'))
                         <span class="invalid-feedback" role="alert">
                             <strong>{{ $errors->first('name') }}</strong>
                         </span>
                     @endif

                   </div>

                   <div class="input-group input-group--focus mb-3">
                     <div class="input-group-prepend">
                       <span class="input-group-text bg-white ti-email"></span>
                     </div>

                     <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}  border-left-0 pl-0" placeholder="Email" name="email" value="{{ old('email') }}" required>

                     @if ($errors->has('email'))
                         <span class="invalid-feedback" role="alert">
                             <strong>{{ $errors->first('email') }}</strong>
                         </span>
                     @endif

                   </div>
                   <div class="input-group input-group--focus mb-3">
                     <div class="input-group-prepend">
                       <span class="input-group-text bg-white ti-lock"></span>
                     </div>

                     <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }} border-left-0 pl-0" placeholder="Password" name="password" required>

                     @if ($errors->has('password'))
                         <span class="invalid-feedback" role="alert">
                             <strong>{{ $errors->first('password') }}</strong>
                         </span>
                     @endif

                   </div>


                   <div class="input-group input-group--focus mb-3">
                     <div class="input-group-prepend">
                       <span class="input-group-text bg-white ti-lock"></span>
                     </div>

                     <input id="password-confirm" type="password" class="form-control border-left-0 pl-0" placeholder="Confirm Password" name="password_confirmation" required>

                   </div>


                   <div class="my-4">
                     <label class="ec-checkbox check-sm my-2 clearfix">
                       <input type="checkbox" name="checkbox" required>
                       <span class="ec-checkbox__control mt-1"></span>
                       <span class="ec-checkbox__lebel">
                         By signing up, you agree to our
                         <a target="_blank" href="{{route('terms-conditions')}}" class="text-primary">Terms of Use</a>
                          and
                         <a target="_blank" href="{{route('privacy-policy')}}" class="text-primary">Privacy Policy.</a>
                       </span>
                     </label>
                   </div>
                   <button type="submit" class="btn btn-block btn-primary">Register Now</button>
                   <p class="my-5 text-center">
                     Already have an account? <a href="{{route('login')}}" class="text-primary">Login</a>
                   </p>
                 </form>
               </div>
             </div>
           </div>
         </div> <!-- END row-->
       </div> <!-- END container-->
     </section>

@endsection
