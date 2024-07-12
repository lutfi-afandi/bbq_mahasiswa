<?php
$db = \Config\Database::connect();
function jumlah($jk, $gelombang)
{
    return  \Config\Database::connect()->table('v_detailkbm')->where(['jk' => $jk, 'gelombang' => $gelombang])->countAllResults();
}

?>

<!-- info jumlah peserta -->
<div class="card card-primary">
    <div class="card-header">
        <h5 class="card-title">
            <div class="btn-group" style="margin-top:-5px">
                <a class="btn btn-sm btn-success">Laki-Laki </a>
                <a class="btn btn-sm bg-gradient-maroon">Perempuan</a>
            </div>
        </h5>

    </div>
    <div class="card-body">
        <div class="row mb-3">
            <div class="col-sm-4">
                <div class="btn-group btn-block" style="margin-top:-5px">
                    <a class="btn btn-sm btn-secondary">Gelombang 1</a>
                    <a class="btn btn-sm btn-success text-bold"><?= jumlah('Laki-Laki', '1'); ?> </a>
                    <a class="btn btn-sm bg-gradient-maroon text-bold"><?= jumlah('Perempuan', '1'); ?> </a>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="btn-group  btn-block" style="margin-top:-5px">
                    <a class="btn btn-sm btn-secondary">Gelombang 2</a>
                    <a class="btn btn-sm btn-success text-bold"><?= jumlah('Laki-Laki', '2'); ?> </a>
                    <a class="btn btn-sm bg-gradient-maroon text-bold"><?= jumlah('Perempuan', '2'); ?> </a>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="btn-group  btn-block" style="margin-top:-5px">
                    <a class="btn btn-sm btn-secondary">Gelombang 3</a>
                    <a class="btn btn-sm btn-success text-bold"><?= jumlah('Laki-Laki', '3'); ?> </a>
                    <a class="btn btn-sm bg-gradient-maroon text-bold"><?= jumlah('Perempuan', '3'); ?> </a>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- end info jumlah peserta -->

<div class="card card-primary ">
    <div class="card-header">
        <h5 class="card-title"><?= $title; ?></h5>
        <div class="card-tools">
            <a href="<?= base_url('Admin/Peserta/data_kbm'); ?>" class="btn bg-fuchsia btn-sm">
                <i class="fa fa-arrow-right"></i> Data KBM
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
                        <label for="">Pilih Gelombang :</label>

                        <select name="tahun" id="gelombang" class="form-control">
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

        <?php
        if ($peserta !== null) {
            echo $this->include('admin/peserta/data');
        }

        ?>
    </div>

    <div class="card-footer">
        <!-- <div class="row">
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
        </script> -->
    </div>
    <!-- /.card -->
</div>




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

<script>
    function jadwal(parameter_jadwal) {
        console.log(parameter_jadwal);
        window.open(parameter_jadwal, '_blank');
    }


    function filter() {
        var isValid = true;
        var tahun_ajar = $('#tahun_ajar').val();
        var gelombang = $('#gelombang').val();

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