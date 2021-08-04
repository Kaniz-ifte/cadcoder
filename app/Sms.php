<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Sms extends Model
{

     protected $fillable = [
        'body','subscription_id',
    ];

}
