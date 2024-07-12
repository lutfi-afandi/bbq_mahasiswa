<?php

namespace App\Controllers\peserta;

use App\Controllers\BaseController;
use CodeIgniter\Controller;
use Faker\Provider\Base;

class Register extends BaseController
{
    public function index()
    {
        $dosen = $this->db->query("SELECT * FROM dosen")->getResultArray();
        $gelombang = $this->db->query("SELECT * FROM info ORDER BY id_info DESC")->getRowArray();
        $info   = $this->InfoModel->getStatus();
        // dd($gelombang['gelombang']);
        if ($info['status_pendaftaran'] != '1') {
            $data = [
                'title' => 'Pendaftaran Peserta',
            ];
            return view('peserta/v_tutup', $data);
        } else {
            $data = [
                'title' => 'Pendaftaran Peserta',
                'isi'   => 'peserta/v_register',
                'jurusan'   => $this->JurusanModel->getJurusan(),
                'kelas'     => $this->KelasModel->getKelas(),
                'dosen'     => $dosen,
                'gelombang'     => $gelombang['gelombang'],
                'validation' => $this->validation,
            ];

            // dd($data['gelombang']);
            return view('peserta/v_register', $data);
        }
    }

    public function add()
    {
        $gelombang = $this->db->query("SELECT * FROM info ORDER BY id_info DESC")->getRowArray();
        // dd($this->request->getPost('gelombang'));
        $validation = $this->validate([
            'npm_peserta'           => [
                'rules' => 'required|is_unique[peserta.npm_peserta]',
                'errors'    => [
                    'required'  => 'NPM harus diisi',
                    'is_unique' => 'NPM sudah terdaftar',

                ]
            ],
            'nama_peserta'          => [
                'rules' => 'required|alpha_space',
                'errors'    => [
                    'required'  => 'Nama harus diisi',
                    'alpha_space'     => 'Hanya boleh huruf'
                ]
            ],
            'nomor_wa'              => [
                'rules' => 'required|numeric',
                'errors'    => [
                    'required'  =>   'Nomor WA harus diisi',
                    'numeric' => 'Hanya boleh berisi angka'
                ]
            ],
            'Jk'                    => [
                'rules' => 'required',
                'errors'    => [
                    'required'  => 'Jenis Kelamin harus dipilih'
                ]
            ],
            'dosen_id'                    => [
                'rules' => 'required',
                'errors'    => [
                    'required'  => 'Dosen harus dipilih'
                ]
            ],
            'id_jurusan'                    => [
                'rules' => 'required',
                'errors'    => [
                    'required'  => 'Jurusan harus dipilih'
                ]
            ],
            'id_kelas'                    => [
                'rules' => 'required',
                'errors'    => [
                    'required'  => 'Kelas harus dipilih'
                ]
            ],
            'kelancaran_mengaji'    => [
                'rules' => 'required',
                'errors'    => [
                    'required'  => 'Kelancaran  harus dipilih'
                ]
            ],
            'gelombang'    => [
                'rules' => 'required',
                'errors'    => [
                    'required'  => 'Gelombang  harus dipilih'
                ]
            ],
            'jadwal_kuliah'         => [
                'rules' => 'uploaded[jadwal_kuliah]|max_size[jadwal_kuliah,2048]|mime_in[jadwal_kuliah,image/jpg,image/jpeg,image/gif,image/png]',
                'errors' => [
                    'uploaded'  => 'Pilih gambar terlebih dulu',
                    'mime_in'   => 'format file tidak sesuai',
                    'max_size'  => 'Ukuran gambar maximal 2 MB'
                ]
            ]
        ]);
        if ($validation == FALSE) {

            return redirect()->to(base_url('Peserta/Register'))->withInput()->with('validation', $validation);
        } else {
            $dir = 'assets/uploads/jadwal_peserta/';
            $fileJadwal = $this->request->getFile('jadwal_kuliah');
            // $fileJadwal->move('assets/uploads/jadwal_peserta/');
            // Ambil nama file
            // $namaJadwal = $fileJadwal->getName();

            $newname = "Gelombang-" . $gelombang['gelombang'] . '-' . date('his') . '-' . $this->request->getPost('npm_peserta');
            $ext = $fileJadwal->getExtension();
            $fileJadwal->move($dir, $newname . '.' . $ext);

            $data = array(
                'npm_peserta'       => $this->request->getPost('npm_peserta'),
                'password'          => $this->request->getPost('npm_peserta'),
                'nama_peserta'      => $this->request->getPost('nama_peserta'),
                'nomor_wa'          => $this->request->getPost('nomor_wa'),
                'jk'                => $this->request->getPost('Jk'),
                'id_jurusan'           => $this->request->getPost('id_jurusan'),
                'dosen_id'           => $this->request->getPost('dosen_id'),
                'id_kelas'             => $this->request->getPost('id_kelas'),
                'kelancaran_mengaji'   => $this->request->getPost('kelancaran_mengaji'),
                'gelombang'          => $this->request->getPost('gelombang'),
                'tahun_ajar'    => $gelombang['tahun_ajar'],
                // 'jadwal_kuliah'     => $upload->getRandomName(),
                'jadwal_kuliah'     => $newname . '.' . $ext
            );
            // dd($data);
            $this->PesertaModel->tambah($data);
            set_notifikasi_swal('success', 'Berhasil', 'Pendaftaran Berhasil!');
            return redirect()->to(base_url('Peserta/Register'));
        }
    }

    public function data_peserta()
    {
        $data = [
            'title' => 'Data Peserta Terdaftar',
            'jurusan'   => $this->JurusanModel->getJurusan(),
            'peserta'   => $this->PesertaModel->getPeserta_kbm(),
            'kelas'     => $this->KelasModel->getKelas(),
            'validation' => $this->validation,
        ];

        return view('peserta/v_data_peserta', $data);
    }
}
