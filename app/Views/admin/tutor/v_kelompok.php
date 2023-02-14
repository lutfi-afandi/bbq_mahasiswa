<div class="row">
    <div class="col-12">
        <!-- Default box -->
        <div class="card card-outline card-success">
            <div class="card-header">
                <h3 class="card-title"><?= $title; ?> : <strong><?= $jadwal['nama_user']; ?> [<?= $jadwal['hari'] . " - " . $jadwal['jam'] ?>]</strong> </h3>
                <div class="card-tools">
                    <a href="<?= base_url('Admin/JadwalTutor/'); ?>" class="btn btn-danger btn-sm">
                        <i class="fa fa-arrow-left"></i> kembali
                    </a>
                </div>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-striped table-sm text-nowrap" id="data-table">
                        <thead class="bg-gradient-success">
                            <tr>
                                <th class="text-center">#</th>
                                <th>NPM</th>
                                <th>Nama Lengkap</th>
                                <th>Jurusan - Kelas </th>
                                <th>Kelancaran</th>
                                <th>Gender</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody class="">
                            <?php $i = 1;
                            foreach ($peserta_kbm as $key => $row) { ?>
                                <tr class="" for="check">
                                    <th class="text-center"><?php echo $i++; ?></th>
                                    <td class="align-middle"><?php echo $row['npm_peserta']; ?></td>
                                    <td class="align-middle"><?php echo $row['nama_peserta']; ?></td>
                                    <td class="align-middle"><?php echo $row['kode_jurusan']; ?> - <?php echo $row['kelas']; ?></td>
                                    <td class="align-middle"><?php echo $row['kelancaran_mengaji']; ?></td>
                                    <td class="align-middle"><?php echo $row['jk']; ?></td>
                                    <td class="align-middle">
                                        <a href="<?= base_url('Admin/JadwalTutor/hapusdari/' . $row['id_kelompok'] . "/" . $jadwal['id_jadwal']); ?>" class="btn btn-xs btn-outline-danger"><i class="fa fa-trash"></i></a>

                                    </td>

                                </tr>
                            <?php } ?>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-12">
        <!-- Default box -->
        <div class="card card-outline card-warning">
            <div class="card-header text-center">
                <h3 class="card-title">Tambah Peserta Baru</h3>
            </div>
            <div class="card-body">
                <form action="<?= base_url('Admin/JadwalTutor/tambah_kelompok/' . $jadwal['id_jadwal']); ?>" method="post">
                    <div class="table-responsive">
                        <table class="table table-striped table-sm text-nowrap" id="example1">
                            <thead class="bg-warning">
                                <tr>
                                    <th class="text-center">#</th>
                                    <th>Gel</th>
                                    <th>NPM</th>
                                    <th>Nama Lengkap</th>
                                    <th>Kelas </th>
                                    <th>Kelancaran</th>
                                    <th>Gender</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($peserta_baru as $key => $row) {
                                    if ($row['jk'] != $jadwal['jk_user']) continue; ?>
                                    <tr class="" for="check[]">
                                        <td class="text-center" scope="row"> <input style="" type="checkbox" id="check" name="id_peserta[]" value="<?= $row['id_peserta']; ?>"></td>
                                        <td class="align-middle"><?php echo $row['gelombang']; ?></td>
                                        <td><?php echo $row['npm_peserta']; ?></td>
                                        <td><?php echo $row['nama_peserta']; ?></td>
                                        <td><?php echo $row['kode_jurusan']; ?> - <?php echo $row['kelas']; ?></td>
                                        <td><?php echo $row['kelancaran_mengaji']; ?></td>
                                        <td><?php echo $row['jk']; ?></td>
                                    </tr>
                                <?php } ?>

                            </tbody>
                        </table>
                        <div class="modal-footer">
                            <input type="submit" value="Simpan" class="btn btn-primary">
                        </div>
                </form>
            </div>
        </div>
    </div>
</div>
</div>