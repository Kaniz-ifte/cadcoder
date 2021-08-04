<?php

namespace App;
use App\Lecture;

use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
     protected $fillable = [
         'title','banner','price','short_desc','description','type', 'order','is_active','instructor_id'
     ];

     public function instructor()
     {
          return $this->belongsTo('\App\User', 'instructor_id')->select(array('name', 'avatar'));
     }

     public function lectures()
     {
        return $this->hasMany('\App\Lecture');
     }

}
