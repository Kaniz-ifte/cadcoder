<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ActivityLog extends Model
{
     protected $fillable = [
         'user_id','course_id','details','order','is_active'
     ];

}
