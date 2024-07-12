<div class="row">
    <div class="col-md-6">
        <div class="card card-primary card-outline">
            <div class="card-header">
                <center class="m-0"><strong>CETAK DATA TUTOR</strong></center>
            </div>
            <div class="card-body">
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
                        <button class="btn btn-primary " id="submit" onclick="cetakTutor()"><i class="fa fa-file-excel"></i> Export Data Tutor</button>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="col-md-6">
        <div class="card card-success card-outline">
            <div class="card-header">
                <center class="m-0"><strong>CETAK DATA KELOMPOK</strong></center>
            </div>
            <div class="card-body">
                <div class="form-row">
                    <div class="col">
                        <select id="gelombangk" class="form-control">
                            <option>-Pilih Gelombang-</option>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                        </select>
                    </div>
                    <div class="col">
                        <button class="btn btn-success " id="submit" onclick="cetakKelompok()"><i class="fa fa-file-excel"></i> Export Data Kelompok</button>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>





<div class="card card-fuchsia card-outline">
    <div class="card-header">
        <h5 class="card-title"><?= $title; ?></h5>
        <div class="card-tools">

            <a type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#add">
                <i class="fa fa-plus"></i> add
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
        <?php if ($jadwal !== null) {
            echo $this->include('admin/tutor/data');
        } ?>
    </div>
</div>



<script>
    function cetakTutor() {
        var gel = $('#gelombang').val();
        // console.log(gel);
        if (gel != '-Pilih Gelombang-') {
            var url = '<?= base_url('Cetak/tutor'); ?>/' + gel;
            window.open(url, '_blank');
        } else {
            alert('Pilih Gelombang BBQ terlebih Dahulu');
        }
    }

    function cetakKelompok() {
        var gel = $('#gelombangk').val();
        // console.log(gel);
        if (gel != '-Pilih Gelombang-') {
            var url = '<?= base_url('Cetak/kelompok'); ?>/' + gel;
            window.open(url, '_blank');
        } else {
            alert('Pilih Gelombang BBQ terlebih Dahulu');
        }
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