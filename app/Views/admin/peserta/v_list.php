<?php
$db = \Config\Database::connect();
?>

<!-- TAMBAH DATA DOSEN
    BIKIN TABEL DOSEN DAN PENGELOLANYA -->
<div class="card card-primary c">
    <div class="card-header">
        <h5 class="card-title"><?= $title; ?>
            <div class="btn-group" style="margin-top:-5px">
                <a class="btn btn-sm btn-success">Laki-Laki </a>
                <a class="btn btn-sm bg-gradient-maroon">Perempuan</a>
            </div>
        </h5>
        <div class="card-tools">

            <a href="<?= base_url('Admin/Peserta/data_kbm'); ?>" class="btn bg-fuchsia btn-sm">
                <i class="fa fa-arrow-right"></i> Data KBM
            </a>
        </div>
    </div>
    <div class="card-body">
        <div class="row mb-3">
            <div class="col-sm-4">
                <div class="btn-group btn-block" style="margin-top:-5px">
                    <a class="btn btn-sm btn-secondary">Gelombang 1</a>
                    <a class="btn btn-sm btn-success text-bold"><?php echo $jml = $db->table('v_detailkbm')->where(['jk' => 'Laki-Laki', 'gelombang' => '1'])->countAllResults() ?> </a>
                    <a class="btn btn-sm bg-gradient-maroon text-bold"><?php echo $jml = $db->table('v_detailkbm')->where(['jk' => 'Perempuan', 'gelombang' => '1'])->countAllResults() ?> </a>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="btn-group  btn-block" style="margin-top:-5px">
                    <a class="btn btn-sm btn-secondary">Gelombang 2</a>
                    <a class="btn btn-sm btn-success text-bold"><?php echo $jml = $db->table('v_detailkbm')->where(['jk' => 'Laki-Laki', 'gelombang' => '2'])->countAllResults() ?> </a>
                    <a class="btn btn-sm bg-gradient-maroon text-bold"><?php echo $jml = $db->table('v_detailkbm')->where(['jk' => 'Perempuan', 'gelombang' => '2'])->countAllResults() ?> </a>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="btn-group  btn-block" style="margin-top:-5px">
                    <a class="btn btn-sm btn-secondary">Gelombang 3</a>
                    <a class="btn btn-sm btn-success text-bold"><?php echo $jml = $db->table('v_detailkbm')->where(['jk' => 'Laki-Laki', 'gelombang' => '3'])->countAllResults() ?> </a>
                    <a class="btn btn-sm bg-gradient-maroon text-bold"><?php echo $jml = $db->table('v_detailkbm')->where(['jk' => 'Perempuan', 'gelombang' => '3'])->countAllResults() ?> </a>
                </div>
            </div>

        </div>

        <div class="table-responsive">
            <table class="table table-sm table-striped table-hover text-nowrap" id="example1">
                <thead>
                    <tr class="bg-fuchsia">
                        <th scope="col">#</th>
                        <th>NPM</th>
                        <th>Nama</th>
                        <th>Kelas</th>
                        <th>Gel</th>
                        <th>Nomor WA</th>
                        <th>Jenis Kelamin</th>
                        <th>Kelancaran</th>
                        <th>Dosen</th>
                        <th>Lunas?</th>
                        <th>Kuliah</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $no = 1;
                    foreach ($peserta as $key => $value) { ?>
                        <tr>
                            <th scope="row"><?= $no++; ?></th>
                            <td><?= $value['npm_peserta']; ?></td>
                            <td><?= $value['nama_peserta']; ?></td>
                            <td><?= $value['kode_jurusan']; ?> - <?= $value['kelas']; ?></td>
                            <td><?= $value['gelombang']; ?></td>
                            <td>
                                <a target="_blank" href="https://api.whatsapp.com/send?phone=<?= $value['nomor_wa']; ?>&text=_Assalamualaikum_%0A%0ATerimakasih%20telah%20melakukan%20pendaftaran%20BBQ.%0AKami%20dari%20Pengurus%20BBQ%20Teknokrat%20mengingatkan%20kakak%20untuk%20segera%20menyelesaikan%20membayar%20biaya%20pendaftaran%20BBQ%20sebesar%0A*60k*%20(enam%20puluh%20ribu%20rupiah)%20dengan%20cara%3A%0A%0A1.%20COD%20dimasjid%20kampus%20Asmaul%20Yusuf.%20Atau%2C%0A2.%20Transfer%20ke%20nomor%20rekening%20berikut%20*0098%200102%206355%20535*%20a.n%20*Novita%20ulan%20sari*.%0A%0AAtas%20perhatiannya%20kami%20ucapkan%20Terimakasih%20%F0%9F%99%8F%0A%0A%0ATTD%0ATim%20BBQ%20Teknokrat%20">
                                    <?= $value['nomor_wa']; ?>
                                </a>
                            </td>
                            <td><?= $value['jk']; ?></td>
                            <td>
                                <a type="button" class="" data-toggle="modal" data-target="#modal-ujian<?= $value['id_peserta']; ?>">
                                    <button class="btn btn-primary btn-xs"><?= $value['makhroj']; ?></button>
                                    <button class="btn btn-info btn-xs"><?= $value['tajwid']; ?></button>
                                    <button class="btn btn-danger btn-xs"><?= $value['pilgan']; ?></button>
                                </a>
                            </td>
                            <td><?= $value['nama_dosen']; ?></td>
                            <td>
                                <?php if ($value['keterangan'] == 'lunas') { ?>
                                    <button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#modal-keterangan<?= $value['id_peserta']; ?>"><i class="fa fa-check text-sm"></i> </button>
                                <?php  } else { ?>
                                    <button type="button" class="btn btn-danger  btn-xs" data-toggle="modal" data-target="#modal-keterangan<?= $value['id_peserta']; ?>"><i class="fa fa-times text-sm"></i></button>
                                <?php } ?>
                            </td>
                            <td class="text-center">
                                <!-- jadwal -->
                                <a href="<?= base_url(); ?>/assets/uploads/jadwal_peserta/<?= $value['jadwal_kuliah']; ?>" target="_blank"><i class="fa fa-file-image text-yellow"></i></a>
                            </td>
                            <td>
                                <a href="<?= base_url('cetak/test/' . $value['gelombang']); ?>"><i class="fa fa-print"></i></a>
                                <a href="<?= base_url('Admin/Peserta/edit/' . $value['id_peserta']); ?>" class="btn btn-primary btn-xs"><i class="fas fa-user-edit"></i></a href="">
                                <a class="btn btn-danger btn-xs" onclick="konfimasi('<?= $value['id_peserta']; ?>')" title="Hapus Peserta"><i class="fa fa-trash"></i></a>
                            </td>
                        </tr>
                    <?php } ?>

                </tbody>
            </table>
        </div>
    </div>
    <div class="card-footer">
        <div class="row">
            <div class="col-md-4">
                <button type="submit" class="btn bg-gradient-lime btn-block btn-flat mt-3" onclick="myFunction(1)" id=" btn-delete"><i class="fa fa-exclamation-triangle"></i> Hapus Peserta Gelombang 1</button>
            </div>
            <div class="col-md-4">
                <button type="submit" class="btn bg-gradient-primary btn-block btn-flat mt-3" onclick="myFunction(2)" id=" btn-delete"><i class="fa fa-exclamation-triangle"></i> Hapus Peserta Gelombang 2</button>
            </div>
            <div class="col-md-4">
                <button type="submit" class="btn bg-gradient-navy btn-block btn-flat mt-3" onclick="myFunction(3)" id=" btn-delete"><i class="fa fa-exclamation-triangle"></i> Hapus Peserta Gelombang 3</button>
            </div>
        </div>


        <script>
            function myFunction(parameter_id) {

                if (confirm("Anda yakin akan menghapus semua data peserta? \n Ini tidak dapat di Batalkan!" + parameter_id) == true) {
                    window.location.href = "<?= base_url('Admin/Peserta/delete_all'); ?>" + "/" + parameter_id;;
                }

            }
        </script>
    </div>
    <!-- /.card -->
