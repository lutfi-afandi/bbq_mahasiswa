<?php

namespace App\Controllers\admin;

use App\Controllers\BaseController;
use Faker\Provider\Base;

class Tutor extends BaseController
{

    public function index()
    {
        $data = [
            'title' => 'Data Tutor',
            'isi'   => 'admin/tutor/v_list',
            'tutor'   => $this->UserModel->getTutor(),
        ];
        // dd($data['tutor']);
        return view('layout/v_wrapper', $data);
    }

    public function add()
    {
        $data = [
            'title' => 'Tambah Tutor',
            'isi'   => 'admin/tutor/v_tambah',
            'validation' => \Config\Services::validation(),
        ];
        // dd($data['validation']);
        return view('layout/v_wrapper', $data);
    }

    public function tambah()
    {
        $valid = $this->validate([
            'username'  => [
                'label' => 'username',
                'rules'  =>  'required|is_unique[user.username]',
                'errors' => [
                    'required' => '{field} wajib diisi!',
                    'is_unique' => '{field} sudah ada',
                ]
            ],

            'nama_user'  => [
                'label' => 'Nama Tutor',
                'rules'  =>  'required',
                'errors' => [
                    'required' => '{field} wajib diisi!',
                ]
            ],
            'jk_user'  => [
                'label' => 'Jenis Kelamin Tutor',
                'rules'  =>  'required',
                'errors' => [
                    'required' => '{field} wajib diisi!',
                ]
            ],

            'no_wa'  => [
                'label' => 'Nomor WA Tutor',
                'rules'  =>  'required|is_natural',
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
                'level'  => "2",
                'keterangan_user'  => $this->request->getPost('keterangan_user'),
            ];
            // dd($data);
            $this->UserModel->tambah($data);
            session()->setFlashdata('swal_text', 'Data berhasil Ditambahkan');
            session()->setFlashdata('swal_icon', 'success');
            session()->setFlashdata('swal_title', 'Berhasil');
            return redirect()->to(base_url('Admin/Tutor'));
        } else {
            $validation = \Config\Services::validation();
            session()->setFlashdata('errors', \Config\Services::validation()->getErrors());
            return redirect()->to(base_url('Admin/Tutor/add'))->withInput()->with('validation', $validation);
        }
    }

    public function ubahPassword($id_user)
    {
        $data = [
            'id_user' => $id_user,
            'password' => $this->request->getPost('pasbar'),
        ];
        // dd($data);
        $this->UserModel->ubahPasswordtutor($data);
        set_notifikasi_swal('info', 'Password', 'Berhasil di ubah!');
        return redirect()->to(base_url('Admin/Tutor'));
    }

    public function ubahData($id_user)
    {
        $valid = $this->validate([


            'nama_user'  => [
                'label' => 'Nama Tutor',
                'rules'  =>  'required',
                'errors' => [
                    'required' => '{field} wajib diisi!',
                ]
            ],
            'jk_user'  => [
                'label' => 'Jenis Kelamin Tutor',
                'rules'  =>  'required',
                'errors' => [
                    'required' => '{field} wajib diisi!',
                ]
            ],

            'no_wa'  => [
                'label' => 'Nomor WA Tutor',
                'rules'  =>  'required|is_natural',
                'errors' => [
                    'required' => '{field} wajib diisi!',
                ]
            ],
        ]);

        if ($valid) {
            $data = [
                'id_user' => $id_user,
                'username' => $this->request->getPost('username'),
                'nama_user'  => $this->request->getPost('nama_user'),
                'jk_user'  => $this->request->getPost('jk_user'),
                'no_wa'  => $this->request->getPost('no_wa'),
                'level'  => "2",
                'keterangan_user'  => $this->request->getPost('keterangan_user'),
            ];
            // dd($data);
            $this->UserModel->edit($data);
            set_notifikasi_swal('info', 'Data tutor', 'Berhasil mengubah data!');
            return redirect()->to(base_url('Admin/Tutor'));
        } else {
            $validation = \Config\Services::validation();
            session()->setFlashdata('errors', \Config\Services::validation()->getErrors());
            return redirect()->to(base_url('Admin/Tutor/'))->withInput()->with('validation', $validation);
        }
    }

    public function delete($id_user)
    {
        $data = [
            'id_user'   => $id_user,
        ];
        $this->UserModel->hapus($data);
        set_notifikasi_swal('success', 'Berhasil', 'Tutor telah dihapus!');
        return redirect()->to(base_url('Admin/Tutor'));
    }

    public function delete_all()
    {
        $isi_tabel = $this->db->table('user')->where('level', '2')->countAllResults();
        // dd($isi_tabel);
        if ($isi_tabel > 0) {

            $this->db->query("DELETE FROM user WHERE level='2'");
            set_notifikasi_swal('success', 'Berhasil', 'Tutor telah dihapus Semua!');
            return redirect()->to(base_url('Admin/Tutor'));
        } else {
            set_notifikasi_swal('info', 'Informasi', 'Tidak Ada data!');
            return redirect()->to(base_url('Admin/Tutor'));
        }
    }
}
