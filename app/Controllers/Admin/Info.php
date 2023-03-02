<?php

namespace App\Controllers\admin;

use App\Controllers\BaseController;
use CodeIgniter\Controller;
use Faker\Provider\Base;

class Info extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'Informasi BBQ',
            'info'  => $this->InfoModel->getInfo(),
            'isi'   => 'admin/info/v_list',
        ];;
        setlocale(LC_TIME, 'id-ID', 'id_ID');
        $tgl = strftime("%A, %d %B %Y", strtotime('2021-2-2'));
        // dd($tgl);
        return view('layout/v_wrapper', $data);
    }

    public function add()
    {
        $data = [
            'title' => 'Input Informasi BBQ',
            'info'  => $this->InfoModel->getInfo(),
            'validation'    => $this->validation,
            'isi'   => 'admin/info/v_input',
        ];
        return view('layout/v_wrapper', $data);
    }

    public function simpan()
    {
        $validation = $this->validate(
            [
                'pamflet' => [
                    'rules' => 'uploaded[pamflet]|max_size[pamflet,2048]|mime_in[pamflet,image/jpg,image/jpeg,image/gif,image/png]',
                    'errors' => [
                        'uploaded'  => 'Pilih gambar terlebih dulu',
                        'mime_in'   => 'format file tidak sesuai',
                        'max_size'  => 'Ukuran gambar maximal 2 MB'
                    ]
                ]
            ]
        );
        if ($validation == FALSE) {
            return redirect()->to(base_url('Admin/info/add'))->withInput()->with('validation', $validation);
        } else {
            $filePamflet = $this->request->getFile('pamflet');
            // dd($filePamflet);
            // Pindahkan File ke Folser Assets/Uploads
            $filePamflet->move('template/img/info/');
            // Ambil nama file
            $namaPamflet = $filePamflet->getName();
            $data = array(
                'gelombang'             => $this->request->getPost('gelombang'),
                'tahun_ajar'           => $this->request->getPost('tahun_ajar'),
                'masa_daftar'          => $this->request->getPost('masa_daftar'),
                'biaya'                => $this->request->getPost('biaya'),
                'wa_konfirmasi'        => $this->request->getPost('wa_konfirmasi'),
                'rek_konfirmasi'        => $this->request->getPost('rek_konfirmasi'),
                'mulai_kbm'            => $this->request->getPost('mulai_kbm'),
                'launching'             => $this->request->getPost('launching'),
                'mabit'                 => $this->request->getPost('mabit'),
                'jalasah'               => $this->request->getPost('jalasah'),
                'talkshow'              => $this->request->getPost('talkshow'),
                'cp1'                   => $this->request->getPost('cp1'),
                'nama_cp1'              => $this->request->getPost('nama_cp1'),
                'cp2'                   => $this->request->getPost('cp2'),
                'nama_cp2'              => $this->request->getPost('nama_cp2'),
                // 'jadwal_kuliah'     => $upload->getRandomName(),
                'pamflet'               => $namaPamflet
            );
            // dd($data);
            $this->InfoModel->tambah($data);
            set_notifikasi_swal('success', 'Berhasil', 'Informasi telah di Tambah!');
            return redirect()->to(base_url('Admin/info'));
        }
    }

    public function edit($id_info)
    {
        $data = [
            'title'         => 'Edit Informasi BBQ',
            'info'          => $this->InfoModel->getInfo($id_info),
            'validation'    => $this->validation,
            'isi'           => 'admin/info/v_edit',
        ];
        return view('layout/v_wrapper', $data);
    }

    public function update($id_info)
    {
        $data = array(
            'id_info'               => $id_info,
            'gelombang'             => $this->request->getPost('gelombang'),
            'tahun_ajar'           => $this->request->getPost('tahun_ajar'),
            'masa_daftar'          => $this->request->getPost('masa_daftar'),
            'biaya'                => $this->request->getPost('biaya'),
            'wa_konfirmasi'        => $this->request->getPost('wa_konfirmasi'),
            'rek_konfirmasi'        => $this->request->getPost('rek_konfirmasi'),
            'mulai_kbm'            => $this->request->getPost('mulai_kbm'),
            'launching'             => $this->request->getPost('launching'),
            'mabit'                 => $this->request->getPost('mabit'),
            'jalasah'               => $this->request->getPost('jalasah'),
            'talkshow'              => $this->request->getPost('talkshow'),
            'cp1'                   => $this->request->getPost('cp1'),
            'nama_cp1'              => $this->request->getPost('nama_cp1'),
            'cp2'                   => $this->request->getPost('cp2'),
            'nama_cp2'              => $this->request->getPost('nama_cp2'),
        );
        // dd($data);
        $this->InfoModel->edit($data);
        set_notifikasi_swal('info', 'Berhasil', 'Informasi telah di diubah!');
        return redirect()->to(base_url('Admin/info'));
    }



    public function delete($id_info)
    {

        $this->InfoModel->hapus($id_info);
        set_notifikasi_swal('info', 'Berhasil', 'Informasi telah dihapus!');
        return redirect()->to(base_url('Admin/info'));
    }


    public function status_pendaftaran($id_info)
    {
        $data = array(
            'id_info'               => $id_info,
            'status_pendaftaran'    => $this->request->getPost('status_pendaftaran'),
        );
        $this->InfoModel->edit_status($data);
        return redirect()->to(base_url('Admin/info'));
    }

    public function update_time($id_info)
    {
        $data = array(
            'id_info'               => $id_info,
            'gelombang'             => $this->request->getPost('gelombang'),
            'tahun_ajar'           => $this->request->getPost('tahun_ajar'),
            'masa_daftar'          => $this->request->getPost('masa_daftar'),

        );
        // dd($data);
        $this->InfoModel->edit($data);
        set_notifikasi_toast('success', 'Informasi telah di diubah!');
        return redirect()->to(base_url('Admin/info'));
    }

    public function update_agenda($id_info)
    {
        $data = array(
            'id_info'               => $id_info,
            'mulai_kbm'            => $this->request->getPost('mulai_kbm'),
            'launching'             => $this->request->getPost('launching'),
            'mabit'                 => $this->request->getPost('mabit'),
            'jalasah'               => $this->request->getPost('jalasah'),
            'talkshow'              => $this->request->getPost('talkshow'),

        );
        // dd($data);
        $this->InfoModel->edit($data);
        set_notifikasi_toast('success', 'Informasi Agenda telah di diubah!');
        return redirect()->to(base_url('Admin/info'));
    }

    public function update_biaya($id_info)
    {
        $data = array(
            'id_info'               => $id_info,
            'biaya'            => $this->request->getPost('biaya'),
            'wa_konfirmasi'            => $this->request->getPost('wa_konfirmasi'),
            'rek_konfirmasi'            => $this->request->getPost('rek_konfirmasi'),


        );
        // dd($data);
        $this->InfoModel->edit($data);
        set_notifikasi_toast('success', 'Informasi Biaya telah di diubah!');
        return redirect()->to(base_url('Admin/info'));
    }

    public function update_pamflet($id_info)
    {
        $info = $this->InfoModel->getInfo($id_info);
        // unlink('template/img/info/' . $info['pamflet']);
        $validation = $this->validate(
            [
                'pamflet' => [
                    'rules' => 'uploaded[pamflet]|max_size[pamflet,2048]|mime_in[pamflet,image/jpg,image/jpeg,image/gif,image/png]',
                    'errors' => [
                        'uploaded'  => 'Pilih gambar terlebih dulu',
                        'mime_in'   => 'format file tidak sesuai',
                        'max_size'  => 'Ukuran gambar maximal 2 MB'
                    ]
                ]
            ]
        );
        if ($validation == FALSE) {
            set_notifikasi_toast('warning', 'Gagal', 'Pamflet gagal di ubah!');
            return redirect()->to(base_url('Admin/info'));
        } else {
            $filePamflet = $this->request->getFile('pamflet');
            // dd($filePamflet);
            // Pindahkan File ke Folser Assets/Uploads
            $filePamflet->move('template/img/info/');
            // Ambil nama file
            $namaPamflet = $filePamflet->getName();
            $data = array(
                'id_info'         => $id_info,
                'pamflet'               => $namaPamflet
            );
            // dd($data);
            $this->InfoModel->edit($data);
            set_notifikasi_toast('success', 'Informasi Biaya telah di diubah!');
            return redirect()->to(base_url('Admin/info'));
        }
    }

    public function update_cp($id_info)
    {
        $data = array(
            'id_info'               => $id_info,
            'cp1'                   => $this->request->getPost('cp1'),
            'nama_cp1'              => $this->request->getPost('nama_cp1'),
            'cp2'                   => $this->request->getPost('cp2'),
            'nama_cp2'              => $this->request->getPost('nama_cp2'),
        );
        // dd($data);
        $this->InfoModel->edit($data);
        set_notifikasi_toast('success', 'Informasi Narahubung telah di diubah!');
        return redirect()->to(base_url('Admin/info'));
    }
}
