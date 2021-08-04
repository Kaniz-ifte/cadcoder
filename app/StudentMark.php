<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class StudentMark extends Model
{
     protected $fillable = [
         'exam_id', 'user_id',
     ];

}
