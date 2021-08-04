<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class ZoomLiveClass extends Model
{
     protected $fillable = [
         'title','course_id','meeting_id','meeting_password','starting_time', 'order','is_active','ending_time'
     ];
}
