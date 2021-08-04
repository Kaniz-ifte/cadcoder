<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Section extends Model
{
     protected $fillable = [
        'title','root','key','input_array','value','order','is_active'
    ];
}
