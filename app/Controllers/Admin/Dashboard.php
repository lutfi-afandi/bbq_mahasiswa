<?php

namespace App\Controllers\admin;

use App\Controllers\BaseController;
use CodeIgniter\Controller;
use Faker\Provider\Base;

class Dashboard extends BaseController
{
    public function index()
    {

        // $jk = $this->db->query("SELECT jk FROM peserta GROUP BY jk")->getResultArray();
        $laki3 = $this->db->table('peserta')->where('jk', 'Laki-Laki')->where('gelombang', '3')->countAllResults();
        $laki1 = $this->db->table('peserta')->where('jk', 'Laki-Laki')->where('gelombang', '1')->countAllResults();
        $laki2 = $this->db->table('peserta')->where('jk', 'Laki-Laki')->where('gelombang', '2')->countAllResults();
        $perempuan3 = $this->db->table('peserta')->where('jk', 'Perempuan')->where('gelombang', '3')->countAllResults();
        $perempuan1 = $this->db->table('peserta')->where('jk', 'Perempuan')->where('gelombang', '1')->countAllResults();
        $perempuan2 = $this->db->table('peserta')->where('jk', 'Perempuan')->where('gelombang', '2')->countAllResults();


        $warna     = [
            'fuchsia', 'success', 'primary', 'info', 'danger', 'warning', 'green', 'purple', 'red', 'lime', 'pink',
            'teal', 'yellow', 'maroon', 'indigo', 'olive', 'navy', 'orange',
        ];
        shuffle($warna);
        $data = [
            'title' => 'Dashboad Admin', 'warna' => $warna,
            'isi'   => 'admin/v_dashboard',
            'laki1'      => $laki1,
            'laki2'      => $laki2,
            'laki3'      => $laki3,
            'perempuan1' => $perempuan1,
            'perempuan2' => $perempuan2,
            'perempuan3' => $perempuan3,
        ];
        return view('layout/v_wrapper', $data);
    }
}
