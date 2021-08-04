<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Comment extends Model
{

     protected $fillable = [
        'text','is_active','video_id','user_id','image'
    ];

}
