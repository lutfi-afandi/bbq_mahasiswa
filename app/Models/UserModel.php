<?php

namespace App\Models;

use CodeIgniter\Model;
use phpDocumentor\Reflection\Types\This;

class UserModel extends Model
{
    // protected $table = 'user';
    public function getUser($id_user = false)
    {
        if ($id_user) {
            return $this->db->table('user as u')
                ->where('id_user', $id_user)
                ->where('level', '1')
                ->get()->getRowArray();
        } else {
            return $this->db->table('user as u')
                ->where('level', '1')
                ->get()->getResultArray();
        }
    }

    public function tambah($data)
    {
        return $this->db->table("user")->insert($data);
    }

    public function edit($data)
    {
        $this->db->table('user')->where('id_user', $data['id_user'])
            ->update($data);
    }

    public function hapus($data)
    {
        $this->db->table('user')->where('id_user', $data['id_user'])
            ->delete($data);
    }

    public function editPassword($data)
    {
        $this->db->table('user')->where('id_user', $data['id_user'])
            ->update($data);
    }
    public function ubahPasswordtutor($data)
    {
        $query = "update user set password = "  . "'" . $data['password'] . "'" . " WHERE id_user = " . $data['id_user'];
        return $this->db->query($query);
    }

    // GET TUTOR
    public function getTutor($id_user = false)
    {
        if ($id_user) {
            return $this->db->table('user as u')
                ->where('id_user', $id_user)
                ->where('level', '2')
                ->get()->getRowArray();
        } else {
            return $this->db->table('user as u')
                ->where('level', '2')
                ->orderBy('id_user', 'DESC')
                ->get()->getResultArray();
        }
    }
}
