<?php

namespace App\Controllers\tutor;

use App\Controllers\BaseController;
use CodeIgniter\Controller;
use Faker\Provider\Base;

use function PHPUnit\Framework\isEmpty;

class Laporan extends BaseController
{
    public function index()
    {
        $id_tutor = session()->get('id_user');



        $data = [
            'title' => 'Laporan Tutor : ' . session()->get('nama_user'),
            'isi'   => 'tutor/v_laporan',
            'laporan_tutor' => $this->LaporanModel->getLaporan_tutor($id_tutor),
        ];

        // dd($data['jadwal']);
        return view('layout/v_wrapper', $data);
    }

    public function add($id_tutor)
    {
        // dd($this->JadwalModel->getJadwal_pertutor($id_tutor));
        $data = [
            'title' => 'Laporan Tutor : ' . session()->get('nama_user'),
            'isi'   => 'tutor/v_tambah_laporan',
            'jadwal' => $this->JadwalModel->getJadwal_pertutor($id_tutor),
        ];

        // dd($data['jadwal']);
        return view('layout/v_wrapper', $data);
    }

    public function simpan()
    {
        setlocale(LC_TIME, "id-ID");
        $gelombang = $this->db->query("SELECT * FROM info ORDER BY id_info DESC")->getRowArray();
        $tanggal = $this->request->getPost('tanggal');
        $id_jadwal_tutor = $this->request->getPost('id_jadwal_tutor');
        $sudahAda = $this->LaporanModel->where([
            'tanggal' => $tanggal,
            'id_jadwal_tutor' => $id_jadwal_tutor
        ])->find();

        $validation = $this->validate([

            'foto_laporan'         => [
                'rules' => 'uploaded[foto_laporan]|max_size[foto_laporan,2048]|mime_in[foto_laporan,image/jpg,image/jpeg,image/gif,image/png]',
                'errors' => [
                    'uploaded'  => 'Pilih gambar terlebih dulu',
                    'mime_in'   => 'format file tidak sesuai',
                    'max_size'  => 'Ukuran gambar maximal 2 MB'
                ]
            ]
        ]);
        if ($validation == FALSE) {
            return redirect()->to(base_url('Tutor/Laporan'))->withInput()->with('validation', $validation);
        } else {
            if (!empty($sudahAda) == true) {
                set_notifikasi_swal('warning', 'Gagal Input', 'Laporan kelompok ini tanggal ' . strftime("%d %B %Y", strtotime($tanggal)) . ' sudah masuk!');
                return redirect()->to(base_url('Tutor/Laporan'));
            } else {

                $dir = 'assets/uploads/laporan/';
                $fileLaporan = $this->request->getFile('foto_laporan');

                $newname = "LaporanGelombang-" . $gelombang['gelombang'] . '-' . date('his') . '-' . $this->request->getPost('id_jadwal_tutor');
                $ext = $fileLaporan->getExtension();
                $fileLaporan->move($dir, $newname . '.' . $ext);
                $data = array(
                    'id_jadwal_tutor'   => $this->request->getPost('id_jadwal_tutor'),
                    'no_pertemuan'   => $this->request->getPost('no_pertemuan'),
                    'tanggal'   => $this->request->getPost('tanggal'),
                    'jumlah_peserta'   => $this->request->getPost('jumlah_peserta'),
                    'hadir'   => $this->request->getPost('hadir'),
                    'izin'   => $this->request->getPost('izin'),
                    'absen'   => $this->request->getPost('absen'),
                    'materi'   => $this->request->getPost('materi'),
                    'keterangan_laporan'   => $this->request->getPost('keterangan_laporan'),
                    'foto_laporan'     => $newname . "." . $ext
                );
                $this->LaporanModel->tambah($data);
                set_notifikasi_swal('success', 'Berhasil', 'Laporan ditambahkan!');
                return redirect()->to(base_url('Tutor/Laporan'));
            }
        }
    }

    public function delete($id_laporan)
    {
        $data = [
            'id_laporan'   => $id_laporan,
        ];
        $this->LaporanModel->delete($id_laporan);
        set_notifikasi_swal('success', 'Berhasil', 'Laporan telah dihapus!');
        return redirect()->to(base_url('Tutor/Laporan'));
    }
}
