<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Subject extends Model
{

     protected $fillable = [
        'title','is_active','course_id','banner'
    ];

}
