<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CrudColumn extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function baseColumns()
    {
        return $this->hasMany(BaseColumn::class, "base_column_id", "id");
    }
}
