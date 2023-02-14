<div class="row">
    <div class="col-lg-6">
        <!-- Default box -->
        <div class="card">
            <div class="card-header">
                <h3 class="card-title"><?= $title; ?></h3>

                <div class="card-tools">
                    <button class="btn btn-success btn-sm" data-toggle="modal" data-target="#add" title="Edit Password">
                        <i class="fas fa-plus"></i> add
                    </button>

                </div>
            </div>
            <div class="card-body">
                <div class="table-responsive">

                    <table class="table table-sm table-striped  text-nowrap" id="example1">
                        <thead class="">
                            <tr class="bg-maroon">
                                <th width="50px" class="text-center" scope="col">#</th>
                                <th>Nama Lengkap</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $no = 1;
                            foreach ($dosen as $key => $value) { ?>
                                <tr>
                                    <th class="text-center" scope="row"><?= $no++; ?></th>
                                    <td><?= $value['nama_dosen']; ?></td>
                                    <td>

                                        <button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#editData<?= $value['id_dosen']; ?>" title="Edit Data"><i class="fa fa-edit"></i></button>
                                        <a class="btn btn-danger btn-sm" onclick="konfimasi('<?= $value['id_dosen']; ?>')" title="Hapus Data"><i class="fa fa-trash"></i></a>
                                    </td>
                                </tr>
                            <?php } ?>

                        </tbody>
                    </table>
                </div>

            </div>
            <!-- /.card-body -->

        </div>
    </div>
</div>

<div class="modal fade" tabindex="1" id="add">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Tambah Dosen</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span></button>
            </div>
            <div class="modal-body">
                <form action="<?= base_url('Admin/Dosen/add/'); ?>" method="post">
                    <div class="form-group">
                        <label for="">Nama Lengkap</label>
                        <input type="text" name="nama_dosen" id="nama_dosen" class="form-control" required>
                    </div>
            </div>
            <div class="modal-footer bg-whitesmoke br">
                <button type="submit" type="button" class="btn btn-primary">Simpan</button>
            </div>
            </form>
        </div>
    </div>
</div>

<!-- Modal edit data -->
<?php
foreach ($dosen as $key => $value) { ?>
    <div class="modal fade" tabindex="1" id="editData<?= $value['id_dosen']; ?>">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Edit Data</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span></button>
                </div>
                <div class="modal-body">
                    <?= form_open('Admin/Dosen/ubahdata/' . $value['id_dosen']); ?>
                    <div class="form-group">
                        <label for="">Nama Lengkap</label>
                        <input type="text" name="nama_dosen" id="nama_dosen" class="form-control" value="<?= $value['nama_dosen']; ?>">
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
foreach ($dosen as $key => $value) { ?>
    <script>
        function konfimasi(parameter_id) {
            Swal.fire({
                title: 'Anda Yakin?',
                text: "Hapus data <?= $value['nama_dosen'] ?>",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Hapus!'
            }).then((result) => {
                if (result.isConfirmed) {
                    window.location.href = "<?= base_url('Admin/Dosen/delete'); ?>" + "/" + parameter_id;
                }
            })
        }
    </script>
<?php } ?>