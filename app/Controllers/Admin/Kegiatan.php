<?php

namespace App\Controllers\admin;

use App\Controllers\BaseController;
use CodeIgniter\Controller;
use Faker\Provider\Base;

class Kegiatan extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'Kegiatan BBQ',
            'kegiatan'  => $this->KegiatanModel->getKegiatan(),
            'isi'   => 'admin/v_kegiatan',
        ];
        return view('layout/v_wrapper', $data);
    }

    public function add()
    {
        $validation = $this->validate(
            [
                'foto_kegiatan' => [
                    'rules' => 'uploaded[foto_kegiatan]|max_size[foto_kegiatan,2048]|mime_in[foto_kegiatan,image/jpg,image/jpeg,image/gif,image/png]',
                    'errors' => [
                        'uploaded'  => 'Pilih gambar terlebih dulu',
                        'mime_in'   => 'format file tidak sesuai',
                        'max_size'  => 'Ukuran gambar maximal 2 MB'
                    ]
                ]
            ],
            [
                'nama_kegiatan' => [
                    'rules'     => 'required',
                    'errors'    => [
                        'required'  => 'Nama Kegiatan wajib diisi!'
                    ]
                ]
            ],
        );
        // dd($this->request->getPost('deskripsi'));

        if ($validation == FALSE) {
            set_notifikasi_swal('error', 'Gagal', 'Kegiatan tidak dapat ditambah di Tambah!');
            return redirect()->to(base_url('Admin/Kegiatan/add'));
        } else {
            $fileKegiatan = $this->request->getFile('foto_kegiatan');
            $fileKegiatan->move('template/img/kegiatan/');
            // Ambil nama file
            $namaKegiatan = $fileKegiatan->getName();
            $data = array(
                'nama_kegiatan'              => $this->request->getPost('nama_kegiatan'),
                'deskripsi'              => $this->request->getPost('deskripsi'),
                'foto_kegiatan'               => $namaKegiatan
            );
            // dd($data);
            $this->KegiatanModel->tambah($data);
            set_notifikasi_swal('success', 'Berhasil', 'Informasi telah di Tambah!');
            return redirect()->to(base_url('Admin/Kegiatan'));
        }
    }

    public function delete($id_kegiatan)
    {

        $this->KegiatanModel->hapus($id_kegiatan);
        set_notifikasi_swal('info', 'Berhasil', 'Kegiatan telah dihapus!');
        return redirect()->to(base_url('Admin/Kegiatan'));
    }
}
