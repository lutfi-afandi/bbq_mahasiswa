<?php

namespace App\Controllers\tutor;

use App\Controllers\BaseController;
use CodeIgniter\Controller;
use Faker\Provider\Base;

class Dashboard extends BaseController
{
    public function index()
    {
        $id_tutor = session()->get('id_user');
        $info = $this->db->query("SELECT * FROM info ORDER BY id_info DESC")->getRowArray();
        $warna     = [
            'fuchsia', 'success', 'primary', 'info', 'danger', 'warning',
        ];
        shuffle($warna);
        $data = [
            'title' => 'Dashboad Tutor',
            // 'jadwal'    => $this->JadwalModel->getJadwal_pertutor($id_tutor),
            'warna' => $warna[0],
            'info'  => $info,
            'isi'   => 'tutor/v_dashboard',
        ];

        $gelombang = $info['gelombang'];
        $tahun_ajar = $info['tahun_ajar'];

        $jadwalAll =  $this->JadwalModel->getJadwal_pertutor($id_tutor);

        $data['jadwal'] = array_filter($jadwalAll, function ($jadwal) use ($gelombang, $tahun_ajar) {
            return $jadwal['gel_jadwal'] == $gelombang &&
                $jadwal['tahun_ajar_jadwal'] == $tahun_ajar;
        });

        // dd($data['jadwal'], $jadwalAll);
        return view('layout/v_wrapper', $data);
    }
}
