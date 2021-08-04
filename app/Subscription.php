<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Subscription extends Model
{
     protected $fillable = [
         'title','description','banner','order','is_active'
     ];
}
