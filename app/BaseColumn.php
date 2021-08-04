<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BaseColumn extends Model
{
    protected $fillable = [
        'title', 'column_id', 'params', 'order', 'is_active'
    ];

    public function crudColumn()
    {
        return $this->belongsTo(CrudColumn::class, "base_column_id");
    }
}
