<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index()
    {
        $warna     = [
            'success', 'primary', 'danger', 'warning',
        ];
        shuffle($warna);

        $data = [
            'title' => 'Beranda BBQ',
            'info'  => $this->InfoModel->getInfoHome(),
            'kegiatan'  => $this->KegiatanModel->getKegiatan(),
            'warna' => $warna,
        ];
        return view('welcome_message', $data);
    }


}
