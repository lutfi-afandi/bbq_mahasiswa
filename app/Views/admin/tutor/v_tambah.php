<div class="row">
    <div class="col-12">
        <!-- Default box -->
        <div class="card">
            <div class="card-header pb-1 card-footer">
                <h3 class="card-title"><?= $title; ?></h3>

                <div class="card-tools">
                    <a href="<?= base_url('Admin/Tutor'); ?>" class="btn btn-warning btn-sm">
                        <i class="fa fa-arrow-left"></i> Kembali
                    </a>
                </div>
            </div>

            <div class="card-body">
                <form action="<?= base_url('Admin/Tutor/tambah'); ?>" method="POST">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group  ">
                                <label>Username</label>
                                <input type="text" name="username" required class="form-control <?= ($validation->hasError('username')) ? 'is-invalid' : ''; ?>" autofocus value="<?= old('username'); ?>">
                                <span class="error invalid-feedback"><?= $validation->getError('username'); ?></span>
                            </div>

                        </div>
                        <div class="col-md-6">
                            <div class="form-group ">
                                <label>Nama Lengkap</label>
                                <input type="text" name="nama_user" required class="form-control <?= ($validation->hasError('nama_user')) ? 'is-invalid' : ''; ?>" value="<?= old('nama_user'); ?>">
                                <span class="error invalid-feedback"><?= $validation->getError('nama_user'); ?></span>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Nomor WA</label>
                                <input type="text" name="no_wa" required class="form-control <?= ($validation->hasError('no_wa')) ? 'is-invalid' : ''; ?>" value="<?= old('no_wa'); ?>"><span class="error invalid-feedback"><?= $validation->getError('no_wa'); ?></span>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Jenis Kelamin</label>
                                <select name="jk_user" id="jk" required class="form-control <?= ($validation->hasError('jk_user')) ? 'is-invalid' : ''; ?>">
                                    <option value="">-Pilih Jenis Kelamin-</option>
                                    <option value="Laki-Laki">Laki-Laki</option>
                                    <option value="Perempuan">Perempuan</option>
                                </select>
                                <span class="error invalid-feedback"><?= $validation->getError('jk_user'); ?></span>
                            </div>
                        </div>



                    </div>
                    <div class="form-group row">
                        <div class="col-md-2">
                            <label>Keterangan</label>
                        </div>
                        <div class="col-md-10">
                            <textarea name="keterangan_user" id="keterangan_user" class="form-control <?= ($validation->hasError('keterangan_user')) ? 'is-invalid' : ''; ?>" cols="30" rows="5">
                        </textarea>
                            <span class="error invalid-feedback"><?= $validation->getError('keterangan_user'); ?></span>
                        </div>
                    </div>
            </div>
            <div class="card-footer text-right">
                <button class="btn btn-primary" type="submit">Submit</button>
            </div>
            </form>


        </div>
    </div>