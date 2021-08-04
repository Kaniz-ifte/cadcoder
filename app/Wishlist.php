<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Wishlist extends Model
{
     protected $fillable = [
         'user_id','course_id','order','is_active'
     ];

}
