<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Lecture extends Model
{
     protected $fillable = [
         'title','course_id','video_url','order','is_active','length'
     ];

}
