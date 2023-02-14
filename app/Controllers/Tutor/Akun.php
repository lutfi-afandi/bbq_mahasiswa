<?php

namespace App\Controllers\tutor;

use App\Controllers\BaseController;
use CodeIgniter\Controller;
use Faker\Provider\Base;

class Akun extends BaseController
{
    public function index()
    {
        $id_tutor = session()->get('id_user');
        $data = [
            'title' => 'Dashboad Tutor',
            'tutor'    => $this->UserModel->getTutor($id_tutor),
            'isi'   => 'tutor/v_akun',
        ];
        // dd($data['tutor']);
        return view('layout/v_wrapper', $data);
    }

    public function ubahpassword($id_user)
    {
        $data = [
            'id_user' => $id_user,
            'password' => $this->request->getPost('pasbar'),
        ];
        // dd($this->UserModel->ubahPasswordtutor($data));
        $this->UserModel->ubahPasswordtutor($data);
        set_notifikasi_swal('info', 'Password', 'Berhasil di ubah!');
        return redirect()->to(base_url('Tutor/Akun'));
    }
}
