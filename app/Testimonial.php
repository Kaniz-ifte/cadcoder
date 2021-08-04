<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Testimonial extends Model
{
     protected $fillable = [
        'name','quote','avatar','order','is_active'
    ];
}
