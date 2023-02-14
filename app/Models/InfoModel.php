<?php

namespace App\Models;

use CodeIgniter\Model;
use phpDocumentor\Reflection\Types\This;

class InfoModel extends Model
{
    // protected $table = 'info';
    public function getInfo($id_info = false)
    {
        if ($id_info) {
            return $this->db->table('info as i')
                ->where('id_info', $id_info)
                ->get()->getRowArray();
        } else {
            return $this->db->table('info as i')
                ->orderBy('id_info', 'DESC')
                ->get()->getRowArray();
        }
    }

    public function getInfoHome()
    {
        return $this->db->table('info as i')
            ->orderBy('id_info', 'DESC')
            ->get()->getRowArray();
    }

    public function tambah($data)
    {
        return $this->db->table("info")->insert($data);
    }

    public function edit($data)
    {
        $this->db->table('info')->where('id_info', $data['id_info'])
            ->update($data);
    }

    public function hapus($id_info)
    {
        $query = "delete from info where id_info = $id_info";
        return $this->db->query($query);
    }
    public function edit_status($data)
    {
        $this->db->table('info')->where('id_info', $data['id_info'])
            ->update($data);
    }

    public function getStatus()
    {
        return $this->db->table('info as i')
            ->orderBy('id_info', 'DESC')
            ->get()->getRowArray();
    }
}
