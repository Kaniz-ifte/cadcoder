<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Question extends Model
{
     protected $fillable = [
      'question','exam_id','option_1','option_2','option_3','option_4','correct_ans','order','is_active'
    ];
}
