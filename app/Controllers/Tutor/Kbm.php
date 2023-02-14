<?php

namespace App\Controllers\tutor;

use App\Controllers\BaseController;
use CodeIgniter\Controller;
use Faker\Provider\Base;

class Kbm extends BaseController
{
    public function kelompok($id_jadwal)
    {
        $id_tutor = session()->get('id_user');
        $data = [
            'title' => 'Kelompok Tutor : ' . session()->get('nama_user'),
            'jadwal'    => $this->JadwalModel->getJadwal_pertutor($id_tutor, $id_jadwal),
            'peserta_kbm'   => $this->PesertaModel->getPeserta_kbm($id_jadwal),
            'isi'   => 'tutor/v_kbm',
        ];
        // dd($data['jadwal']);
        return view('layout/v_wrapper', $data);
    }

    public function nilai($id_jadwal)
    {
        $id_tutor = session()->get('id_user');
        $data = [
            'title' => 'Nilai Kelompok Tutor : ' . session()->get('nama_user'),
            'jadwal'    => $this->JadwalModel->getJadwal_pertutor($id_tutor, $id_jadwal),
            'na' => $this->PesertaModel->get_detailKbm(),
            'peserta_kbm'   => $this->PesertaModel->getPeserta_kbm($id_jadwal),
            'isi'   => 'tutor/v_nilai',
        ];
        // dd($data['jadwal']);
        return view('layout/v_wrapper', $data);
    }

    public function simpan_nilai($id_kelompok, $id_jadwal)
    {
        $id_tutor = session()->get('id_user');
        date_default_timezone_set('Asia/Jakarta');
        $tanggal =  date('Y-m-d H:i:s');
        $data = [
            'id_kelompok'       => $id_kelompok,
            'kehadiran'               =>    $this->request->getPost('kehadiran'),
            'mutabaah'               =>     $this->request->getPost('mutabaah'),
            'kegiatan_wajib'         =>     $this->request->getPost('kegiatan_wajib'),
            'uts'                    =>     $this->request->getPost('uts'),
            'sholat'                 =>     $this->request->getPost('sholat'),
            'tilawah'                =>     $this->request->getPost('tilawah'),
            'wudhu'                  =>     $this->request->getPost('wudhu'),
            'uas_tertulis'     =>     $this->request->getPost('uas_tertulis'),
            'created_at'       =>  $tanggal,
        ];
        $this->PesertaModel->updateNilai($data);
        set_notifikasi_swal('success', 'Berhasil', 'Nilai Berhasil di Update!');
        return redirect()->to(base_url('Tutor/Kbm/nilai/' . $id_jadwal));
    }

    public function absensi($id_jadwal)
    {
        $id_tutor = session()->get('id_user');
        $data = [
            'title' => 'Absensi Kelompok Tutor : ' . session()->get('nama_user'),
            'jadwal'    => $this->JadwalModel->getJadwal_pertutor($id_tutor, $id_jadwal),
            'peserta_kbm'   => $this->PesertaModel->getPeserta_kbm($id_jadwal),
            'isi'   => 'tutor/v_absensi',
        ];
        // dd($data['jadwal']);
        return view('layout/v_wrapper', $data);
    }

    public function simpan_absen($id_kelompok, $id_jadwal)
    {
        $id_tutor = session()->get('id_user');
        date_default_timezone_set('Asia/Jakarta');
        $tanggal =  date('Y-m-d H:i:s');
        $data = [
            'id_kelompok'       => $id_kelompok,
            'p1'               =>    $this->request->getPost('p1'),
            'p2'               =>    $this->request->getPost('p2'),
            'p3'               =>    $this->request->getPost('p3'),
            'p4'               =>    $this->request->getPost('p4'),
            'p5'               =>    $this->request->getPost('p5'),
            'p6'               =>    $this->request->getPost('p6'),
            'p7'               =>    $this->request->getPost('p7'),
            'p8'               =>    $this->request->getPost('p8'),
            'p9'               =>    $this->request->getPost('p9'),
            'p10'               =>    $this->request->getPost('p10'),
            'p11'               =>    $this->request->getPost('p11'),
            'p12'               =>    $this->request->getPost('p12'),
            'absen_at'       =>  $tanggal,
        ];
        $this->PesertaModel->updateNilai($data);
        set_notifikasi_swal('success', 'Berhasil', 'Presnsi Berhasil di Update!');
        return redirect()->to(base_url('Tutor/Kbm/absensi/' . $id_jadwal));
    }
}
