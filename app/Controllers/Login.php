<?php

namespace App\Controllers;

class Login extends BaseController
{

    public function __construct()
    {
        helper('form');
    }
    public function index()
    {
        $data = [
            'title' => 'Login',
            'validation' => $this->validation,
        ];
        return view('v_login', $data);
    }

    public function cek_login()
    {
        $username = $this->request->getPost('username');
        $password = $this->request->getPost('password');


        $valid = $this->validate([
            'username'  => [
                // 'label' => 'Username',
                'rule'  =>  'required',
                'errors' => [
                    'required' => '{field} wajib diisi!'
                ]
            ],
            'password'  => [
                // 'label' => 'Password',
                'rule'  =>  'required',
                'errors' => [
                    'required' => '{field} wajib diisi!'
                ]
            ],
        ]);
        if ($valid) {
            $cek_admin = $this->AuthModel->login_admin($username, $password);
            $cek_tutor = $this->AuthModel->login_tutor($username, $password);
            $cek_peserta = $this->AuthModel->login_peserta($username, $password);
            // jika dilihat di data sebagai admin
            if ($cek_admin) {
                session()->set('username', $cek_admin['username']);
                session()->set('id_user', $cek_admin['id_user']);
                session()->set('jk', $cek_admin['jk_user']);
                session()->set('nama_user', $cek_admin['nama_user']);
                session()->set('level', $cek_admin['level']);
                return redirect()->to(base_url('Admin/Dashboard'));
            }
            // jika dilihat di data sebagai tutor
            elseif ($cek_tutor) {
                session()->set('username', $cek_tutor['username']);
                session()->set('id_user', $cek_tutor['id_user']);
                session()->set('jk', $cek_tutor['jk_user']);
                session()->set('nama_user', $cek_tutor['nama_user']);
                session()->set('level', $cek_tutor['level']);
                return redirect()->to(base_url('Tutor/Dashboard'));
            }
            // jika dilihat di data sebagai peserrta
            elseif ($cek_peserta) {
                session()->set('id_peserta', $cek_peserta['id_peserta']);
                session()->set('username', $cek_peserta['npm_peserta']);
                session()->set('nama_user', $cek_peserta['nama_peserta']);
                session()->set('npm_peserta', $cek_peserta['npm_peserta']);
                session()->set('nama_peserta', $cek_peserta['nama_peserta']);
                session()->set('id_peserta', $cek_peserta['id_peserta']);
                session()->set('jk', $cek_peserta['jk']);
                session()->set('level', $cek_peserta['level']);
                return redirect()->to(base_url('Peserta/Dashboard'));
            }
            // jika tidak ada data
            else {
                set_notifikasi_swal('error', 'Login Gagal!', 'Username atau Password salah!!');
                return redirect()->to(base_url('Login'));
            }
        } else {
            // jika tidak valid
            // session()->setFlashdata('errors', \Config\Services::validation()->getErrors());
            return redirect()->to(base_url('Login'))->withInput()->with('validation', $this->validation);
        }
    }

    public function cek_login1()
    {

        if ($this->validate([
            'username'  => [
                // 'label' => 'Username',
                'rule'  =>  'required',
                'errors' => [
                    'required' => '{field} wajib diisi!'
                ]
            ],
            'password'  => [
                // 'label' => 'Password',
                'rule'  =>  'required',
                'errors' => [
                    'required' => '{field} wajib diisi!'
                ]
            ],
            'level'  => [
                // 'label' => 'Level',
                'rule'  =>  'required',
                'errors' => [
                    'required' => '{field} wajib dipilih!'
                ]
            ]
        ])) {
            // jika valid
            $level = $this->request->getPost('level');
            $username = $this->request->getPost('username');
            $password = $this->request->getPost('password');

            if ($level == 1) {
                $cek_admin = $this->AuthModel->login_admin($username, $password);
                // dd($cek_admin);
                if ($cek_admin) {
                    // jika data benar
                    session()->set('username', $cek_admin['username']);
                    session()->set('id_user', $cek_admin['id_user']);
                    session()->set('nama_user', $cek_admin['nama_user']);
                    session()->set('level', $cek_admin['level']);
                    return redirect()->to(base_url('admin/Dashboard'));
                } else {
                    session()->setFlashdata('errors', $this->getErrors);
                    return redirect()->to(base_url('Login'));
                }
            } elseif ($level == 2) {
                $cek_mhs = $this->AuthModel->login_tutor($username, $password);
                if ($cek_mhs) {
                    // jika data benar
                    session()->set('username', $cek_mhs['nim']);
                    session()->set('nama_user', $cek_mhs['nama_mhs']);
                    session()->set('foto', $cek_mhs['foto_mhs']);
                    session()->set('level', $level);
                    return redirect()->to(base_url('mhs'));
                } else {
                    session()->setFlashdata('pesan', 'Login Gagal!, Username atau Password salah!');
                    return redirect()->to(base_url('Login'));
                }
            } elseif ($level == 3) {
                $cek_dosen = $this->AuthModel->login_dosen($username, $password);
                if ($cek_dosen) {
                    // jika data benar
                    session()->set('id_dosen', $cek_dosen['id_dosen']);
                    session()->set('username', $cek_dosen['nidn']);
                    session()->set('nama_user', $cek_dosen['nama_dosen']);
                    session()->set('foto', $cek_dosen['foto_dsn']);
                    session()->set('level', $level);
                    return redirect()->to(base_url('dsn'));
                } else {
                    session()->setFlashdata('pesan', 'Login Gagal!, Username atau Password salah!');
                    return redirect()->to(base_url('Login'));
                }
            }
        } else {
            // jika tidak valid
            session()->setFlashdata('errors', \Config\Services::validation()->getErrors());
            return redirect()->to(base_url('Login'));
        }
    }

    public function logout()
    {
        session()->remove('log');
        session()->remove('username');
        session()->remove('nama_user');
        session()->remove('level');

        set_notifikasi_toast('info', 'Logout!!');
        return redirect()->to(base_url('Login'));
    }
}
