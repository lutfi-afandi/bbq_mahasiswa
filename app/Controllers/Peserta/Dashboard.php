<?php

namespace App\Controllers\peserta;

use App\Controllers\BaseController;
use CodeIgniter\Controller;
use Faker\Provider\Base;

class Dashboard extends BaseController
{
    public function index()
    {
        $id_peserta = session()->get('id_peserta');
        $warna     = [
            'fuchsia', 'success', 'primary', 'info', 'danger', 'warning'
        ];
        shuffle($warna);
        $kelompok = $this->PesertaModel->get_idjadwal($id_peserta);
        // dd($kelompok);
        if (empty($kelompok)) {
            $data = [
                'title' => 'Daftar Peserta Kelompok',
                'tutor' => $kelompok,
                'peserta'   => $this->PesertaModel->getPeserta($id_peserta),
                'isi'   => 'peserta/v_belum',
            ];
        } else {
            $data = [
                'title' => 'Daftar Peserta Kelompok',
                'tutor' => $kelompok,
                'peserta'   => $this->PesertaModel->getPeserta($id_peserta),
                'peserta_kbm'   =>  $this->PesertaModel->getPeserta_kbm($kelompok['jadwal_id']),
                'isi'   => 'peserta/v_dashboard',
            ];
        }

        // dd($data['warna']);
        return view('layout/v_wrapper', $data);
    }
}
