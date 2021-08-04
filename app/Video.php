<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Video extends Model
{

     protected $fillable = [
        'title','description','thumbnail','chapter_id','video_url_id','is_active','is_free','is_youtube'
    ];

}
