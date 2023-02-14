<?php

namespace App\Models;

use CodeIgniter\Model;
use phpDocumentor\Reflection\Types\This;

class KegiatanModel extends Model
{
    // protected $table = 'kegiatan';
    public function getKegiatan($id_kegiatan = false)
    {
        if ($id_kegiatan) {
            return $this->db->table('kegiatan as i')
                ->where('id_kegiatan', $id_kegiatan)
                ->get()->getRowArray();
        } else {
            return $this->db->table('kegiatan as i')
                ->get()->getResultArray();
        }
    }

    public function tambah($data)
    {
        return $this->db->table("kegiatan")->insert($data);
    }

    public function edit($data)
    {
        $this->db->table('kegiatan')->where('id_kegiatan', $data['id_kegiatan'])
            ->update($data);
    }

    public function hapus($id_kegiatan)
    {
        $query = "delete from kegiatan where id_kegiatan = $id_kegiatan";
        return $this->db->query($query);
    }
}
