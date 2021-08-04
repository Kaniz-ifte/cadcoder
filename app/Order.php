<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
   protected $fillable = [
        'order_id','user_id','course_id','price','paid_start','paid_end','payment_date','is_paid','is_active','bank_transaction_id','status','device','currency'
   ];

   public function course()
   {
        return $this->belongsTo('\App\Course','course_id','id')->with(['instructor','lectures']);
   }


}
