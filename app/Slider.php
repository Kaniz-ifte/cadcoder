<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
     protected $fillable = [
        'slider_type_id','category','title','banner','button_text','url','order','is_active'
    ];
}
