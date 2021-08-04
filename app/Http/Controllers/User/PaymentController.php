<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class PaymentController extends Controller
{
    public function paymentSuccess($data)
    {
        //
    }

    public function paymentFailed($data)
    {
        # code...
    }


    public function paymentCancel($data)
    {
        # code...
    }
    public function paymentStripe(Request $request)
    {
        $user          = currentUser();
        $paymentMethod = $request->paymentMethod;
        try {
            $user->createOrGetStripeCustomer();
            $user->updateDefaultPaymentMethod($paymentMethod["id"]);
            $something = $user->charge(floatval($request->amount) * 100, $paymentMethod["id"]);
        } catch (\Exception $exception) {
            return $exception->getMessage();
        }
        return $something;
    }
}
