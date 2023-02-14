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
        $warna     = [
            'fuchsia', 'success', 'primary', 'info', 'danger', 'warning',
        ];
        shuffle($warna);
        $data = [
            'title' => 'Dashboad Tutor',
            'jadwal'    => $this->JadwalModel->getJadwal_pertutor($id_tutor),
            'warna' => $warna[0],
            'isi'   => 'tutor/v_dashboard',
        ];
        // dd($data['jadwal'] );
        return view('layout/v_wrapper', $data);
    }
}
