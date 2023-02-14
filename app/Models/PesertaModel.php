<?php

namespace App\Models;

use CodeIgniter\Model;
use phpDocumentor\Reflection\Types\This;

class PesertaModel extends Model
{
    // protected $table = 'peserta';
    public function getPeserta($id_peserta = false)
    {
        if ($id_peserta) {
            return $this->db->table('peserta as p')
                ->join('kelas as k', 'p.id_kelas=k.id_kelas')
                ->join('jurusan as j', 'p.id_jurusan=j.id_jurusan')
                ->where('p.id_peserta', $id_peserta)
                ->get()->getRowArray();
        } else {
            return $this->db->table('peserta as p')
                ->join('kelas as k', 'p.id_kelas=k.id_kelas')
                ->join('jurusan as j', 'p.id_jurusan=j.id_jurusan')
                ->join('dosen as d', 'p.dosen_id=d.id_dosen', 'left')
                ->orderBy('npm_peserta', 'ASC')
                ->orderBy('kelas', 'ASC')
                ->orderBy('kode_jurusan', 'ASC')
                ->get()->getResultArray();
        }
    }

    // melihat sampai ke Nilai peserta dan buat di export
    public function get_detailKbm($id_peserta = false)
    {
        if ($id_peserta) {
            return $this->db->table('v_detailkbm as p')
                ->where('p.id_peserta', $id_peserta)
                ->get()->getRowArray();
        } else {
            return $this->db->table('v_detailkbm as p')
                ->orderBy('kode_jurusan', 'ASC')
                ->orderBy('npm_peserta', 'ASC')
                ->orderBy('kelas', 'ASC')
                ->get()->getResultArray();
        }
    }

    public function tambah($data)
    {
        return $this->db->table("peserta")->insert($data);
    }

    public function edit($data)
    {
        $this->db->table('peserta')->where('id_peserta', $data['id_peserta'])
            ->update($data);
    }

    public function hapus($data)
    {
        $this->db->table('peserta')->where('id_peserta', $data['id_peserta'])
            ->delete($data);
    }

    public function ubahPassword($data)
    {
        $query = "update peserta set password = "  . "'" . $data['password'] . "'" . " WHERE id_peserta = " . $data['id_peserta'];
        return $this->db->query($query);
    }


    // peserta yang yang sudah dikelompokkan
    // DAN UNTUK PRESENSI SERTA NILAI
    public function getPeserta_kbm($id_jadwal = false)
    {
        if ($id_jadwal) {
            // ini perkelompok tutornya
            // Untuk Nilai dan presensi juga pakai ini
            return $this->db->table('peserta as p')
                ->join('kelas as k', 'p.id_kelas=k.id_kelas')
                ->join('jurusan as j', 'p.id_jurusan=j.id_jurusan')
                ->join('kelompok_kbm as kl', 'p.id_peserta=kl.peserta_id', 'LEFT')
                ->join('jadwal_tutor as jad', 'kl.jadwal_id=jad.id_jadwal', 'LEFT')
                ->join('user as t', 'jad.id_tutor=t.id_user', 'LEFT')
                ->join('waktu as w', 'jad.waktu_id=w.id_waktu', 'LEFT')
                ->where('kl.jadwal_id', $id_jadwal)
                ->get()->getResultArray();
        } else {
            // ini untuk semua yang list peserta
            return $this->db->table('peserta as p')
                ->join('kelas as k', 'p.id_kelas=k.id_kelas')
                ->join('jurusan as j', 'p.id_jurusan=j.id_jurusan')
                ->join('kelompok_kbm as kl', 'p.id_peserta=kl.peserta_id', 'LEFT')
                ->join('jadwal_tutor as jad', 'kl.jadwal_id=jad.id_jadwal', 'LEFT')
                ->join('user as t', 'jad.id_tutor=t.id_user', 'LEFT')
                ->join('waktu as w', 'jad.waktu_id=w.id_waktu', 'LEFT')
                ->get()->getResultArray();
        }
    }

    // peserta yang yang belum dikelompokkan
    public function getPeserta_baru($id_peserta = false)
    {
        return $this->db->table('peserta as p')
            ->join('kelas as k', 'p.id_kelas=k.id_kelas')
            ->join('jurusan as j', 'p.id_jurusan=j.id_jurusan')
            ->join('kelompok_kbm as kl', 'p.id_peserta=kl.peserta_id', 'LEFT')
            ->join('jadwal_tutor as jad', 'kl.jadwal_id=jad.id_jadwal', 'LEFT')
            ->join('user as t', 'jad.id_tutor=t.id_user', 'LEFT')
            ->join('waktu as w', 'jad.waktu_id=w.id_waktu', 'LEFT')
            ->where('kl.id_kelompok is null')
            ->get()->getResultArray();
    }

    // input Nilai peserta
    public function updateNilai($data)
    {
        $this->db->table('kelompok_kbm')->where('id_kelompok', $data['id_kelompok'])
            ->update($data);
    }

    // Mendatpatkan id_jadwal dari id peserta
    public function get_idjadwal($id_peserta)
    {
        return $this->db->table('peserta as p')
            ->join('kelas as k', 'p.id_kelas=k.id_kelas')
            ->join('jurusan as j', 'p.id_jurusan=j.id_jurusan')
            ->join('kelompok_kbm as kl', 'p.id_peserta=kl.peserta_id', 'LEFT')
            ->join('jadwal_tutor as jad', 'kl.jadwal_id=jad.id_jadwal', 'LEFT')
            ->join('user as t', 'jad.id_tutor=t.id_user', 'LEFT')
            ->join('waktu as w', 'jad.waktu_id=w.id_waktu', 'LEFT')
            ->where('kl.peserta_id', $id_peserta)
            ->get()->getRowArray();
    }
}
