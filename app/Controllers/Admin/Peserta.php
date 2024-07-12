<?php

namespace App\Controllers\admin;

use App\Controllers\BaseController;
use Faker\Provider\Base;


class Peserta extends BaseController
{

    public function index()
    {
        $data = [
            'title' => 'Data Peserta',
            'isi'   => 'admin/peserta/v_list',
            // 'peserta'   => $this->PesertaModel->getPeserta(),
            'info'    => $this->InfoModel->getInfo(),
            'peserta_baru'   => $this->PesertaModel->getPeserta_baru(),
        ];

        $pesertaAll =  $this->PesertaModel->getPeserta();
        $gelombang = isset($_GET['gelombang']) ? $_GET['gelombang'] : '';
        $tahun_ajar = isset($_GET['tahun_ajar']) ? $_GET['tahun_ajar'] : '';
        if (isset($_GET['tahun_ajar'])) {
            $data['peserta'] = array_filter($pesertaAll, function ($peserta) use ($gelombang, $tahun_ajar) {
                return $peserta['gelombang'] == $gelombang &&
                    $peserta['tahun_ajar'] == $tahun_ajar;
            });
            $data['tahun_ajar_dipilih'] = $tahun_ajar;
            $data['gelombang_dipilih'] = $gelombang;
        } else {
            $data['peserta'] = null;
            $data['tahun_ajar_dipilih'] = '';
            $data['gelombang_dipilih'] = '';
        }
        // dd($data['peserta']);
        return view('layout/v_wrapper', $data);
    }
    public function data_kbm()
    {
        $data = [
            'title' => 'Data Peserta',
            'isi'   => 'admin/peserta/v_kbm',
            // 'peserta_kbm'   => $this->PesertaModel->get_detailKbm(),
            'peserta_baru'   => $this->PesertaModel->getPeserta_baru(),
        ];

        $pesertaKbm =  $this->PesertaModel->get_detailKbm();
        $gelombang = isset($_GET['gelombang']) ? $_GET['gelombang'] : '';
        $tahun_ajar = isset($_GET['tahun_ajar']) ? $_GET['tahun_ajar'] : '';
        if (isset($_GET['tahun_ajar'])) {
            $data['peserta_kbm'] = array_filter($pesertaKbm, function ($peserta_kbm) use ($gelombang, $tahun_ajar) {
                return $peserta_kbm['gelombang'] == $gelombang &&
                    $peserta_kbm['tahun_ajar'] == $tahun_ajar;
            });
            $data['tahun_ajar_dipilih'] = $tahun_ajar;
            $data['gelombang_dipilih'] = $gelombang;
        } else {
            $data['peserta_kbm'] = null;
            $data['tahun_ajar_dipilih'] = '';
            $data['gelombang_dipilih'] = '';
        }

        // dd($data['peserta_kbm'], $pesertaKbm);
        return view('layout/v_wrapper', $data);
    }

    public function add()
    {
        $data = [
            'title' => 'Tambah Peserta',
            'isi'   => 'admin/peserta/v_tambah',
            'jurusan'   => $this->JurusanModel->getJurusan(),
            'kelas'   => $this->KelasModel->getKelas(),
        ];
        return view('layout/v_wrapper', $data);
    }

    public function edit($id_peserta)
    {
        $data = [
            'title' => 'Data Peserta',
            'isi'   => 'admin/peserta/v_edit',
            'jurusan'   => $this->JurusanModel->getJurusan(),
            'dosen'   => $this->db->query("SELECT * FROM dosen")->getResultArray(),
            'kelas'     => $this->KelasModel->getKelas(),
            'validation' => $this->validation,
            'peserta'   => $this->PesertaModel->getPeserta($id_peserta),
        ];

        return view('layout/v_wrapper', $data);
    }

    public function update($id_peserta)
    {
        $data = array(
            'id_peserta'        => $id_peserta,
            'npm_peserta'       => $this->request->getPost('npm_peserta'),
            'password'       => $this->request->getPost('npm_peserta'),
            'nama_peserta'      => $this->request->getPost('nama_peserta'),
            'nomor_wa'          => $this->request->getPost('nomor_wa'),
            'Jk'                => $this->request->getPost('Jk'),
            'id_jurusan'           => $this->request->getPost('id_jurusan'),
            'id_kelas'             => $this->request->getPost('id_kelas'),
            'kelancaran_mengaji'   => $this->request->getPost('kelancaran_mengaji'),
            'gelombang'   => $this->request->getPost('gelombang'),
            // 'jadwal_kuliah'     => $upload->getRandomName(),
        );
        $this->PesertaModel->edit($data);
        set_notifikasi_swal('success', 'Berhasil', 'Data Peserta Berhasil di Ubah!');
        return redirect()->to(base_url('Admin/Peserta/'));
    }




    public function delete($id_peserta)
    {
        $jadwal = $this->PesertaModel->getPeserta($id_peserta);
        // dd(unlink(".assets/uploads/" . $jadwal['jadwal_kuliah']));
        // unlink("assets/uploads/jadwal_peserta/" . $jadwal['jadwal_kuliah']);

        $data = [
            'id_peserta'   => $id_peserta,
        ];
        $this->PesertaModel->hapus($data);
        set_notifikasi_swal('success', 'Berhasil', 'Peserta telah dihapus!');
        return redirect()->to(base_url('Admin/Peserta'));
    }

    public function delete_all($gel = false)
    {
        $isi_tabel = $this->db->table('peserta')->countAllResults();
        if ($isi_tabel > 0) {
            // // Cara menghapus Semua data
            // $checkbox = $this->request->getPost('id_peserta[]');
            // // dd($checkbox);
            // for ($i = 0; $i < count($checkbox); $i++) {
            //     $id_peserta = $checkbox[$i];
            //     // dd($checkbox[$i]);
            //     $data = ['id_peserta' => $id_peserta];
            //     $this->PesertaModel->hapus($data);
            // }

            $this->db->query("DELETE FROM peserta Where gelombang = " . $gel);
            set_notifikasi_swal('info', 'Berhasil', 'Peserta Gelombang ' . $gel . ' telah dihapus Semua!');
            return redirect()->to(base_url('Admin/Peserta'));
        } else {
            set_notifikasi_swal('info', 'Informasi', 'Tidak Ada data!');
            return redirect()->to(base_url('Admin/Peserta'));
        }
    }

    public function keterangan($id_peserta)
    {
        $keterangan     = $this->request->getPost('keterangan');

        $this->db->query("UPDATE peserta SET keterangan = '$keterangan' WHERE id_peserta='$id_peserta'");
        set_notifikasi_toast('info', 'Status Bayar diubah!');
        return redirect()->to(base_url('Admin/Peserta'));
    }


    public function hasil_ujian($id_peserta)
    {
        $data = array(
            'id_peserta'        => $id_peserta,
            'makhroj'       => $this->request->getPost('makhroj'),
            'tajwid'       => $this->request->getPost('tajwid'),
            'pilgan'       => $this->request->getPost('pilgan'),
            'ket'       => $this->request->getPost('ket'),
            // 'jadwal_kuliah'     => $upload->getRandomName(),
        );
        $this->PesertaModel->edit($data);
        set_notifikasi_swal('success', 'Berhasil', 'Hasil Test Peserta Berhasil di Ubah!');
        return redirect()->to(base_url('Admin/Peserta/'));
    }
}
