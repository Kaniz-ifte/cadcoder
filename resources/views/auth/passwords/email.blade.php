@extends('layouts.app')

@section('content')


 <section class="padding-y-100 bg-light">
   <div class="container">
      <div class="row">
        <div class="col-lg-6 mx-auto">
          <div class="card shadow-v2">
          <div class="card-header px-lg-5 border-bottom">
            <h4 class="mt-4">
              Get Your Password
            </h4>
          </div>
            <div class="card-body">

                 @if (session('status'))
                    <div class="alert alert-success" role="alert">
                         {{ session('status') }}
                    </div>
                 @endif

              <form method="POST" action="{{ route('password.email') }}" class="px-lg-5">
                       @csrf
               <p class="marginBottom-40">
                 Lost your password? Please enter your email address. You will receive a link to create a new password via email.
               </p>
               <div class="input-group input-group--focus marginBottom-40">
                  <div class="input-group-prepend">
                   <span class="input-group-text bg-white ti-email"></span>
                  </div>
                  <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }} order-left-0 pl-0" placeholder="Email" name="email" value="{{ old('email') }}" required>

                  @if ($errors->has('email'))
                      <span class="invalid-feedback" role="alert">
                         <strong>{{ $errors->first('email') }}</strong>
                      </span>
                  @endif

               </div>
               <button class="btn btn-block btn-primary mb-5">Send Password Reset Link</button>
              </form>
            </div>
          </div>
        </div>
      </div> <!-- END row-->
   </div> <!-- END container-->
 </section>

@endsection
