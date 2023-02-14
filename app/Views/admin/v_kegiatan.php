<button type="button" class="btn btn-success btn-sm ml-2" data-toggle="modal" data-target="#modal-add"><i class="fa fa-plus"></i> Tambah Kegiatan</button>

<div class="row">
    <?php foreach ($kegiatan as $key => $row) { ?>
        <div class="col-md-4">
            <div class="card m-2">
                <img src="<?= base_url(); ?>/template/img/kegiatan/<?= $row['foto_kegiatan']; ?>" class="card-img-top" alt="">
                <div class="card-body">
                    <h5 class="card-title">
                        <h4><?= $row['nama_kegiatan']; ?></h4>
                    </h5>
                    <p class="card-text"><?= $row['deskripsi']; ?></p>

                </div>
                <div class="card-footer">
                    <a class="btn btn-danger btn-xs" onclick="konfimasi('<?= $row['id_kegiatan']; ?>')" title="Hapus Kegiatan"><i class="fa fa-trash"></i></a>
                </div>
            </div>
        </div>
    <?php } ?>
</div>

<div class="modal fade" tabindex="1" id="modal-add">
    <div class="modal-dialog  ">
        <div class="modal-content">
            <div class="modal-header p-1 pl-3 pr-3 bg-gradient-teal">
                <h4 class="modal-title  text-center">Tambah Kegiatan</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span></button>
            </div>
            <form method="post" action="<?= base_url('Admin/Kegiatan/add') ?>" enctype="multipart/form-data">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="">Nama Kegiatan</label>
                        <input type="text" name="nama_kegiatan" class="form-control">
                        <label for="">Deskripsi</label>
                        <textarea name="deskripsi" cols="30" rows="5" class="form-control"></textarea>
                        <label for="">Foto Kegiatan</label>
                        <input type="file" name="foto_kegiatan" class="form-control">
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-info " type="submit">Update</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- MODAL HAPUs -->
<?php
foreach ($kegiatan as $key => $value) { ?>
    <script>
        function konfimasi(parameter_id) {
            Swal.fire({
                title: 'Anda Yakin?',
                text: "Hapus Kegiatan <?= $value['nama_kegiatan']; ?>",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Hapus!'
            }).then((result) => {
                if (result.isConfirmed) {
                    window.location.href = "<?= base_url('Admin/Kegiatan/delete'); ?>" + "/" + parameter_id;
                }
            })
        }
    </script>
<?php } ?>