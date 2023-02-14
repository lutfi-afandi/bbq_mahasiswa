<?php

namespace App\Models;

use CodeIgniter\Model;
use phpDocumentor\Reflection\Types\This;

class JadwalModel extends Model
{
    // protected $table = 'jadwal_tutor';
    public function getJadwal($id_jadwal = false)
    {
        if ($id_jadwal) {
            return $this->db->table('jadwal_tutor as jad')
                ->join('user as t', 'jad.id_tutor=t.id_user', 'left')
                ->join('waktu as w', 'jad.waktu_id=w.id_waktu', 'left')
                ->where('id_jadwal', $id_jadwal)
                ->get()->getRowArray();
        } else {
            return $this->db->table('jadwal_tutor as jad')
                ->join('user as t', 'jad.id_tutor=t.id_user', 'left')
                ->join('waktu as w', 'jad.waktu_id=w.id_waktu', 'left')
                ->orderBy('jad.id_jadwal', 'DESC')
                ->get()->getResultArray();
        }
    }

    public function getJadwal_pertutor($id_tutor, $id_jadwal = false)
    {
        if ($id_jadwal) {
            return $this->db->table('jadwal_tutor as jad')
                ->join('user as t', 'jad.id_tutor=t.id_user', 'left')
                ->join('waktu as w', 'jad.waktu_id=w.id_waktu', 'left')
                ->where('jad.id_tutor', $id_tutor)
                ->where('jad.id_jadwal', $id_jadwal)
                ->get()->getRowArray();
        } else {
            return $this->db->table('jadwal_tutor as jad')
                ->join('user as t', 'jad.id_tutor=t.id_user', 'left')
                ->join('waktu as w', 'jad.waktu_id=w.id_waktu', 'left')
                ->where('jad.id_tutor', $id_tutor)
                ->get()->getResultArray();
        }
    }



    public function tambah($data)
    {
        return $this->db->table("jadwal_tutor")->insert($data);
    }

    public function edit($data)
    {
        $this->db->table('jadwal_tutor')->where('id_jadwal', $data['id_jadwal'])
            ->update($data);
    }

    public function hapus($data)
    {
        $this->db->table('jadwal_tutor')->where('id_jadwal', $data['id_jadwal'])
            ->delete($data);
    }

    // AMbil Waktu
    public function getWaktu()
    {
        return $this->db->table('waktu')
            ->get()->getResultArray();
    }

    public function inserKelompok($id_jadwal, $id_peserta)
    {
        $query = "insert into kelompok_kbm (jadwal_id, peserta_id) values ($id_jadwal, $id_peserta)";
        return $this->db->query($query);
    }

    public function delete_dariKelompok($id_kelompok)
    {
        $query = "delete from kelompok_kbm where id_kelompok = $id_kelompok";
        return $this->db->query($query);
    }
}
