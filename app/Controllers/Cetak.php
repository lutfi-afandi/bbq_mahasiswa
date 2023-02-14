<?php

namespace App\Controllers;

use Ifsnop\Mysqldump\Mysqldump;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Spreadsheet;

class Cetak extends BaseController
{
    public function excel($gel = false)
    {
        $peserta = $this->db->query("SELECT * FROM v_detailkbm WHERE gelombang = $gel ORDER BY nama_dosen ASC,id_jurusan ASC, npm_peserta ASC")->getResultArray();


        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
        // Buat sebuah variabel untuk menampung pengaturan style dari header tabel
        $style_col = [
            'font' => ['bold' => true], // Set font nya jadi bold
            'alignment' => [
                'horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER, // Set text jadi ditengah secara horizontal (center)
                'vertical' => \PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER // Set text jadi di tengah secara vertical (middle)
            ],
            'borders' => [
                'top' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border top dengan garis tipis
                'right' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN],  // Set border right dengan garis tipis
                'bottom' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border bottom dengan garis tipis
                'left' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN] // Set border left dengan garis tipis
            ]
        ];
        // Buat sebuah variabel untuk menampung pengaturan style dari isi tabel
        $style_row = [
            'alignment' => [
                'vertical' => \PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER // Set text jadi di tengah secara vertical (middle)
            ],
            'borders' => [
                'top' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border top dengan garis tipis
                'right' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN],  // Set border right dengan garis tipis
                'bottom' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border bottom dengan garis tipis
                'left' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN] // Set border left dengan garis tipis
            ]
        ];

        $spreadsheet->setActiveSheetIndex(0)
            ->setCellValue('A1', 'NPM')
            ->setCellValue('B1', 'NAMA LENGKAP')
            ->setCellValue('C1', 'JURUSAN')
            ->setCellValue('D1', 'KELAS')
            ->setCellValue('E1', 'JENIS KELAMIN')
            ->setCellValue('F1', 'NILAI AKHIR')
            ->setCellValue('G1', 'GELOMBANG')
            ->setCellValue('H1', 'DOSEN')
            ->setCellValue('I1', 'KELANCARAN');
        $column = 2;

        // Apply style header yang telah kita buat tadi ke masing-masing kolom header
        $sheet->getStyle('A1')->applyFromArray($style_col);
        $sheet->getStyle('B1')->applyFromArray($style_col);
        $sheet->getStyle('C1')->applyFromArray($style_col);
        $sheet->getStyle('D1')->applyFromArray($style_col);
        $sheet->getStyle('E1')->applyFromArray($style_col);
        $sheet->getStyle('F1')->applyFromArray($style_col);
        $sheet->getStyle('G1')->applyFromArray($style_col);
        $sheet->getStyle('H1')->applyFromArray($style_col);
        $sheet->getStyle('I1')->applyFromArray($style_col);

        // Set height baris ke 1, 2, 3 dan 4
        $sheet->getRowDimension('1')->setRowHeight(20);
        $sheet->getRowDimension('2')->setRowHeight(20);
        $sheet->getRowDimension('3')->setRowHeight(20);
        $sheet->getRowDimension('4')->setRowHeight(20);

        // tulis data mobil ke cell
        foreach ($peserta as $p) {
            if ($p['hasil_akhir'] >= 90) {
                $nilai_akhir = 'A';
            } elseif ($p['hasil_akhir'] >= 80) {
                $nilai_akhir = 'B';
            } elseif ($p['hasil_akhir'] >= 70) {
                $nilai_akhir = 'C';
            } elseif ($p['hasil_akhir'] >= 60) {
                $nilai_akhir = 'D';
            } else {
                $nilai_akhir = 'E';
            }
            $spreadsheet->setActiveSheetIndex(0)
                ->setCellValue('A' . $column, $p['npm_peserta'])
                ->setCellValue('B' . $column, $p['nama_peserta'])
                ->setCellValue('C' . $column, $p['nama_jurusan'])
                ->setCellValue('D' . $column, $p['kelas'])
                ->setCellValue('E' . $column, $p['jk'])
                ->setCellValue('F' . $column, $nilai_akhir)
                ->setCellValue('G' . $column, $p['gelombang'])
                ->setCellValue('H' . $column, $p['nama_dosen'])
                ->setCellValue('I' . $column, $p['kelancaran_mengaji']);


            // Apply style row yang telah kita buat tadi ke masing-masing baris (isi tabel)
            $sheet->getStyle('A' . $column)->applyFromArray($style_row);
            $sheet->getStyle('B' . $column)->applyFromArray($style_row);
            $sheet->getStyle('C' . $column)->applyFromArray($style_row);
            $sheet->getStyle('D' . $column)->applyFromArray($style_row);
            $sheet->getStyle('E' . $column)->applyFromArray($style_row);
            $sheet->getStyle('F' . $column)->applyFromArray($style_row);
            $sheet->getStyle('G' . $column)->applyFromArray($style_row);
            $sheet->getStyle('H' . $column)->applyFromArray($style_row);
            $sheet->getStyle('I' . $column)->applyFromArray($style_row);

            $sheet->getRowDimension($column)->setRowHeight(20);

            $column++;
        }


        // Set width kolom
        $sheet->getColumnDimension('A')->setWidth(15); // Set width kolom A
        $sheet->getColumnDimension('B')->setWidth(18); // Set width kolom B
        $sheet->getColumnDimension('C')->setWidth(25); // Set width kolom C
        $sheet->getColumnDimension('D')->setWidth(20); // Set width kolom D
        $sheet->getColumnDimension('E')->setWidth(20); // Set width kolom E
        $sheet->getColumnDimension('F')->setWidth(20); // Set width kolom E
        $sheet->getColumnDimension('G')->setWidth(20); // Set width kolom E
        $sheet->getColumnDimension('H')->setWidth(30); // Set width kolom E
        $sheet->getColumnDimension('I')->setWidth(30); // Set width kolom E


        // tulis dalam format .xlsx
        $writer = new Xlsx($spreadsheet);
        $filename = date('Y-m-d') . '-Nilai BBQ Gelombang ' . $gel;

        // Redirect hasil generate xlsx ke web client
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment;filename=' . $filename . '.xlsx');
        header('Cache-Control: max-age=0');

        $writer->save('php://output');
    }

    public function tutor($gel = false)
    {

        $tutor = $this->db->query("SELECT user.username, user.nama_user, user.no_wa, user.jk_user, jadwal_tutor.gel_jadwal FROM jadwal_tutor
            LEFT JOIN USER ON jadwal_tutor.id_tutor=user.id_user
            WHERE LEVEL =2 AND jadwal_tutor.`gel_jadwal`  = $gel
            GROUP BY user.username
            ORDER BY user.jk_user, user.nama_user")->getResultArray();


        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
        // Buat sebuah variabel untuk menampung pengaturan style dari header tabel
        $style_col = [
            'font' => ['bold' => true], // Set font nya jadi bold
            'alignment' => [
                'horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER, // Set text jadi ditengah secara horizontal (center)
                'vertical' => \PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER // Set text jadi di tengah secara vertical (middle)
            ],
            'borders' => [
                'top' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border top dengan garis tipis
                'right' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN],  // Set border right dengan garis tipis
                'bottom' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border bottom dengan garis tipis
                'left' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN] // Set border left dengan garis tipis
            ]
        ];
        // Buat sebuah variabel untuk menampung pengaturan style dari isi tabel
        $style_row = [
            'alignment' => [
                'vertical' => \PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER // Set text jadi di tengah secara vertical (middle)
            ],
            'borders' => [
                'top' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border top dengan garis tipis
                'right' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN],  // Set border right dengan garis tipis
                'bottom' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border bottom dengan garis tipis
                'left' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN] // Set border left dengan garis tipis
            ]
        ];

        $spreadsheet->setActiveSheetIndex(0)
            ->setCellValue('A1', 'USERNAME')
            ->setCellValue('B1', 'NAMA LENGKAP')
            ->setCellValue('C1', 'NO TELEPON')
            ->setCellValue('D1', 'JENIS KELAMIN')
            ->setCellValue('E1', 'GELOMBANG');
        $column = 2;

        // Apply style header yang telah kita buat tadi ke masing-masing kolom header
        $sheet->getStyle('A1')->applyFromArray($style_col);
        $sheet->getStyle('B1')->applyFromArray($style_col);
        $sheet->getStyle('C1')->applyFromArray($style_col);
        $sheet->getStyle('D1')->applyFromArray($style_col);
        $sheet->getStyle('E1')->applyFromArray($style_col);

        // Set height baris ke 1, 2, 3 dan 4
        $sheet->getRowDimension('1')->setRowHeight(20);
        $sheet->getRowDimension('2')->setRowHeight(20);
        $sheet->getRowDimension('3')->setRowHeight(20);
        $sheet->getRowDimension('4')->setRowHeight(20);

        // tulis data mobil ke cell
        foreach ($tutor as $p) {
            $spreadsheet->setActiveSheetIndex(0)
                ->setCellValue('A' . $column, $p['username'])
                ->setCellValue('B' . $column, $p['nama_user'])
                ->setCellValue('C' . $column, $p['no_wa'])
                ->setCellValue('D' . $column, $p['jk_user'])
                ->setCellValue('E' . $column, $p['gel_jadwal']);


            // Apply style row yang telah kita buat tadi ke masing-masing baris (isi tabel)
            $sheet->getStyle('A' . $column)->applyFromArray($style_row);
            $sheet->getStyle('B' . $column)->applyFromArray($style_row);
            $sheet->getStyle('C' . $column)->applyFromArray($style_row);
            $sheet->getStyle('D' . $column)->applyFromArray($style_row);
            $sheet->getStyle('E' . $column)->applyFromArray($style_row);

            $sheet->getRowDimension($column)->setRowHeight(20);

            $column++;
        }


        // Set width kolom
        $sheet->getColumnDimension('A')->setWidth(15); // Set width kolom A
        $sheet->getColumnDimension('B')->setWidth(18); // Set width kolom B
        $sheet->getColumnDimension('C')->setWidth(25); // Set width kolom C
        $sheet->getColumnDimension('D')->setWidth(20); // Set width kolom D
        $sheet->getColumnDimension('E')->setWidth(20); // Set width kolom E


        // tulis dalam format .xlsx
        $writer = new Xlsx($spreadsheet);
        $filename = date('Y-m-d') . '-Data Tutor Gelombang ' . $gel;

        // Redirect hasil generate xlsx ke web client
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment;filename=' . $filename . '.xlsx');
        header('Cache-Control: max-age=0');

        $writer->save('php://output');
    }

    public function kelompok($gel = false)
    {

        $tutor = $this->db->query("	SELECT *
           FROM v_detailkbm  WHERE gelombang = $gel
           ORDER BY   jk_user ASC, jadwal_id ASC,id_jurusan ASC, npm_peserta ASC, hari ASC, jam ASC;")->getResultArray();


        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
        // Buat sebuah variabel untuk menampung pengaturan style dari header tabel
        $style_col = [
            'font' => ['bold' => true], // Set font nya jadi bold
            'alignment' => [
                'horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER, // Set text jadi ditengah secara horizontal (center)
                'vertical' => \PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER // Set text jadi di tengah secara vertical (middle)
            ],
            'borders' => [
                'top' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border top dengan garis tipis
                'right' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN],  // Set border right dengan garis tipis
                'bottom' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border bottom dengan garis tipis
                'left' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN] // Set border left dengan garis tipis
            ]
        ];
        // Buat sebuah variabel untuk menampung pengaturan style dari isi tabel
        $style_row = [
            'alignment' => [
                'vertical' => \PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER // Set text jadi di tengah secara vertical (middle)
            ],
            'borders' => [
                'top' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border top dengan garis tipis
                'right' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN],  // Set border right dengan garis tipis
                'bottom' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border bottom dengan garis tipis
                'left' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN] // Set border left dengan garis tipis
            ]
        ];

        $spreadsheet->setActiveSheetIndex(0)
            ->setCellValue('A1', 'KELOMPOK')
            ->setCellValue('B1', 'NAMA TUTOR')
            ->setCellValue('C1', 'NAMA PESERTA')
            ->setCellValue('D1', 'NOMOR TELP')
            ->setCellValue('E1', 'JURUSAN')
            ->setCellValue('F1', 'KELAS')
            ->setCellValue('G1', 'JADWAL')
            ->setCellValue('H1', 'KELANCARAN');
        $column = 2;

        // Apply style header yang telah kita buat tadi ke masing-masing kolom header
        $sheet->getStyle('A1')->applyFromArray($style_col);
        $sheet->getStyle('B1')->applyFromArray($style_col);
        $sheet->getStyle('C1')->applyFromArray($style_col);
        $sheet->getStyle('D1')->applyFromArray($style_col);
        $sheet->getStyle('E1')->applyFromArray($style_col);
        $sheet->getStyle('F1')->applyFromArray($style_col);
        $sheet->getStyle('G1')->applyFromArray($style_col);
        $sheet->getStyle('H1')->applyFromArray($style_col);

        // Set height baris ke 1, 2, 3 dan 4
        $sheet->getRowDimension('1')->setRowHeight(20);
        $sheet->getRowDimension('2')->setRowHeight(20);
        $sheet->getRowDimension('3')->setRowHeight(20);
        $sheet->getRowDimension('4')->setRowHeight(20);

        // tulis data mobil ke cell
        foreach ($tutor as $p) {
            $spreadsheet->setActiveSheetIndex(0)
                ->setCellValue('A' . $column, $p['jadwal_id'])
                ->setCellValue('B' . $column, $p['nama_user'])
                ->setCellValue('C' . $column, $p['nama_peserta'])
                ->setCellValue('D' . $column, $p['nomor_wa'])
                ->setCellValue('E' . $column, $p['nama_jurusan'])
                ->setCellValue('F' . $column, $p['kelas'])
                ->setCellValue('G' . $column, $p['hari'] . " - " . $p['jam'])
                ->setCellValue('h' . $column, $p['kelancaran_mengaji']);


            // Apply style row yang telah kita buat tadi ke masing-masing baris (isi tabel)
            $sheet->getStyle('A' . $column)->applyFromArray($style_row);
            $sheet->getStyle('B' . $column)->applyFromArray($style_row);
            $sheet->getStyle('C' . $column)->applyFromArray($style_row);
            $sheet->getStyle('D' . $column)->applyFromArray($style_row);
            $sheet->getStyle('E' . $column)->applyFromArray($style_row);
            $sheet->getStyle('F' . $column)->applyFromArray($style_row);
            $sheet->getStyle('G' . $column)->applyFromArray($style_row);
            $sheet->getStyle('H' . $column)->applyFromArray($style_row);

            $sheet->getRowDimension($column)->setRowHeight(20);

            $column++;
        }


        // Set width kolom
        $sheet->getColumnDimension('A')->setWidth(15); // Set width kolom A
        $sheet->getColumnDimension('B')->setWidth(18); // Set width kolom B
        $sheet->getColumnDimension('C')->setWidth(25); // Set width kolom C
        $sheet->getColumnDimension('D')->setWidth(20); // Set width kolom D
        $sheet->getColumnDimension('E')->setWidth(20); // Set width kolom E
        $sheet->getColumnDimension('F')->setWidth(20); // Set width kolom E
        $sheet->getColumnDimension('G')->setWidth(20); // Set width kolom E
        $sheet->getColumnDimension('H')->setWidth(20); // Set width kolom E


        // tulis dalam format .xlsx
        $writer = new Xlsx($spreadsheet);
        $filename = date('Y-m-d') . '-Data Kelompok Gelombang ' . $gel;

        // Redirect hasil generate xlsx ke web client
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment;filename=' . $filename . '.xlsx');
        header('Cache-Control: max-age=0');

        $writer->save('php://output');
    }


    public function test($gel = false)
    {

        // $tutor = $this->db->query(" SELECT *
        //    FROM v_detailkbm  WHERE gelombang = $gel
        //    ORDER BY   jk_user ASC, jadwal_id ASC,id_jurusan ASC, npm_peserta ASC, hari ASC, jam ASC;")->getResultArray();
        $tutor = $this->db->query(" SELECT *
           FROM v_detailkbm  WHERE gelombang = $gel
           ORDER BY   jk_user ASC, id_jurusan ASC, npm_peserta ASC, hari ASC, jam ASC;")->getResultArray();

        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
        // Buat sebuah variabel untuk menampung pengaturan style dari header tabel
        $style_col = [
            'font' => ['bold' => true], // Set font nya jadi bold
            'alignment' => [
                'horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER, // Set text jadi ditengah secara horizontal (center)
                'vertical' => \PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER // Set text jadi di tengah secara vertical (middle)
            ],
            'borders' => [
                'top' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border top dengan garis tipis
                'right' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN],  // Set border right dengan garis tipis
                'bottom' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border bottom dengan garis tipis
                'left' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN] // Set border left dengan garis tipis
            ]
        ];
        // Buat sebuah variabel untuk menampung pengaturan style dari isi tabel
        $style_row = [
            'alignment' => [
                'vertical' => \PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER // Set text jadi di tengah secara vertical (middle)
            ],
            'borders' => [
                'top' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border top dengan garis tipis
                'right' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN],  // Set border right dengan garis tipis
                'bottom' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border bottom dengan garis tipis
                'left' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN] // Set border left dengan garis tipis
            ]
        ];

        $spreadsheet->setActiveSheetIndex(0)
            ->setCellValue('A1', 'NPM')
            ->setCellValue('B1', 'NAMA PESERTA')
            ->setCellValue('C1', 'JURUSAN')
            ->setCellValue('D1', 'KELAS')
            ->setCellValue('E1', 'MAKHROJ')
            ->setCellValue('F1', 'TAJWID')
            ->setCellValue('G1', 'POST TEST')
            ->setCellValue('H1', 'KETERANGAN');
        $column = 2;

        // Apply style header yang telah kita buat tadi ke masing-masing kolom header
        $sheet->getStyle('A1')->applyFromArray($style_col);
        $sheet->getStyle('B1')->applyFromArray($style_col);
        $sheet->getStyle('C1')->applyFromArray($style_col);
        $sheet->getStyle('D1')->applyFromArray($style_col);
        $sheet->getStyle('E1')->applyFromArray($style_col);
        $sheet->getStyle('F1')->applyFromArray($style_col);
        $sheet->getStyle('G1')->applyFromArray($style_col);
        $sheet->getStyle('H1')->applyFromArray($style_col);

        // Set height baris ke 1, 2, 3 dan 4
        $sheet->getRowDimension('1')->setRowHeight(20);
        $sheet->getRowDimension('2')->setRowHeight(20);
        $sheet->getRowDimension('3')->setRowHeight(20);
        $sheet->getRowDimension('4')->setRowHeight(20);

        // tulis data mobil ke cell
        foreach ($tutor as $p) {
            $spreadsheet->setActiveSheetIndex(0)
                ->setCellValue('A' . $column, $p['npm_peserta'])
                ->setCellValue('B' . $column, $p['nama_peserta'])
                ->setCellValue('C' . $column, $p['nama_jurusan'])
                ->setCellValue('D' . $column, $p['kelas'])
                ->setCellValue('E' . $column, $p['makhroj'])
                ->setCellValue('F' . $column, $p['tajwid'])
                ->setCellValue('G' . $column, $p['pilgan'])
                ->setCellValue('H' . $column, $p['ket']);


            // Apply style row yang telah kita buat tadi ke masing-masing baris (isi tabel)
            $sheet->getStyle('A' . $column)->applyFromArray($style_row);
            $sheet->getStyle('B' . $column)->applyFromArray($style_row);
            $sheet->getStyle('C' . $column)->applyFromArray($style_row);
            $sheet->getStyle('D' . $column)->applyFromArray($style_row);
            $sheet->getStyle('E' . $column)->applyFromArray($style_row);
            $sheet->getStyle('F' . $column)->applyFromArray($style_row);
            $sheet->getStyle('G' . $column)->applyFromArray($style_row);
            $sheet->getStyle('H' . $column)->applyFromArray($style_row);

            $sheet->getRowDimension($column)->setRowHeight(20);

            $column++;
        }


        // Set width kolom
        $sheet->getColumnDimension('A')->setWidth(15); // Set width kolom A
        $sheet->getColumnDimension('B')->setWidth(18); // Set width kolom B
        $sheet->getColumnDimension('C')->setWidth(25); // Set width kolom C
        $sheet->getColumnDimension('D')->setWidth(20); // Set width kolom D
        $sheet->getColumnDimension('E')->setWidth(20); // Set width kolom E
        $sheet->getColumnDimension('F')->setWidth(20); // Set width kolom E
        $sheet->getColumnDimension('G')->setWidth(20); // Set width kolom E
        $sheet->getColumnDimension('H')->setWidth(20); // Set width kolom E


        // tulis dalam format .xlsx
        $writer = new Xlsx($spreadsheet);
        $filename = date('Y-m-d') . '-Data POST TEST Gelombang ' . $gel;

        // Redirect hasil generate xlsx ke web client
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment;filename=' . $filename . '.xlsx');
        header('Cache-Control: max-age=0');

        $writer->save('php://output');
    }
}
