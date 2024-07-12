<div class="card card-primary card-outline">
    <div class="card-header">
        <h3 class="card-title"><strong>CETAK NILAI</strong></h3>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-md-6">

                <div class="form-row">
                    <div class="col">
                        <select id="gelombang" class="form-control">
                            <option>-Pilih Gelombang-</option>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                        </select>
                    </div>
                    <div class="col">
                        <button class="btn btn-success " id="submit" onclick="cetak()"><i class="fa fa-file-excel"></i> Export Excel</button>
                    </div>
                </div>
            </div>

        </div>

    </div>
</div>

<div class="card card-primary">
    <div class="card-header">
        <h5 class="card-title"><?= $title; ?></h5>
        <div class="card-tools">

            <a href="<?= base_url('Admin/Peserta'); ?>" class="btn btn-warning btn-sm">
                <i class="fa fa-arrow-left"></i> Data Peserta
            </a>
        </div>
    </div>
    <div class="card-body">
        <div class="callout callout-info">
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="">Pilih Tahun Ajar :</label>
                        <?php
                        $tahunSekarang = date("Y") + 1;
                        $daftarTahun = range(2020, $tahunSekarang);
                        $daftarTahun = array_reverse($daftarTahun);
                        ?>
                        <select name="tahun_ajar" id="tahun_ajar" class="form-control">
                            <option value="" hidden>Pilih Tahun Ajar</option>
                            <?php foreach ($daftarTahun as $tahun) {
                                $tahunDepan = $tahun + 1;
                                $tahun_ajar = $tahun . '/' . $tahunDepan; ?>
                                <option value="<?= $tahun_ajar; ?>" <?= ($tahun_ajar == $tahun_ajar_dipilih) ? 'selected' : ''; ?>>
                                    <?= $tahun_ajar; ?>
                                </option>
                            <?php } ?>
                        </select>
                        <span id="error-tahun-ajar" class="error-message" style="display:none; color: red;">Pilih tahun ajar</span>

                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Pilih Gelombang :</label>

                        <select name="tahun" id="gelombang-fil" class="form-control">
                            <option value="" hidden>Pilih Gelombang</option>
                            <option value="1" <?= $gelombang_dipilih == 1 ? 'selected' : ''; ?>>1</option>
                            <option value="2" <?= $gelombang_dipilih == 2 ? 'selected' : ''; ?>>2</option>
                            <option value="3" <?= $gelombang_dipilih == 3 ? 'selected' : ''; ?>>3</option>
                        </select>
                        <span id="error-gelombang" class="error-message" style="display:none; color: red;">Gelombang harus dipilih</span>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for=""> Filter</label>
                        <button id="btn-submit" onclick="filter()" class="form-control btn btn-primary"><i class="fa fa-filter"></i></button>
                    </div>
                </div>
            </div>

        </div>

        <?php if ($peserta_kbm !== null) { ?>
            <div class="table-responsive">
                <table class="table table-sm table-striped table-bordered text-nowrap" id="example1">
                    <thead class="bg-maroon">
                        <tr>
                            <th scope="col">#</th>
                            <th width="100px" class="th-sm">NPM</th>
                            <th class="th-sm">Nama Lengkap</th>
                            <th class="th-sm">Kelas</th>
                            <th width="80px" class="th-sm">Gender</th>
                            <th class="th-sm text-center">Gel</th>
                            <th width="200px" class="th-sm">Nama Tutor</th>
                            <th class="th-sm">Jadwal BBQ</th>
                            <th class="th-sm">Nilai</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $no = 1;
                        foreach ($peserta_kbm as $key => $value) { ?>
                            <tr>
                                <th scope="row"><?= $no++; ?></th>
                                <td><?= $value['npm_peserta']; ?></td>
                                <td><?= $value['nama_peserta']; ?></td>
                                <td><?= $value['kode_jurusan'] . " - " . $value['kelas']; ?></td>
                                <td><?= $value['jk']; ?></td>
                                <td class="text-center"><?= $value['gelombang']; ?></td>
                                <td> <?php if ($value['nama_user']) {
                                            echo $value['nama_user'];
                                        } else { ?>
                                        <button disabled class="btn btn-xs bg-gradient-warning">belum dikelompokkan</button>
                                    <?php } ?>

                                </td>
                                <td><?= $value['hari'] . " - " . $value['jam']; ?></td>
                                <td class="text-center text-lg"><?php if ($value['hasil_akhir'] >= 90) {
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
                                                                } ?></td> <b></b>
                            </tr>
                        <?php } ?>

                    </tbody>
                </table>
            </div>
        <?php } ?>

    </div>
</div>

<script>
    function cetak() {
        var gel = $('#gelombang').val();
        // console.log(gel);
        if (gel != '-Pilih Gelombang-') {
            var url = '<?= base_url('Cetak/excel'); ?>/' + gel;
            window.open(url, '_blank');
        } else {
            alert('Pilih Gelombang BBQ terlebih Dahulu');
        }
    }
</script>
<script>
    function jadwal(parameter_jadwal) {
        console.log(parameter_jadwal);
        window.open(parameter_jadwal, '_blank');
    }


    function filter() {
        var isValid = true;
        var tahun_ajar = $('#tahun_ajar').val();
        var gelombang = $('#gelombang-fil').val();

        $('.error-message').hide();

        if (tahun_ajar === '') {
            $('#error-tahun-ajar').show();
            isValid = false;
        }

        if (gelombang === '') {
            $('#error-gelombang').show();
            isValid = false;
        }

        if (isValid) {
            // console.log(tahun_ajar, gelombang);
            window.location.href = "?gelombang=" + gelombang + '&tahun_ajar=' + tahun_ajar;
        }
    }
</script>