@extends('layouts.app')

@section('content')
    <section class="padding-y-150">
        <div class="container">
            <div class="row">
                <div class="col-md-4 order-md-2 mb-4">
                    <h4 class="d-flex justify-content-between align-items-center mb-3">
                        <span>Your cart</span>
                        <span class="badge badge-primary badge-pill">3</span>
                    </h4>
                    <ul class="list-group mb-3">
                        <li class="list-group-item d-flex justify-content-between lh-condensed">
                            <div>
                                <h6 class="my-0">{{TrimString($course->title, 30, $end='...')}}</h6>
                                <span>Instructor: </span><small class="text-muted">{{$instructor->name}}</small>
                            </div>
                            <span class="text-muted">৳{{ $course->price }}</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between bg-light">
                            <div class="text-success">
                                <h6 class="my-0">Promo code</h6>
                                <small>EXAMPLECODE</small>
                            </div>
                            <span class="text-success">-$5</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between">
                            <span>Total (USD)</span>
                            <strong>৳{{ $course->price }}</strong>
                        </li>
                    </ul>

                    <form class="card p-2">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Promo code">
                            <div class="input-group-append">
                                <button type="submit" class="btn btn-primary">Redeem</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-md-8 order-md-1">
                    <h4 class="mb-3">Billing address</h4>
                    <form class="needs-validation" novalidate="" _lpchecked="1">
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="firstName">First name</label>
                                <input type="text" class="form-control" id="firstName" placeholder="" value=""
                                    required="required">
                                <div class="invalid-feedback">
                                    Valid first name is required.
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="lastName">Last name</label>
                                <input type="text" class="form-control" id="lastName" placeholder="" value="" required="">
                                <div class="invalid-feedback">
                                    Valid last name is required.
                                </div>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="username">Username</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">@</span>
                                </div>
                                <input type="text" class="form-control" id="username" placeholder="Username"
                                    value="{{ Auth::user()->name }}" required>
                                <div class="invalid-feedback" style="width: 100%;">
                                    Your username is required.
                                </div>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="email">Email <span class="text-muted">(Optional)</span></label>
                            <input type="email" class="form-control" id="email" placeholder="you@example.com"
                                value="{{ Auth::user()->email }}">
                            <div class="invalid-feedback">
                                Please enter a valid email address for shipping updates.
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="address">Address</label>
                            <input type="text" class="form-control" id="address" placeholder="1234 Main St" required="">
                            <div class="invalid-feedback">
                                Please enter your shipping address.
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="address2">Address 2 <span class="text-muted">(Optional)</span></label>
                            <input type="text" class="form-control" id="address2" placeholder="Apartment or suite">
                        </div>

                        <div class="row">
                            <div class="col-md-5 mb-3">
                                <label for="country">Country</label>
                                <select class="custom-select d-block w-100" id="country" required="">
                                    <option value="">Choose...</option>
                                    <option>United States</option>
                                </select>
                                <div class="invalid-feedback">
                                    Please select a valid country.
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="state">State</label>
                                <select class="custom-select d-block w-100" id="state" required="">
                                    <option value="">Choose...</option>
                                    <option>California</option>
                                </select>
                                <div class="invalid-feedback">
                                    Please provide a valid state.
                                </div>
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="zip">Zip</label>
                                <input type="text" class="form-control" id="zip" placeholder="" required="">
                                <div class="invalid-feedback">
                                    Zip code required.
                                </div>
                            </div>
                        </div>

                        <hr class="mb-4">
                        <div class="clearfix">
                            <label class="ec-checkbox check-xs mb-3 mr-4">
                                <input type="checkbox" name="checkbox">
                                <span class="ec-checkbox__control"></span>
                                <span class="ec-checkbox__lebel">Shipping address is the same as my billing address</span>
                            </label>
                        </div>

                        <div class="clearfix">
                            <label class="ec-checkbox check-xs mb-3 mr-4">
                                <input type="checkbox" name="checkbox">
                                <span class="ec-checkbox__control"></span>
                                <span class="ec-checkbox__lebel">Save this information for next time</span>
                            </label>
                        </div>
                        <hr class="mb-4">

                        <h4 class="mb-3">Payment</h4>

                        <div class="mb-2">
                            <label class="ec-radio radio-thin radio-sm">
                                <input type="radio" name="radio2">
                                <span class="ec-radio__control"></span>
                                <span class="ec-radio__label">Credit card</span>
                            </label>
                        </div>

                        <div class="mb-2">
                            <label class="ec-radio radio-thin radio-sm">
                                <input type="radio" name="radio2">
                                <span class="ec-radio__control"></span>
                                <span class="ec-radio__label">Debit card</span>
                            </label>
                        </div>

                        <div class="mb-2">
                            <label class="ec-radio radio-thin radio-sm">
                                <input type="radio" name="radio2">
                                <span class="ec-radio__control"></span>
                                <span class="ec-radio__label">Paypal</span>
                            </label>
                        </div>
                        <hr class="mb-4">
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="cc-name">Name on card</label>
                                <input type="text" class="form-control" id="cc-name" placeholder="" required="">
                                <small class="text-muted">Full name as displayed on card</small>
                                <div class="invalid-feedback">
                                    Name on card is required
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="cc-number">Credit card number</label>
                                <input type="text" class="form-control" id="cc-number" placeholder="" required="">
                                <div class="invalid-feedback">
                                    Credit card number is required
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 mb-3">
                                <label for="cc-expiration">Expiration</label>
                                <input type="text" class="form-control" id="cc-expiration" placeholder="" required="">
                                <div class="invalid-feedback">
                                    Expiration date required
                                </div>
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="cc-cvv">CVV</label>
                                <input type="text" class="form-control" id="cc-cvv" placeholder="" required="">
                                <div class="invalid-feedback">
                                    Security code required
                                </div>
                            </div>
                        </div>
                        <hr class="mb-4">
                        <div class="row">
                            <div class="col-md-6">
                                <button class="btn btn-secondary btn-lg btn-block" type="submit">Add Another Course</button>
                            </div>
                            <div class="col-md-6">
                                <a class="btn btn-primary btn-lg btn-block" @if(Auth::User()) onclick="PayNow({{user()->id}},{{$course->id}},{{$course->price}})" id="sslczPayBtn" token="if you have any token validation" postdata="your javascript arrays or objects which requires in backend" order="If you already have the transaction generated for current order"
                                    endpoint="{{ url('/pay-via-ajax') }}" @else href="/login" @endif>Buy Course</a>
                                {{-- <button class="btn btn-primary btn-lg btn-block" type="submit">Continue to checkout</button> --}}
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div> <!-- END container-->
    </section>
@endsection
