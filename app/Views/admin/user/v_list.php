<div class="row">
    <div class="col-12">
        <!-- Default box -->
        <div class="card">
            <div class="card-header">
                <h3 class="card-title"><?= $title; ?></h3>

                <div class="card-tools">
                    <a href="<?= base_url('Admin/User/add'); ?>" class="btn btn-success btn-sm">
                        <i class="fas fa-plus"></i> add
                    </a>

                </div>
            </div>
            <div class="card-body">
                <div class="table-responsive">

                    <table class="table table-sm table-striped text-nowrap" id="">
                        <thead>
                            <tr class=" bg-teal">
                                <th width="50px" class="text-center" scope="col">#</th>
                                <th>Username</th>
                                <th>Nama Lengkap</th>
                                <th>Jenis Kelamin</th>
                                <th>Nomor WA</th>
                                <th>Peran</th>
                                <th>Keterangan</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $no = 1;
                            foreach ($user as $key => $value) { ?>
                                <tr>
                                    <th class="text-center" scope="row"><?= $no++; ?></th>
                                    <td><?= $value['username']; ?></td>
                                    <td><?= $value['nama_user']; ?></td>
                                    <td><?= $value['jk_user']; ?></td>
                                    <td><?= $value['no_wa']; ?></td>
                                    <td>
                                        <?php if ($value['level'] == '1') {
                                            echo 'Admin';
                                        } elseif ($value['level'] == '2') {
                                            echo 'Tutor';
                                        } else {
                                            echo "Peserta";
                                        }
                                        ?>
                                    </td>
                                    <td><?= $value['keterangan_user']; ?></td>
                                    <td>
                                        <button class="btn btn-warning btn-sm" data-toggle="modal" data-target="#edit<?= $value['id_user']; ?>" title="Edit Password"><i class="fas fa-lock text-white"></i></button>
                                        <button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#editData<?= $value['id_user']; ?>" title="Edit Data"><i class="fa fa-edit"></i></button>
                                        <a class="btn btn-danger btn-sm" href="#" onclick="konfimasi('<?= $value['id_user']; ?>')" title="Hapus Data"><i class="fa fa-trash"></i></a>
                                    </td>
                                </tr>
                            <?php } ?>

                        </tbody>
                    </table>
                </div>

            </div>
            <!-- /.card-body -->
            <div class="card-footer">

            </div>
        </div>
    </div>
</div>

<!-- Modal edit Passwrod -->
<?php
foreach ($user as $key => $value) { ?>
    <div class="modal fade" tabindex="1" id="edit<?= $value['id_user']; ?>">
        <div class="modal-dialog modal-dialog-centered ">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Ubah Password</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span></button>
                </div>
                <div class="modal-body">
                    <?= form_open('Admin/User/ubahpassword/' . $value['id_user']); ?>
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
foreach ($user as $key => $value) { ?>
    <div class="modal fade" tabindex="1" id="editData<?= $value['id_user']; ?>">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span></button>
                    <h4 class="modal-title">Edit Data</h4>
                </div>
                <div class="modal-body">
                    <?= form_open('Admin/User/ubahdata/' . $value['id_user']); ?>
                    <div class="form-group">
                        <label for="username">Username</label>
                        <input type="text" name="username" id="username" class="form-control" value="<?= $value['username']; ?>">
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
foreach ($user as $key => $value) { ?>
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
                    window.location.href = "<?= base_url('Admin/User/delete'); ?>" + "/" + parameter_id;
                }
            })
        }
    </script>
<?php } ?>