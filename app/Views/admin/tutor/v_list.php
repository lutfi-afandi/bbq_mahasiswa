<div class="row">
    <div class="col-12">
        <!-- Default box -->
        <div class="card">
            <div class="card-header">
                <h3 class="card-title"><?= $title; ?></h3>

                <div class="card-tools">
                    <a href="<?= base_url('Admin/Tutor/add'); ?>" class="btn btn-success btn-sm">
                        <i class="fas fa-plus"></i> add
                    </a>

                </div>
            </div>
            <div class="card-body">
                <div class="table-responsive">

                    <table class="table table-sm table-striped  text-nowrap" id="example1">
                        <thead class="">
                            <tr class="bg-maroon">
                                <th width="50px" class="text-center" scope="col">#</th>
                                <th>Username</th>
                                <th>Nama Lengkap</th>
                                <th>Jenis Kelamin</th>
                                <th>Nomor WA</th>
                                <th>Keterangan</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $no = 1;
                            foreach ($tutor as $key => $value) { ?>
                                <tr>
                                    <th class="text-center" scope="row"><?= $no++; ?></th>
                                    <td><?= $value['username']; ?></td>
                                    <td><?= $value['nama_user']; ?></td>
                                    <td><?= $value['jk_user']; ?></td>
                                    <td><?= $value['no_wa']; ?></td>
                                    <td><?= $value['keterangan_user']; ?></td>
                                    <td>
                                        <button class="btn btn-warning btn-sm" data-toggle="modal" data-target="#edit<?= $value['id_user']; ?>" title="Edit Password"><i class="fas fa-lock text-white"></i></button>
                                        <button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#editData<?= $value['id_user']; ?>" title="Edit Data"><i class="fa fa-edit"></i></button>
                                        <a class="btn btn-danger btn-sm" onclick="konfimasi('<?= $value['id_user']; ?>')" title="Hapus Data"><i class="fa fa-trash"></i></a>
                                    </td>
                                </tr>
                            <?php } ?>

                        </tbody>
                    </table>
                </div>

            </div>
            <!-- /.card-body -->
            <div class="card-footer">
                <button class="btn btn-danger mt-3" onclick="myFunction()" id=" btn-delete"><i class="fa fa-exclamation-triangle"></i> Hapus Semua data</button>
                <script>
                    function myFunction() {
                        if (confirm("Anda yakin akan menghapus semua data Tutor? \n Ini tidak dapat di Batalkan!") == true) {
                            window.location.href = "<?= base_url('Admin/Tutor/delete_all'); ?>";
                        }

                    }
                </script>
            </div>
        </div>
    </div>
</div>

<!-- Modal edit Passwrod -->
<?php
foreach ($tutor as $key => $value) { ?>
    <div class="modal fade" tabindex="1" id="edit<?= $value['id_user']; ?>">
        <div class="modal-dialog modal-dialog-centered ">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Ubah Password</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span></button>
                </div>
                <div class="modal-body">
                    <?= form_open('Admin/Tutor/ubahpassword/' . $value['id_user']); ?>
                    <div class="form-group">
                        <label for="pasword">Pasword Baru</label>
                        <input type="text" name="pasbar" id="pasbar" class="form-control">
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

<!-- Modal edit data -->
<?php
foreach ($tutor as $key => $value) { ?>
    <div class="modal fade" tabindex="1" id="editData<?= $value['id_user']; ?>">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Edit Data</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span></button>
                </div>
                <div class="modal-body">
                    <?= form_open('Admin/Tutor/ubahdata/' . $value['id_user']); ?>
                    <div class="form-group">
                        <label for="username">Username</label>
                        <input type="text" name="username" id="username" class="form-control" readonly value="<?= $value['username']; ?>">
                    </div>
                    <div class="form-group">
                        <label for="">Nama Lengkap</label>
                        <input type="text" name="nama_user" id="nama_user" class="form-control" value="<?= $value['nama_user']; ?>">
                    </div>
                    <div class="form-group">
                        <label for="">Jenis Kelamin</label>
                        <select name="jk_user" id="" class="form-control">
                            <option value="">-Pilih Jenis Kelamin-</option>
                            <option value="<?= $value['jk_user']; ?>" <?= ($value['jk_user'] == 'Laki-Laki') ? 'selected' : ''; ?>>Laki-Laki</option>
                            <option value="<?= $value['jk_user']; ?>" <?= ($value['jk_user'] == 'Perempuan') ? 'selected' : ''; ?>>Perempuan</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="">Nomor WA</label>
                        <input type="number" name="no_wa" id="no_wa" class="form-control" value="<?= $value['no_wa']; ?>">
                    </div>
                    <div class="form-group">
                        <label>Keterangan</label>
                        <textarea name="keterangan_user" id="keterangan_user" class="form-control" cols="30" rows="3"><?= $value['keterangan_user']; ?></textarea>
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


<?php
foreach ($tutor as $key => $value) { ?>
    <script>
        function konfimasi(parameter_id) {
            Swal.fire({
                title: 'Anda Yakin?',
                text: "Hapus data <?= $value['nama_user'] ?>",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Hapus!'
            }).then((result) => {
                if (result.isConfirmed) {
                    window.location.href = "<?= base_url('Admin/Tutor/delete'); ?>" + "/" + parameter_id;
                }
            })
        }
    </script>
<?php } ?>