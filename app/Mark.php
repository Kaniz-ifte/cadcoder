<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mark extends Model
{
     protected $fillable = [
      'user_id','exam_id','total_correct','total_wrong','total_question','not_answer','total_gain_mark'
    ];
}
