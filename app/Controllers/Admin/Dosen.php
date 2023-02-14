<?php

namespace App\Controllers\admin;

use App\Controllers\BaseController;
use CodeIgniter\Controller;
use Faker\Provider\Base;

class Dosen extends BaseController
{
    public function index()
    {
        $dosen = $this->db->query("SELECT * FROM dosen")->getResultArray();
        // dd($dosen);
        $data = [
            'title' => 'Data Dosen  : ',
            'isi'   => 'admin/dosen/v_list',
            'dosen' => $dosen,
        ];

        // dd($data['jadwal']);
        return view('layout/v_wrapper', $data);
    }

    public function add()
    {
        $nama_dosen = $this->request->getPost('nama_dosen');
        // dd($nama_dosen);
        $this->db->query("INSERT INTO dosen (nama_dosen) Value ('$nama_dosen')");

        set_notifikasi_toast('success', 'Berhasil Menambah dosen');
        return redirect()->to(base_url('admin/dosen'));
    }

    public function ubahdata($id_dosen)
    {
        $nama_dosen = $this->request->getPost('nama_dosen');
        // dd($nama_dosen);
        $this->db->query("UPDATE  dosen set nama_dosen = '$nama_dosen' WHERE id_dosen=$id_dosen");

        set_notifikasi_toast('success', 'Berhasil mengubah dosen');
        return redirect()->to(base_url('admin/dosen'));
    }

    public function delete($id_dosen)
    {
        $this->db->query("DELETE FROM dosen where id_dosen = $id_dosen");

        set_notifikasi_toast('info', 'Berhasil menghapus dosen');
        return redirect()->to(base_url('admin/dosen'));
    }
}
