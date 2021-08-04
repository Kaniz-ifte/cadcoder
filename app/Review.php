<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Review extends Model
{

     protected $fillable = [
        'course_id', 'text','is_active','rating','user_id'
    ];

}
