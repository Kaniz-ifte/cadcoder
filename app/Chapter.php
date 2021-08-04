<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Chapter extends Model
{

     protected $fillable = [
        'title', 'description','is_active','subject_id','thumbnail'
    ];

}
