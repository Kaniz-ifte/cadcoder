{{-- Extends layout --}}
@extends('admin._layouts._default')

{{-- Content --}}
@section('content')


<div class="row">

    <div class="card card-custom gutter-b col-md-12">
        <div class="card-header">
            <h3 class="card-title">SSL Payment Gateway<span class="label label-lg label-inline label-success">
                </span>
            </h3>
            <div class="card-toolbar">
                <div class="example-tools justify-content-center">

                </div>
            </div>
        </div>

        <div class="card-body">

            <form class="form" id="msform" method="POST">
                @csrf
                <div class="form-group">
                    <label>Amount</label>
                    <input type="number" class="form-control" placeholder="100" name="amount" id="amount"
                        onchange="changeAmount()">
                </div>
                <input type="hidden" name="order_id" value="12323" id="order_id">
                <button class="btn btn-success" id="sslczPayBtn" token="if you have any token validation"
                    postdata="your javascript arrays or objects which requires in backend"
                    order="If you already have the transaction generated for current order" endpoint="/pay-via-ajax">
                    Pay Now
                </button>
            </form>
        </div>

    </div>
    <div class="card card-custom gutter-b col-md-12">
        <div class="card-header">
            <h3 class="card-title">Stripe Payment Gateway<span class="label label-lg label-inline label-success">
                </span>
            </h3>
            <div class="card-toolbar">
                <div class="example-tools justify-content-center">

                </div>
            </div>
        </div>

        <div class="card-body">

            <div class="form-box" id="login-box">
                <div class="body bg-gray">
                    <div class="form-group">
                        <label for="amount">Amount(USD):</label>
                        <input type="number" min="0" step="1" id="stripe-amount" class="form-control" placeholder="100"
                            required />
                    </div>
                    <div class="form-group">
                        <div id="card-element" class="form-control"></div>
                    </div>
                </div>
                <div class="footer">
                    <button type="submit" class="btn btn-success" id="card-button">
                        Pay Now
                    </button>
                </div>
            </div>
        </div>

    </div>
</div>


@endsection


@section('scripts')
<script>
    var obj = {};
    function changeAmount(){
        obj.amount = document.querySelector('#amount').value;
    }
    obj.order_id = document.querySelector('#order_id').value;
    obj.amount = document.querySelector('#amount').value;
    document.querySelector('#sslczPayBtn').postdata = obj;
    (function (window, document) {
            var loader = function () {
                var script = document.createElement("script"), tag = document.getElementsByTagName("script")[0];
                script.src = "https://sandbox.sslcommerz.com/embed.min.js?" + Math.random().toString(36).substring(7);
                tag.parentNode.insertBefore(script, tag);
            };
            window.addEventListener ? window.addEventListener("load", loader, false) : window.attachEvent("onload", loader);
        })(window, document);
</script>
<script src="https://js.stripe.com/v3/"></script>

<script>
    const stripe = Stripe("{{env('STRIPE_KEY')}}");
    const elements = stripe.elements();
    const cardElement = elements.create('card');
    cardElement.mount('#card-element');
    const cardButton = document.getElementById('card-button');
    // let amount = document.getElementById('stripe-amount').value;
    cardButton.addEventListener('click', async (e) => {
        const {
            paymentMethod,
            error
        } = await stripe.createPaymentMethod(
            'card', cardElement, {
                billing_details: {
                    name: "{{auth()->user()->name}}",
                    email: "{{ auth()->user()->email }}",
                    phone: "{{ auth()->user()->phone }}"
                }
            }
        );
        if (error) {
            document.getElementById("alert").classList.remove("hidden");
            document.getElementById("message").innerHTML = "Something went wrong!";
        } else {
            // amount = document.getElementById('amount').value;
            $.ajax({
                type: "POST",
                url: "{{ route('payment-stripe') }}",
                data: {
                    paymentMethod: paymentMethod,
                    amount: document.getElementById('stripe-amount').value,
                },
                success: function(data) {
                    document.getElementById("alert").classList.remove("hidden");
                    document.getElementById("alert").classList.remove("alert-danger");
                    document.getElementById("alert").classList.add("alert-success");
                    document.getElementById("message").innerHTML =
                        "Dontion complete successfully";
                },
                error: function(error) {
                    document.getElementById("alert").classList.remove("hidden");
                    document.getElementById("alert").classList.add("alert-danger");
                    document.getElementById("message").innerHTML = "Something went wrong!";
                }
            });
        }
    });
</script>
@parent
@endsection
