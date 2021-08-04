<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BaseInput extends Model
{
    protected $fillable = [
        'title', 'design_id', 'params', 'order', 'is_active'
    ];

    public function crudInput()
    {
        return $this->belongsTo(CrudInput::class, "base_input_id");
    }
}
