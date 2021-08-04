<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PrivacyPolicy extends Model
{

     protected $table = 'privacy_policy';
     
     protected $fillable = [
        'title','description', 'order','is_active'
    ];
}
