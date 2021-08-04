<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserSocialMedia extends Model
{
     protected $fillable = [
         'user_id','facebook','twitter','instagram','linkedin','order','is_active'
     ];

}
