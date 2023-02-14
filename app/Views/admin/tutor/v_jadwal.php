<div class="card card-primary card-outline">
    <div class="card-header">
        <center class="m-0"><strong>CETAK DATA TUTOR</strong></center>
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
                        <button class="btn btn-primary " id="submit" onclick="cetakTutor()"><i class="fa fa-file-excel"></i> Export Data Tutor</button>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

<div class="card card-success card-outline">
    <div class="card-header">
        <center class="m-0"><strong>CETAK DATA KELOMPOK</strong></center>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-md-8">
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
        <div class="table-responsive">
            <table class="table table-striped table-hover table-sm text-nowrap" width="100%" id="example1">
                <thead class="bg-fuchsia">
                    <tr>
                        <th width="5%" class="text-center">No</th>
                        <th width="10%">Username</th>
                        <th width="50%">Nama Tutor</th>
                        <th width="10%">Jadwal</th>
                        <th class="text-center">Gel</th>
                        <th>Peserta</th>
                        <th class=" text-center">Aksi</th>
                    </tr>
                </thead>
                <tbody class="">
                    <?php
                    $db = \Config\Database::connect();
                    foreach ($jadwal as $key => $row) { ?>
                        <?php $jml = $db->table('kelompok_kbm')->where('jadwal_id', $row['id_jadwal'])->countAllResults(); ?>
                        <tr class="">
                            <th class="text-center" scope="row"><?php echo $key + 1; ?></th>
                            <td><?php if (empty($row['id_jadwal'])) {
                                    echo 'belum dijadwalkan';
                                } else {
                                    echo $row['username'];
                                }
                                ?></td>
                            <td><?php echo $row['nama_user']; ?></td>
                            <td class=""><?php echo $row['hari']; ?> - <?php echo $row['jam']; ?></td>
                            <td class="text-center"><?= $row['gel_jadwal']; ?></td>
                            <td>
                                <a href="<?= base_url('Admin/JadwalTutor/kelompok/' . $row['id_jadwal']); ?>" class="btn btn-xs btn-success">
                                    <?= $jml; ?> | Peserta
                                </a>
                            </td>
                            <td class="text-center">
                                <button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#editData<?= $row['id_jadwal']; ?>" title="Edit Data"><i class="fa fa-edit"></i></button>
                                <abbr title="Hapus Jadwal Tutor">
                                    <a onclick="konfimasi('<?= $row['id_jadwal']; ?>')" title="Hapus Data" class="btn btn-danger btn-sm "><i class="fa fa-trash"></i></a>
                                </abbr>
                            </td>
                        </tr>
                    <?php } ?>

                </tbody>
            </table>
        </div>
    </div>
</div>


<!-- MODAL TAMBAH -->
<div class="modal fade" tabindex="1" id="add">
    <div class="modal-dialog ">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Add Jadwal</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span></button>
            </div>
            <div class="modal-body">
                <?= form_open('Admin/JadwalTutor/add') ?>
                <div class="form-group">
                    <label for="tutor">Tutor</label>
                    <select name="id_tutor" id="id_tutor" class="form-control" required>
                        <option value="">-Pilih Tutor-</option>
                        <?php foreach ($tutor as $key => $t) { ?>
                            <option value="<?= $t['id_user']; ?>"><?= $t['username'] . " - " . $t['nama_user']; ?></option>
                        <?php } ?>
                    </select>
                </div>
                <div class="form-group">
                    <label for="tutor">Waktu</label>
                    <select name="waktu_id" id="waktu_id" class="form-control" required>
                        <option value="">-Pilih Waktu-</option>
                        <?php foreach ($waktu as $key => $w) { ?>
                            <option value="<?= $w['id_waktu']; ?>"><?= $w['hari'] . " - " . $w['jam']; ?></option>
                        <?php } ?>
                    </select>
                </div>
                <div class="form-group">
                    <label for="tutor">Gelombang </label>
                    <select name="gel_jadwal" id="gel_jadwal" class="form-control" required>
                        <option value="">-Pilih gelombang-</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                    </select>
                </div>
            </div>
            <div class="modal-footer bg-whitesmoke br">
                <button type="submit" type="button" class="btn btn-primary">Simpan</button>
            </div>
            <?= form_close(); ?>
        </div>
    </div>
</div>


<!-- MODAL HAPUs -->
<?php
foreach ($jadwal as $key => $value) { ?>
    <script>
        function konfimasi(parameter_id) {
            Swal.fire({
                title: 'Anda Yakin?',
                text: "Hapus Jadwal <?= $value['nama_user'] . " [" . $value['hari']  ?>]",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Hapus!'
            }).then((result) => {
                if (result.isConfirmed) {
                    window.location.href = "<?= base_url('Admin/JadwalTutor/delete'); ?>" + "/" + parameter_id;
                }
            })
        }
    </script>
<?php } ?>

<!-- Modal edit data -->
<?php
foreach ($jadwal as $key => $value) { ?>
    <div class="modal fade" tabindex="1" id="editData<?= $value['id_jadwal']; ?>">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Edit Data</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span></button>
                </div>
                <div class="modal-body">
                    <?= form_open('Admin/JadwalTutor/ubahdata/' . $value['id_jadwal']); ?>
                    <div class="form-group">
                        <label for="tutor">Tutor</label>
                        <select name="id_tutor" id="id_tutor" class="form-control">
                            <option value="">-Pilih Tutor-</option>
                            <?php foreach ($tutor as $key => $t) { ?>
                                <option value="<?= $t['id_user']; ?>" <?= ($value['id_tutor'] == $t['id_user']) ? "selected" : ""; ?>><?= $t['username'] . " - " . $t['nama_user']; ?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="tutor">Waktu</label>
                        <select name="waktu_id" id="waktu_id" class="form-control">
                            <option value="">-Pilih Waktu-</option>
                            <?php foreach ($waktu as $key => $w) { ?>
                                <option value="<?= $w['id_waktu']; ?>" <?= ($value['waktu_id'] == $w['id_waktu']) ? "selected" : ""; ?>><?= $w['hari'] . " - " . $w['jam']; ?></option>
                            <?php } ?>
                        </select>
                    </div>
                </div>
                <div class="modal-footer bg-whitesmoke br">
                    <button type="submit" type="button" class="btn btn-primary">Simpan</button>
                </div>
                <?= form_close(); ?>
            </div>
        </div>
    </div>
<?php }
?>

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
</script>