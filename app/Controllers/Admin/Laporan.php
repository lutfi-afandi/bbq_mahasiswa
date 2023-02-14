<?php

namespace App\Controllers\admin;

use App\Controllers\BaseController;
use CodeIgniter\Controller;
use Faker\Provider\Base;

class Laporan extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'Laporan Tutor : ' . session()->get('nama_user'),
            'isi'   => 'admin/info/v_laporan',
            'laporan_tutor' => $this->LaporanModel->getLaporan_tutor(),
        ];

        // dd($data['jadwal']);
        return view('layout/v_wrapper', $data);
    }

    public function delete_all()
    {
        $isi_tabel = $this->db->table('laporan')->countAllResults();
        if ($isi_tabel > 0) {
            // Cara menghapus Semua data
            $checkbox = $this->request->getPost('id_laporan[]');
            // dd($checkbox);
            for ($i = 0; $i < count($checkbox); $i++) {
                $id_laporan = $checkbox[$i];
                // dd($checkbox[$i]);
                $laporan = $this->LaporanModel->getLaporan($id_laporan);
                // unlink('assets/uploads/laporan/' . $laporan['foto_laporan']);
                $this->LaporanModel->hapus($id_laporan);
            }

            set_notifikasi_swal('success', 'Berhasil', 'Laporan telah dihapus Semua!');
            return redirect()->to(base_url('Admin/Laporan'));
        } else {
            set_notifikasi_swal('info', 'Informasi', 'Tidak Ada data!');
            return redirect()->to(base_url('Admin/Laporan'));
        }
    }
}
