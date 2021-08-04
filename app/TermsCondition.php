<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TermsCondition extends Model
{
     protected $fillable = [
        'title','description', 'order','is_active'
    ];
}
