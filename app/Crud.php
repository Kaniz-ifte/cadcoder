<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Crud extends Model
{
    protected $fillable = [
        'resource_path', 'controller', 'model', 'data_table', 'permission', 'crud_key_word', 'crud_key_word_plural', 'order', 'is_active'
    ];

    public function baseColumns()
    {
        return $this->belongsToMany(BaseColumn::class, "crud_columns", "base_column_id", 'crud_id');
    }

    public function baseInputs()
    {
        return $this->belongsToMany(BaseInput::class, "crud_inputs", "base_input_id", 'crud_id');
    }
}
