<?php

namespace App\Models;

use CodeIgniter\Model;

class JurusanModel extends Model
{
    protected $table = 'jurusan';
    // kelas
    // kelas
    public function getJurusan()
    {
        return $this->table($this->table)
            ->orderBy('id_jurusan', 'ASC')
            ->get()
            ->getResultArray();
    }
}
