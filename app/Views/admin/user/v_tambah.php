<div class="row">
    <div class="col-md-6">
        <!-- Default box -->
        <div class="card">
            <div class="card-header pb-1 card-footer">
                <h3 class="card-title"><?= $title; ?></h3>

                <div class="card-tools">
                    <a href="<?= base_url('Admin/User'); ?>" class="btn btn-warning btn-sm">
                        <i class="fa fa-arrow-left"></i> Kembali
                    </a>
                </div>
            </div>

            <div class="card-body">
                <form action="<?= base_url('Admin/User/tambah'); ?>" method="POST">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group  <?= ($validation->hasError('username')) ? 'has-error' : ''; ?>" required>
                                <label>Username</label>
                                <input type="text" name="username" class="form-control" autofocus value="<?= old('username'); ?>">
                            </div>
                            <div class="invalid-feedback">
                                <?= $validation->getError('username'); ?>
                            </div>

                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Nama Lengkap</label>
                                <input type="text" name="nama_user" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Nomor WA</label>
                                <input type="number" name="no_wa" class="form-control" required>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Jenis Kelamin</label>
                                <select name="jk_user" id="jk" class="form-control" required>
                                    <option value="">-Pilih Jenis Kelamin-</option>
                                    <option value="Laki-Laki">Laki-Laki</option>
                                    <option value="Perempuan">Perempuan</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-md-10">
                            <div class="form-group">
                                <label>Keterangan</label>
                                <textarea name="keterangan_user" id="keterangan_user" class="form-control" cols="30" rows="5"></textarea>
                            </div>
                        </div>

                    </div>
            </div>
            <div class="card-footer text-right">
                <button class="btn btn-primary" type="submit">Submit</button>
            </div>
            </form>


        </div>
    </div>