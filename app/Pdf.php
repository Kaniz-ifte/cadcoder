<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Pdf extends Model
{

     protected $fillable = [
        'title','is_active','video_id','pdf_link','thumbnail'
    ];

}
