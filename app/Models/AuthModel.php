<?php

namespace App\Models;

use CodeIgniter\Model;

class AuthModel extends Model
{

    public function login_admin($username, $password)
    {
        return $this->db->table('user')->where([
            'username' => $username,
            'password'  => $password,
            'level'     => '1'
        ])->get()->getRowArray();
    }

    public function login_tutor($username, $password)
    {
        return $this->db->table('user')->where([
            'username' => $username,
            'password'  => $password,
            'level'     => '2'
        ])->get()->getRowArray();
    }

    public function login_peserta($username, $password)
    {
        return $this->db->table('peserta')->where([
            'npm_peserta' => $username,
            'password'  => $password
        ])->get()->getRowArray();
    }
}
