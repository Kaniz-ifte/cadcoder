@extends('layouts.app')

@section('content')

     <section class="padding-y-100 bg-light">
       <div class="container">
         <div class="row">
           <div class="col-lg-6 mx-auto">
             <div class="card shadow-v2">
              <div class="card-header border-bottom">
               <h4 class="mt-4">
                 Log In to Your Cadcoder Account!
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
                 <form  class="px-lg-4" method="POST" action="{{ route('login') }}">
                    @csrf
                   <div class="input-group input-group--focus mb-3">
                     <div class="input-group-prepend">
                       <span class="input-group-text bg-white ti-email"></span>
                     </div>
                     <input type="text" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }} border-left-0 pl-0" placeholder="Email" name="email" value="{{ old('email') }}" required autofocus>

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
                     <input type="password" class="border-left-0 pl-0 form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>

                     @if ($errors->has('password'))
                         <span class="invalid-feedback" role="alert">
                             <strong>{{ $errors->first('password') }}</strong>
                         </span>
                     @endif
                   </div>
                   <div class="d-md-flex justify-content-between my-4">
                     <label class="ec-checkbox check-sm my-2 clearfix">
                       <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}>
                       <span class="ec-checkbox__control"></span>
                       <span class="ec-checkbox__lebel">Remember Me</span>
                     </label>
                     <a href="{{ route('password.request') }}" class="text-primary my-2 d-block">Forgot password?</a>
                   </div>
                   <button class="btn btn-block btn-primary">Log In</button>
                   <p class="my-5 text-center">
                     Don’t have an account? <a href="{{route('register')}}" class="text-primary">Join</a>
                   </p>
                 </form>
               </div>
             </div>
           </div>
         </div> <!-- END row-->
       </div> <!-- END container-->
     </section>

@endsection
