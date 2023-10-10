<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Report extends Model
{
    // Nama tabel yang akan digunakan oleh model
    protected $table = 'Report';

    // Nama kolom primary key (biasanya 'id', tetapi dapat disesuaikan)
    protected $primaryKey = 'id';

    // Kolom-kolom yang dapat diisi (fillable) secara mass assignment
    protected $fillable = [
        'id',
        'id_alat',
        'nama',
        'posisi',
        'ketinggian',
        'warna',
        'status',
        'notifikasi',
'alarm',

        // ... tambahkan kolom-kolom lain yang sesuai
    ];
}