</div>





<!-- Modal keterangan -->
<?php
foreach ($peserta as $key => $pes) { ?>
    <div class="modal fade" tabindex="1" id="modal-keterangan<?= $pes['id_peserta']; ?>">
        <div class="modal-dialog modal-dialog-centered ">
            <div class="modal-content ">
                <div class="modal-header bg-gradient-blue">
                    <h4 class="modal-title  text-center">Pembayaran <?= $pes['nama_peserta']; ?></h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span></button>
                </div>
                <div class="modal-body">
                    <form action="<?= base_url('admin/peserta/keterangan/' . $pes['id_peserta']); ?>" method="post">
                        <div class="form-group">
                            <select name="keterangan" id="" class="form-control">
                                <option value="lunas" <?= ($pes['keterangan'] == 'lunas') ? 'selected' : ''; ?>>Lunas</option>
                                <option value="belum" <?= ($pes['keterangan'] == 'belum') ? 'selected' : ''; ?>>Belum Lunas</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Submit</button>
                    </form>

                </div>
            </div>
        </div>
    </div>
<?php }
?>

<!-- Modal keterangan -->
<?php
foreach ($peserta as $key => $pes) { ?>
    <div class="modal fade" tabindex="1" id="modal-ujian<?= $pes['id_peserta']; ?>">
        <div class="modal-dialog modal-dialog-centered ">
            <div class="modal-content ">
                <div class="modal-header bg-gradient-blue">
                    <h4 class="modal-title  text-center">TEST BACAAN <?= $pes['nama_peserta']; ?></h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span></button>
                </div>
                <div class="modal-body">
                    <form action="<?= base_url('admin/peserta/hasil_ujian/' . $pes['id_peserta']); ?>" method="post">
                        <div class="form-group">
                            <label>Makhrojul Huruf</label>
                            <input type="number" name="makhroj" class="form-control" value="<?= $pes['makhroj'] ?>" required>
                        </div>
                        <div class="form-group">
                            <label>Tajwid</label>
                            <input type="number" name="tajwid" class="form-control" value="<?= $pes['tajwid'] ?>" required>
                        </div>
                        <div class="form-group">
                            <label>Post Test</label>
                            <input type="number" name="pilgan" class="form-control" value="<?= $pes['pilgan'] ?>" required>
                        </div>
                        <div class="form-group">
                            <label>Keterangan</label>
                            <input type="text" name="ket" class="form-control" value="<?= $pes['ket'] ?>" required>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Submit</button>
                    </form>

                </div>
            </div>
        </div>
    </div>
<?php }
?>



<?php
foreach ($peserta as $key => $value) { ?>
    <script>
        function konfimasi(parameter_id) {
            Swal.fire({
                title: 'Anda Yakin?',
                text: "Hapus data Peserta?",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Hapus!'
            }).then((result) => {
                if (result.isConfirmed) {
                    window.location.href = "<?= base_url('Admin/Peserta/delete'); ?>" + "/" + parameter_id;
                }
            })
        }
    </script>
<?php } ?>