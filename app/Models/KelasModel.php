<?php

namespace App\Models;

use CodeIgniter\Model;

class KelasModel extends Model
{
    protected $table = 'kelas';
    // kelas
    public function getKelas()
    {

        return $this->table($this->table)
            ->orderBy('id_kelas', 'ASC')
            ->get()
            ->getResultArray();
    }
}
