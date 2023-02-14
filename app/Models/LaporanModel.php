<?php

namespace App\Models;

use CodeIgniter\Model;
use phpDocumentor\Reflection\Types\This;

class LaporanModel extends Model
{
    protected $table = 'laporan';
    protected $DBGroup              = 'default';
    protected $primaryKey           = 'id_laporan';
    protected $allowedFields        = [
        'id_jadwal_tutor',  'no_pertemuan', 'tanggal',    'jumlah_peserta',  'hadir',   'izin', 'absen', 'materi',                                                     'keterangan_laporan',                                                                                                                        'foto_laporan'
    ];

    public function getLaporan($id_laporan = false)
    {
        if ($id_laporan) {
            return $this->db->table('laporan as l')
                ->join('jadwal_tutor AS j', 'l.id_jadwal_tutor=j.id_jadwal', 'left')
                ->join('user AS t', 'j.id_tutor=t.id_user', 'LEFT')
                ->join('waktu AS w', 'j.waktu_id=w.id_waktu', 'LEFT')
                ->where('id_laporan', $id_laporan)
                ->get()->getRowArray();
        } else {
            return $this->db->table('laporan as l')
                ->join('jadwal_tutor AS j', 'l.id_jadwal_tutor=j.id_jadwal', 'left')
                ->join('user AS t', 'j.id_tutor=t.id_user', 'LEFT')
                ->join(' waktu AS w', 'j.waktu_id=w.id_waktu', 'LEFT')
                ->get()->getResultArray();
        }
    }

    public function getLaporan_tutor($id_tutor = false)
    {
        if ($id_tutor) {
            return $this->db->table('laporan as l')
                ->join('jadwal_tutor AS j', 'l.id_jadwal_tutor=j.id_jadwal', 'left')
                ->join('user AS t', 'j.id_tutor=t.id_user', 'LEFT')
                ->join(' waktu AS w', 'j.waktu_id=w.id_waktu', 'LEFT')
                ->where('id_user', $id_tutor)
                ->get()->getResultArray();
        } else {
            return $this->db->table('laporan as l')
                ->join('jadwal_tutor AS j', 'l.id_jadwal_tutor=j.id_jadwal', 'left')
                ->join('user AS t', 'j.id_tutor=t.id_user', 'LEFT')
                ->join('waktu AS w', 'j.waktu_id=w.id_waktu', 'LEFT')
                ->get()->getResultArray();
        }
    }

    // public function getLaporan_for_delete($id_laporan)
    // {
    //     return $this->db->table('laporan as l')
    //         ->join('jadwal_tutor AS j', 'laporan.jadwal_tutor=j.id_jadwal', 'left')
    //         ->join('user AS t', 'j.id_tutor=t.id_user', 'LEFT')
    //         ->join('waktu AS w', 'j.waktu_id=w.id_waktu', 'LEFT')
    //         ->where('id_laporan', $id_laporan)
    //         ->get()->getRowArray();
    // }

    public function tambah($data)
    {
        return $this->db->table("laporan")->insert($data);
    }

    public function edit($data)
    {
        $this->db->table('laporan')->where('id_laporan', $data['id_laporan'])
            ->update($data);
    }

    public function hapus($id_laporan)
    {
        $query = "delete from laporan where id_laporan = " . $id_laporan;
        return $this->db->query($query);
    }
}
