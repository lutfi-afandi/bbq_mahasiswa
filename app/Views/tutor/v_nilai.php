<div class="card card-maroon card-outline">
    <div class="card-header">
        <h5 class="card-title"><?= $title; ?> </h5> &nbsp; <small class="text-success"><?= $jadwal['hari']; ?> - <?= $jadwal['jam']; ?></small>
        <div class="card-tools">
            <a href="<?= base_url('Tutor/Kbm/kelompok/' . $jadwal['id_jadwal']); ?>" class="btn btn-danger btn-sm"><i class="fas fa-arrow-left"></i> Kembali</a>
            <a href="<?= base_url('Tutor/Kbm/absensi/' . $jadwal['id_jadwal']); ?>" class="btn btn-info btn-sm"><i class="fas fa-clipboard"></i> Absen</a>
        </div>
    </div>

    <div class="card-body">
        <div class="table-responsive">

            <table class="table table-striped table-sm text-nowrap">
                <thead class="bg-gradient-teal">
                    <tr>
                        <th rowspan="2">NPM</th>
                        <th rowspan="2">Nama</th>
                        <th class="text-center" colspan="8">Nilai</th>
                        <th rowspan="2" class="text-center">&Dashv; NA &Dashv;</th>
                        <th rowspan="2">Update</th>
                        <th rowspan="2">Aksi</th>
                    </tr>
                    <tr class="text-center">
                        <th width="80px">Kehadiran</th>
                        <th width="80px">Mutabaah</th>
                        <th width="100px"> &Dashv; UTS &Dashv;</th>
                        <th width="80px">Kegiatan</th>
                        <th width="80px">Wudhu</th>
                        <th width="80px">Sholat</th>
                        <th width="80px">Tilawah</th>
                        <th width="110px">&Dashv; UAS &Dashv;</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1;
                    foreach ($peserta_kbm as $key => $row) { ?>
                        <?= form_open('Tutor/Kbm/simpan_nilai/' . $row['id_kelompok'] . "/" . $jadwal['id_jadwal']); ?>
                        <tr>
                            <td><?= $row['npm_peserta']; ?></td>
                            <td><?= $row['nama_peserta']; ?></td>
                            <td><input type="text" name="kehadiran" id="" class="form-control" value="<?= $row['kehadiran']; ?>"></td>
                            <td><input type="text" name="mutabaah" id="" class="form-control" value="<?= $row['mutabaah']; ?>"></td>
                            <td><input type="text" name="uts" id="" class="form-control" value="<?= $row['uts']; ?>"></td>
                            <td><input type="text" name="kegiatan_wajib" id="" class="form-control" value="<?= $row['kegiatan_wajib']; ?>"></td>
                            <td><input type="text" name="wudhu" id="" class="form-control" value="<?= $row['wudhu']; ?>"></td>
                            <td><input type="text" name="sholat" id="" class="form-control" value="<?= $row['sholat']; ?>"></td>
                            <td><input type="text" name="tilawah" id="" class="form-control" value="<?= $row['tilawah']; ?>"></td>
                            <td><input type="text" name="uas_tertulis" id="" class="form-control" value="<?= $row['uas_tertulis']; ?>"></td>
                            <td class="text-center">
                                <?php foreach ($na as $key => $value) {
                                    if ($row['id_kelompok'] == $value['id_kelompok']) { ?>
                                        <?php if ($value['hasil_akhir'] >= 90) {
                                            echo "<label class='text-success'>A</label>";
                                        } elseif ($value['hasil_akhir'] >= 80) {
                                            echo "<label class='text-primary'>B</label>";
                                        } elseif ($value['hasil_akhir'] >= 70) {
                                            echo "<label class='text-info'>C</label>";
                                        } elseif ($value['hasil_akhir'] >= 60) {
                                            echo "<label class='text-warning'>D</label>";
                                        } elseif ($value['hasil_akhir'] > 0) {
                                            echo "<label class='text-danger'>E</label>";
                                        } elseif ($value['hasil_akhir'] == "Null") {
                                            echo "Belum";
                                        } ?>
                                <?php }
                                } ?>
                            </td> <b></b>
                            </td>
                            <td><?= $row['created_at']; ?><input type="hidden" name="created_at" id="" class="form-control" value="<?= $row['created_at']; ?>"></td>
                            <td>
                                <button class="btn btn-xs bg-gradient-yellow" type="submit">simpan</button>
                            </td>
                        </tr>
                        <?= form_close(); ?>
                    <?php } ?>
                </tbody>
            </table>
        </div>

    </div>
</div>