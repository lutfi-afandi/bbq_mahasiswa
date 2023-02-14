<?php

namespace App\Controllers\peserta;

use App\Controllers\BaseController;
use CodeIgniter\Controller;
use Faker\Provider\Base;

class Akun extends BaseController
{
    public function index()
    {
        $id_peserta = session()->get('id_peserta');
        $data = [
            'title' => 'Dashboad Peserta',
            'peserta'    => $this->PesertaModel->getPeserta($id_peserta),
            'isi'   => 'peserta/v_akun',
        ];
        // dd($data['peserta']);
        return view('layout/v_wrapper', $data);
    }

    public function ubahpassword($id_peserta)
    {
        $data = [
            'id_peserta' => $id_peserta,
            'password' => $this->request->getPost('pasbar'),
        ];
        // dd($this->UserModel->ubahPasswordpeserta($data));
        $this->PesertaModel->ubahPassword($data);
        set_notifikasi_swal('info', 'Password', 'Berhasil di ubah!');
        return redirect()->to(base_url('Peserta/Akun'));
    }
}
