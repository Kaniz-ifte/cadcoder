<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SubscriptionPlan extends Model
{
     protected $fillable = [
         'title','subscription_id','validity','price','discount','order','is_active'
     ];
}
