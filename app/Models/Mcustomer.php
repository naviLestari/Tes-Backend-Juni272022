<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Mcustomer extends Model
{
    use HasFactory;
    protected $table = 'mcustomer2';
    protected $primarykey = 'Id';
    protected $fillable = ['nama', 'alamat', 'tanggal_lahir'];

    
}
