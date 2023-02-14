<div class="col-md-12 ">
    <div class="card card-default">
        <div class="card-header bg-info">
            <h3 class="card-title">
                <i class="fas fa-flag-checkered"></i>
                <?= $title; ?>
            </h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <form action="<?= base_url('Admin/Laporan/delete_all'); ?>" method="post" id="form-delete">
                <div class="table-responsive">
                    <table class="table table-striped table-sm text-sm" id="example1">
                        <thead class="bg-gradient-success">
                            <tr>
                                <th class="text-center" widht="5%">#</th>
                                <th>Tutor</th>
                                <th>Kelompok</th>
                                <th>Pertemuan</th>
                                <!-- <th>Tanggal </th> -->
                                <th>Peserta</th>
                                <th widht="25%">Materi</th>
                                <th widht="25%">Keterangan</th>
                                <th>Foto</th>
                            </tr>
                        </thead>
                        <tbody class="">
                            <?php $no = 1;
                            foreach ($laporan_tutor as $key => $row) { ?>
                                <tr>
                                    <th class="text-center"><?= $no++; ?><input type="hidden" name="id_laporan[]" id="check-item" value="<?php echo $row['id_laporan']; ?>"></th>
                                    <td><?= $row['nama_user']; ?></td>
                                    <td><?= $row['hari'] . "-" . $row['jam']; ?></td>
                                    <td>
                                        <small>
                                            <strong>Ke : <?= $row['no_pertemuan']; ?></strong><br>
                                            <i class="fa fa-clock"></i> : <?php setlocale(LC_TIME, "id-ID");
                                                                            echo strftime("%A, %d %B %Y", strtotime($row['tanggal'])); ?>
                                        </small>

                                    </td>
                                    <td>
                                        <small>
                                            <strong>Jumlah : <?= $row['jumlah_peserta']; ?><br></strong>
                                            <i class="fas fa-user text-success"></i> : <?= $row['hadir']; ?><br>
                                            <i class="fa fa-info-circle  text-warning"></i> : <?= $row['izin']; ?><br>
                                            <i class="fa fa-times  text-danger"></i> : <?= $row['absen']; ?><br>
                                        </small>
                                    </td>
                                    <td><?= $row['materi']; ?></td>
                                    <td><small><?= $row['keterangan_laporan']; ?></small></td>
                                    <td>
                                        <a class="btn btn-xs btn-warning" target="_blank" href="<?= base_url('/assets/uploads/laporan/' . $row['foto_laporan']); ?>"><i class=" fa fa-file-image"></i></a>
                                    </td>
                                </tr>

                            <?php } ?>
                        </tbody>
                    </table>
                </div>
                <button type="submit" class="btn btn-danger" id="btn-delete"><i class="fa fa-exclamation-triangle"></i> Hapus Semua data</button>
            </form>
        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
</div>