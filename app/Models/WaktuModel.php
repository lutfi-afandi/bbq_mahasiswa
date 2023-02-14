<?php

namespace App\Models;

use CodeIgniter\Model;

class WaktuModel extends Model
{
    protected $table = 'waktu';


    public function getWaktu($id_waktu = false)
    {
        if ($id_waktu == false) {
            return $this->table($this->table)
                ->orderBy('id_waktu', 'ASC')
                ->get()
                ->getResultArray();
        } else {
            return $this->table($this->table)
                ->where('id_waktu', $id_waktu)
                ->get()
                ->getRowArray();
        }
    }
}
