<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CrudInput extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function baseInputs()
    {
        return $this->hasMany(BaseInput::class, "base_input_id", "id");
    }
}
