<?php

namespace App\Controllers\admin;

use App\Controllers\BaseController;
use Faker\Provider\Base;

class User extends BaseController
{

    public function index()
    {
        $data = [
            'title' => 'Data User',
            'isi'   => 'admin/user/v_list',
            'user'   => $this->UserModel->getUser(),
        ];
        return view('layout/v_wrapper', $data);
    }

    public function add()
    {
        $data = [
            'title' => 'Tambah User',
            'isi'   => 'admin/user/v_tambah',
            'validation' => \Config\Services::validation(),
        ];
        // dd($data['validation']);
        return view('layout/v_wrapper', $data);
    }

    public function tambah()
    {
        $valid = $this->validate([
            'username'  => [
                'label' => 'Username',
                'rules'  =>  'required|is_unique[user.username]',
                'errors' => [
                    'required' => '{field} wajib diisi!',
                    'is_unique' => '{field} sudah ada',
                ]
            ],

            'nama_user'  => [
                'label' => 'Nama User',
                'rules'  =>  'required',
                'errors' => [
                    'required' => '{field} wajib diisi!',
                ]
            ],
            'jk_user'  => [
                'label' => 'Jenis Kelamin User',
                'rules'  =>  'required',
                'errors' => [
                    'required' => '{field} wajib diisi!',
                ]
            ],
            'no_wa'  => [
                'label' => 'Nomor WA User',
                'rules'  =>  'required',
                'errors' => [
                    'required' => '{field} wajib diisi!',
                ]
            ],
        ]);

        if ($valid) {
            $data = [
                'username'  => $this->request->getPost('username'),
                'password'  => $this->request->getPost('username'),
                'nama_user'  => $this->request->getPost('nama_user'),
                'jk_user'  => $this->request->getPost('jk_user'),
                'no_wa'  => $this->request->getPost('no_wa'),
                'level'  => '1',
                'keterangan_user'  => $this->request->getPost('keterangan_user'),
            ];
            // dd($data);
            $this->UserModel->tambah($data);
            session()->setFlashdata('swal_text', 'Data berhasil Ditambahkan');
            session()->setFlashdata('swal_icon', 'success');
            session()->setFlashdata('swal_title', 'Berhasil');
            return redirect()->to(base_url('Admin/User'));
        } else {
            $validation = \Config\Services::validation();
            session()->setFlashdata('errors', \Config\Services::validation()->getErrors());
            return redirect()->to(base_url('Admin/User/add'))->withInput()->with('validation', $validation);
        }
    }

    public function ubahPassword($id_user)
    {
        $data = [
            'id_user' => $id_user,
            'password' => $this->request->getPost('pasbar'),
        ];
        // dd($data);
        $this->UserModel->editPassword($data);
        set_notifikasi_swal('info', 'Passwors', 'Berhasil di ubah!');
        return redirect()->to(base_url('Admin/User'));
    }

    public function ubahData($id_user)
    {
        $data = [
            'id_user' => $id_user,
            'username' => $this->request->getPost('username'),
            'nama_user'  => $this->request->getPost('nama_user'),
            'jk_user'  => $this->request->getPost('jk_user'),
            'no_wa'  => $this->request->getPost('no_wa'),
            'keterangan_user'  => $this->request->getPost('keterangan_user'),
        ];
        // dd($data);
        $this->UserModel->edit($data);
        set_notifikasi_swal('info', 'Data user', 'Berhasil mengubah data!');
        return redirect()->to(base_url('Admin/User'));
    }

    public function delete($id_user)
    {

        $jml_admin = $this->db->table('user')
            ->where('level', 1)
            ->countAllResults();
        $user = $this->UserModel->getUser($id_user);
        // dd($jml_admin);
        if ($user['level'] != "1") {
            $data = [
                'id_user'   => $id_user,
            ];
            $this->UserModel->hapus($data);
            session()->setFlashdata('pesan', 'Data Berhasil Dihapus!');
            return redirect()->to(base_url('Admin/User'));
        } elseif ($user['level'] == "1") {
            if (session()->get('username') == $user['username']) {
                set_notifikasi_swal('error', 'Gagal Menghapus', 'User Aktif tidak Bisa dihapus!');
                return redirect()->to(base_url('Admin/User'));
            } else {
                if ($jml_admin > 1 || $jml_admin == 1) {
                    $data = [
                        'id_user'   => $id_user,
                    ];
                    $this->UserModel->hapus($data);
                    set_notifikasi_swal('success', 'Berhasil', 'User telah dihapus!');
                    return redirect()->to(base_url('Admin/User'));
                } else {
                    set_notifikasi_swal('error', '<strong>Gagal Menghapus </strong>',$jml_admin. 'Jumlah Admin tidak boleh kurang dari 1!!');
                    return redirect()->to(base_url('Admin/User'));
                }
            }
        }
    }
}
