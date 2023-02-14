<div class="card mb-3" style="max-width: 540px;">
    <div class="row no-gutters">
        <div class="col-md-4">
            <?= (session()->get('jk') == 'Laki-Laki') ?  '<img src="' . base_url() . '/assets/img/ikhwan.jpg" class="img-circle img-fluid m-2" alt="User Image">' : '<img src="' . base_url() . '/assets/img/akhwat.jpg" class="img-circle img-fluid m-2" alt="User Image">'; ?>
        </div>
        <div class="col-md-8">
            <div class="card-body">
                <h3 class=" text-bold">Data Peserta</h3>
                <p class="card-text mb-0">NPM : <strong class="text-fuchsia"><?= $peserta['npm_peserta']; ?></strong></p>
                <p class="card-text mb-0">Nama Lengkap : <strong class=""><?= $peserta['nama_peserta']; ?></strong></p>
                <p class="card-text mb-0">Kelas : <strong class=""><?= $peserta['nama_jurusan']; ?> - <?= $peserta['kelas']; ?></strong></p>
                <p class="card-text mb-0">Gelombang : <strong class=""><?= $peserta['gelombang']; ?> </strong></p>

                <button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#edit<?= $peserta['id_peserta']; ?>" title="Edit Password"><i class="fas fa-lock text-white"></i> Edit Password</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal edit Passwrod -->

<div class="modal fade" tabindex="1" id="edit<?= $peserta['id_peserta']; ?>">
    <div class="modal-dialog modal-dialog-centered ">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Ubah Password</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span></button>
            </div>
            <div class="modal-body">
                <?= form_open('Peserta/Akun/ubahpassword/' . $peserta['id_peserta']); ?>
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