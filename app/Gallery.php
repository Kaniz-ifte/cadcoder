<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Gallery extends Model
{
     protected $table = "gallery";


     protected $fillable = [
        'image','order','is_featured','is_active'
    ];
}
