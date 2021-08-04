@extends('layouts.app')

@section('content')


 <section class="padding-y-100 bg-light">
   <div class="container">
      <div class="row">
        <div class="col-lg-6 mx-auto">
          <div class="card shadow-v2">
          <div class="card-header px-lg-5 border-bottom">
            <h4 class="mt-4">
              Reset Password
            </h4>
          </div>
            <div class="card-body">
              <form method="POST" action="{{ route('password.update') }}" class="px-lg-5">
                       @csrf

                       <input type="hidden" name="token" value="{{ $token }}">

               <div class="input-group input-group--focus marginBottom-40">
                  <div class="input-group-prepend">
                   <span class="input-group-text bg-white ti-email"></span>
                  </div>

                  <input id="email" type="email" placeholder="Email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }} border-left-0 pl-0" name="email" value="{{ $email ?? old('email') }}" required autofocus>

                  @if ($errors->has('email'))
                      <span class="invalid-feedback" role="alert">
                         <strong>{{ $errors->first('email') }}</strong>
                      </span>
                  @endif

               </div>

               <div class="input-group input-group--focus marginBottom-40">
                  <div class="input-group-prepend">
                   <span class="input-group-text bg-white ti-lock"></span>
                  </div>

                  <input id="password" type="password" placeholder="Password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }} border-left-0 pl-0" name="password"  required>

                  @if ($errors->has('password'))
                      <span class="invalid-feedback" role="alert">
                         <strong>{{ $errors->first('password') }}</strong>
                      </span>
                  @endif

               </div>

               <div class="input-group input-group--focus marginBottom-40">
                  <div class="input-group-prepend">
                   <span class="input-group-text bg-white ti-lock"></span>
                  </div>

                  <input id="password-confirm" type="password" placeholder="Password" class="form-control border-left-0 pl-0" name="password_confirmation"  required>

               </div>


               <button class="btn btn-block btn-primary mb-5">Reset Password</button>
              </form>
            </div>
          </div>
        </div>
      </div> <!-- END row-->
   </div> <!-- END container-->
 </section>

@endsection
