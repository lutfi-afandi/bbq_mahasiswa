<?php

namespace App\Controllers\admin;

use App\Controllers\BaseController;
use CodeIgniter\Controller;
use Faker\Provider\Base;

class JadwalTutor extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'Jadwal Tutor',
            'jadwal'    => $this->JadwalModel->getJadwal(),
            'tutor'     => $this->UserModel->getTutor(),
            'waktu'     => $this->JadwalModel->getWaktu(),
            'isi'   => 'admin/tutor/v_jadwal',
        ];
        return view('layout/v_wrapper', $data);
    }

    public function add()
    {
        $data = array(
            'id_tutor'    => $this->request->getPost('id_tutor'),
            'waktu_id'    => $this->request->getPost('waktu_id'),
            'gel_jadwal'    => $this->request->getPost('gel_jadwal'),
        );

        $this->JadwalModel->tambah($data);
        set_notifikasi_swal('success', 'Berhasil', 'Jadwal Tutor Berhasil di Tambah!');
        return redirect()->to(base_url('Admin/JadwalTutor/'));
    }

    public function ubahdata($id_jadwal)
    {
        $data = array(
            'id_jadwal' => $id_jadwal,
            'id_tutor'    => $this->request->getPost('id_tutor'),
            'waktu_id'    => $this->request->getPost('waktu_id'),
        );

        $this->JadwalModel->edit($data);
        set_notifikasi_swal('success', 'Berhasil', 'Jadwal Tutor Berhasil di Ubah!');
        return redirect()->to(base_url('Admin/JadwalTutor/'));
    }

    public function delete($id_jadwal)
    {
        $data = [
            'id_jadwal'   => $id_jadwal,
        ];
        $this->JadwalModel->hapus($data);
        set_notifikasi_swal('success', 'Berhasil', 'Peserta telah dihapus!');
        return redirect()->to(base_url('Admin/JadwalTutor'));
    }

    public function kelompok($id_jadwal)
    {
        $data = [
            'title' => 'Kelompok ',
            'jadwal'    => $this->JadwalModel->getJadwal($id_jadwal),
            'peserta_baru'  => $this->PesertaModel->getPeserta_baru(),
            'peserta_kbm'   => $this->PesertaModel->getPeserta_kbm($id_jadwal),
            'isi'   => 'admin/tutor/v_kelompok',
        ];

        // dd($data['peserta_kbm']);
        return view('layout/v_wrapper', $data);
    }

    public function tambah_kelompok($id_jadwal)
    {
        $checkbox = $this->request->getPost('id_peserta[]');
        // dd(count($checkbox));
        for ($i = 0; $i < count($checkbox); $i++) {
            $id_peserta = $checkbox[$i];
            // dd($id_peserta);
            $this->JadwalModel->inserKelompok($id_jadwal, $id_peserta);
        }
        set_notifikasi_swal('success', 'Berhasil', 'Peserta telah ditambahkan!');
        return redirect()->to('Admin/JadwalTutor/kelompok/' . $id_jadwal);
    }

    public function hapusDari($id_kelompok, $id_jadwal)
    {
        $this->JadwalModel->delete_dariKelompok($id_kelompok);
        set_notifikasi_toast('success',  'Peserta telah dihapus!');
        return redirect()->to(base_url('Admin/JadwalTutor/kelompok/' . $id_jadwal));
    }
}
