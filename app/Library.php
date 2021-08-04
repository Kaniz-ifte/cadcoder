<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Library extends Model
{
     protected $fillable = [
         'title','lecture_id','order','is_active'
     ];

}
