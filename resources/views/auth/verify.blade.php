@extends('layouts.app')

@section('content')


<section class="padding-y-100 bg-light">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 mx-auto">
                <div class="card shadow-v2">
                    <div class="card-header px-lg-5 border-bottom">
                        <h4 class="mt-4">
                            Verify Your Email Address
                        </h4>
                    </div>
                    <div class="card-body">
                        <div class="card-body">
                            @if (session('resent'))
                            <div class="alert alert-success" role="alert">
                                {{ __('A fresh verification link has been sent to your email address.') }}
                            </div>
                            @endif

                            {{ __('Before proceeding, please check your email for a verification link.') }}
                            {{ __('If you did not receive the email') }}, <a href="{{ route('verification.resend') }}">{{ __('click here to request another') }}</a>.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection
