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
                        <a type="button" onclick="jadwal('<?= base_url(); ?>/assets/uploads/jadwal_peserta/<?= $value['jadwal_kuliah']; ?>')"><i class=" fa fa-file-image text-yellow"></i></a>
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

<!-- Modal keterangan bayar-->
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

<!-- Modal keterangan baca-->
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