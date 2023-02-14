<div class="card card-maroon card-outline">
    <div class="card-header">
        <h5 class="card-title"><?= $title; ?> </h5> &nbsp; <small class="text-success"><?= $jadwal['hari']; ?> - <?= $jadwal['jam']; ?></small>
        <div class="card-tools">
            <a href="<?= base_url('Tutor/Kbm/kelompok/' . $jadwal['id_jadwal']); ?>" class="btn btn-danger btn-sm"><i class="fas fa-arrow-left"></i> Kembali</a>
            <a href="<?= base_url('Tutor/Kbm/nilai/' . $jadwal['id_jadwal']); ?>" class="btn btn-success btn-sm"><i class="fas fa-clipboard"></i> Nilai</a>
        </div>
    </div>

    <div class="card-body">
        <div class="table-responsive">

            <table class="table table-striped table-sm text-nowrap">
                <thead class="bg-gradient-purple">
                    <tr>
                        <th class="text-center" rowspan="2">NPM</th>
                        <th class="text-center" rowspan="2">Nama</th>
                        <th class="text-center" colspan="12">Pertemuan</th>
                        <th class="text-center" rowspan="2">update at<br></th>
                        <th class="text-center" rowspan="2">Aksi<br></th>
                    </tr>
                    <tr class="text-center">
                        <th width="60px">1</th>
                        <th width="60px">2</th>
                        <th width="60px">3</th>
                        <th width="60px">4</th>
                        <th width="60px">5</th>
                        <th width="60px">6</th>
                        <th width="60px">7</th>
                        <th width="60px">8</th>
                        <th width="60px">9<br></th>
                        <th width="60px">10</th>
                        <th width="60px">11</th>
                        <th width="60px">12</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1;
                    foreach ($peserta_kbm as $key => $row) { ?>
                        <?= form_open('Tutor/Kbm/simpan_absen/' . $row['id_kelompok'] . "/" . $jadwal['id_jadwal']); ?>
                        <tr>
                            <td><?= $row['npm_peserta']; ?></td>
                            <td><?= $row['nama_peserta']; ?></td>
                            <td>
                                <select name="p1" id="" class="">
                                    <option value=""></option>
                                    <option value="Hadir" <?= ($row['p1'] == 'Hadir') ? 'selected' : ''; ?>>H</option>
                                    <option value="Izin" <?= ($row['p1'] == 'Izin') ? 'selected' : ''; ?>>I</option>
                                    <option value="Alpa" <?= ($row['p1'] == 'Alpa') ? 'selected' : ''; ?>>A</option>
                                </select>
                            </td>
                            <td>
                                <select name="p2" id="" class="">
                                    <option value=""></option>
                                    <option value="Hadir" <?= ($row['p2'] == 'Hadir') ? 'selected' : ''; ?>>H</option>
                                    <option value="Izin" <?= ($row['p2'] == 'Izin') ? 'selected' : ''; ?>>I</option>
                                    <option value="Alpa" <?= ($row['p2'] == 'Alpa') ? 'selected' : ''; ?>>A</option>
                                </select>
                            </td>
                            <td>
                                <select name="p3" id="" class="">
                                    <option value=""></option>
                                    <option value="Hadir" <?= ($row['p3'] == 'Hadir') ? 'selected' : ''; ?>>H</option>
                                    <option value="Izin" <?= ($row['p3'] == 'Izin') ? 'selected' : ''; ?>>I</option>
                                    <option value="Alpa" <?= ($row['p3'] == 'Alpa') ? 'selected' : ''; ?>>A</option>
                                </select>
                            </td>
                            <td>
                                <select name="p4" id="" class="">
                                    <option value=""></option>
                                    <option value="Hadir" <?= ($row['p4'] == 'Hadir') ? 'selected' : ''; ?>>H</option>
                                    <option value="Izin" <?= ($row['p4'] == 'Izin') ? 'selected' : ''; ?>>I</option>
                                    <option value="Alpa" <?= ($row['p4'] == 'Alpa') ? 'selected' : ''; ?>>A</option>
                                </select>
                            </td>
                            <td>
                                <select name="p5" id="" class="">
                                    <option value=""></option>
                                    <option value="Hadir" <?= ($row['p5'] == 'Hadir') ? 'selected' : ''; ?>>H</option>
                                    <option value="Izin" <?= ($row['p5'] == 'Izin') ? 'selected' : ''; ?>>I</option>
                                    <option value="Alpa" <?= ($row['p5'] == 'Alpa') ? 'selected' : ''; ?>>A</option>
                                </select>
                            </td>
                            <td>
                                <select name="p6" id="" class="">
                                    <option value=""></option>
                                    <option value="Hadir" <?= ($row['p6'] == 'Hadir') ? 'selected' : ''; ?>>H</option>
                                    <option value="Izin" <?= ($row['p6'] == 'Izin') ? 'selected' : ''; ?>>I</option>
                                    <option value="Alpa" <?= ($row['p6'] == 'Alpa') ? 'selected' : ''; ?>>A</option>
                                </select>
                            </td>
                            <td>
                                <select name="p7" id="" class="">
                                    <option value=""></option>
                                    <option value="Hadir" <?= ($row['p7'] == 'Hadir') ? 'selected' : ''; ?>>H</option>
                                    <option value="Izin" <?= ($row['p7'] == 'Izin') ? 'selected' : ''; ?>>I</option>
                                    <option value="Alpa" <?= ($row['p7'] == 'Alpa') ? 'selected' : ''; ?>>A</option>
                                </select>
                            </td>
                            <td>
                                <select name="p8" id="" class="">
                                    <option value=""></option>
                                    <option value="Hadir" <?= ($row['p8'] == 'Hadir') ? 'selected' : ''; ?>>H</option>
                                    <option value="Izin" <?= ($row['p8'] == 'Izin') ? 'selected' : ''; ?>>I</option>
                                    <option value="Alpa" <?= ($row['p8'] == 'Alpa') ? 'selected' : ''; ?>>A</option>
                                </select>
                            </td>
                            <td>
                                <select name="p9" id="" class="">
                                    <option value=""></option>
                                    <option value="Hadir" <?= ($row['p9'] == 'Hadir') ? 'selected' : ''; ?>>H</option>
                                    <option value="Izin" <?= ($row['p9'] == 'Izin') ? 'selected' : ''; ?>>I</option>
                                    <option value="Alpa" <?= ($row['p9'] == 'Alpa') ? 'selected' : ''; ?>>A</option>
                                </select>
                            </td>
                            <td>
                                <select name="p10" id="" class="">
                                    <option value=""></option>
                                    <option value="Hadir" <?= ($row['p10'] == 'Hadir') ? 'selected' : ''; ?>>H</option>
                                    <option value="Izin" <?= ($row['p10'] == 'Izin') ? 'selected' : ''; ?>>I</option>
                                    <option value="Alpa" <?= ($row['p10'] == 'Alpa') ? 'selected' : ''; ?>>A</option>
                                </select>
                            </td>
                            <td>
                                <select name="p11" id="" class="">
                                    <option value=""></option>
                                    <option value="Hadir" <?= ($row['p11'] == 'Hadir') ? 'selected' : ''; ?>>H</option>
                                    <option value="Izin" <?= ($row['p11'] == 'Izin') ? 'selected' : ''; ?>>I</option>
                                    <option value="Alpa" <?= ($row['p11'] == 'Alpa') ? 'selected' : ''; ?>>A</option>
                                </select>
                            </td>
                            <td>
                                <select name="p12" id="" class="">
                                    <option value=""></option>
                                    <option value="Hadir" <?= ($row['p12'] == 'Hadir') ? 'selected' : ''; ?>>H</option>
                                    <option value="Izin" <?= ($row['p12'] == 'Izin') ? 'selected' : ''; ?>>I</option>
                                    <option value="Alpa" <?= ($row['p12'] == 'Alpa') ? 'selected' : ''; ?>>A</option>
                                </select>
                            </td>
                            <td class="text-center"><?= $row['absen_at']; ?><input type="hidden" name="absen_at" id="" class="form-control" value="<?= $row['absen_at']; ?>"></td>
                            <td class="text-center"><button class="btn btn-xs bg-gradient-success" type="submit">simpan</button></td>
                        </tr>
                        <?= form_close(); ?>
                    <?php } ?>
                </tbody>
            </table>
        </div>

    </div>
</div>