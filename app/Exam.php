<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Exam extends Model
{
     protected $fillable = [
       'title','banner','course_id','total_question','marks_per_question','date','negative_mark','duration','order','is_active'
     ];
}
