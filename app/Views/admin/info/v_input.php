<div class="card card-maroon card-outline">
    <div class="card-header">
        <h5 class="card-title"><?= $title; ?></h5>
        <div class="card-tools">

            <a href="<?= base_url('Admin/Info'); ?>" class="btn btn-danger btn-sm">
                <i class="fa fa-arrow-left"></i> kembali
            </a>
        </div>
    </div>
    <div class="card-body">
        <form method="post" action="<?= base_url('Admin/Info/simpan') ?>" enctype="multipart/form-data">
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="gelombang">Gelombang :</label>
                    <select name="gelombang" id="gelombang" class="form-control <?= ($validation->hasError('gelombang')) ? 'is-invalid' : ''; ?>">
                        <option value="">-Pilih Gelombang-</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                    </select>
                    <div class="invalid-feedback"><?= $validation->getError('gelombang'); ?>
                    </div>
                </div>

                <div class="form-group col-md-4">
                    <label for="tahun_ajar">Tahun Ajaran :</label>
                    <input type="text" name="tahun_ajar" class="form-control  <?= ($validation->hasError('tahun_ajar')) ? 'is-invalid' : ''; ?>" id="tahun_ajar" value=" " placeholder="">
                    <div class="invalid-feedback"><?= $validation->getError('tahun_ajar'); ?>
                    </div>
                </div>

                <div class="form-group col-md-4">
                    <label for="masa_daftar">Masa Pendaftaran :</label>
                    <input type="text" name="masa_daftar" class="form-control  <?= ($validation->hasError('masa_daftar')) ? 'is-invalid' : ''; ?>" id="masa_daftar" value=" " placeholder="">
                    <div class="invalid-feedback"><?= $validation->getError('masa_daftar'); ?>
                    </div>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="mulai_kbm">Mulai KBM :</label>
                    <input type="date" name="mulai_kbm" class="form-control  <?= ($validation->hasError('mulai_kbm')) ? 'is-invalid' : ''; ?>" id="mulai_kbm" value=" ">
                    <div class="invalid-feedback"><?= $validation->getError('mulai_kbm'); ?>
                    </div>
                </div>
                <div class=" form-group col-md-4">
                    <label for="biaya">Biaya Registrasi :</label>
                    <div class="input-group mb-2">
                        <input type="text" name="biaya" class="form-control" id="inlineFormInputGroup" placeholder="">
                    </div>
                </div>

                <div class=" form-group col-md-4">
                    <label for="wa_konfirmasi">Konfirmasi Pendaftaran :</label>
                    <div class="input-group mb-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text"><strong class="text-success">+62</strong></div>
                        </div>
                        <input type="text" name="wa_konfirmasi" class="form-control" id="inlineFormInputGroup" placeholder="8xxxxxx">
                    </div>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col-md-3">
                    <label for="launching">Tanggal Launching BBQ :</label>
                    <input type="date" name="launching" class="form-control  <?= ($validation->hasError('launching')) ? 'is-invalid' : ''; ?>" id="launching" value=" " placeholder="">
                    <div class="invalid-feedback"><?= $validation->getError('launching'); ?>
                    </div>
                </div>
                <div class=" form-group col-md-3">
                    <label for="mabit">Tanggal Mabit :</label>
                    <div class="input-group mb-2">
                        <input type="date" name="mabit" class="form-control <?= ($validation->hasError('mabit')) ? 'is-invalid' : ''; ?>" id="inlineFormInputGroup" placeholder="">
                    </div>
                </div>

                <div class=" form-group col-md-3">
                    <label for="jalasah">Tangal Jalasah :</label>
                    <div class="input-group mb-2">
                        <input type="date" name="jalasah" class="form-control <?= ($validation->hasError('jalasah')) ? 'is-invalid' : ''; ?>" id="inlineFormInputGroup" placeholder="">
                    </div>
                </div>

                <div class="form-group col-md-3">
                    <label for="talkshow">Tanggal BBQ Talkshow :</label>
                    <input type="date" name="talkshow" class="form-control  <?= ($validation->hasError('talkshow')) ? 'is-invalid' : ''; ?>" id="talkshow" value=" " placeholder="">
                    <div class="invalid-feedback"><?= $validation->getError('talkshow'); ?>
                    </div>
                </div>

            </div>

            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="nama_cp1">Narahubung 1 :</label>
                    <input type="text" name="nama_cp1" class="form-control  <?= ($validation->hasError('nama_cp1')) ? 'is-invalid' : ''; ?>" id="nama_cp1" value=" " placeholder="">
                    <div class="invalid-feedback"><?= $validation->getError('nama_cp1'); ?>
                    </div>
                </div>

                <div class=" form-group col-md-6">
                    <label for="cp1">Nomor Narahubung 1 :</label>
                    <div class="input-group mb-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text"><strong class="text-success">+62</strong></div>
                        </div>
                        <input type="number" name="cp1" class="form-control" id="inlineFormInputGroup" placeholder="8xxxxxx">
                    </div>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="nama_cp1">Narahubung 2 :</label>
                    <input type="text" name="nama_cp2" class="form-control  <?= ($validation->hasError('nama_cp2')) ? 'is-invalid' : ''; ?>" id="nama_cp2" value=" " placeholder="">
                    <div class="invalid-feedback"><?= $validation->getError('nama_cp2'); ?>
                    </div>
                </div>

                <div class=" form-group col-md-6">
                    <label for="cp2">Nomor Narahubung 2 :</label>
                    <div class="input-group mb-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text"><strong class="text-success">+62</strong></div>
                        </div>
                        <input type="number" name="cp2" class="form-control" id="inlineFormInputGroup" placeholder="8xxxxxx">
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label for="pamflet">Upload Gambar pamflet (jpg,jpeg,gif,png)</label><br>
                <input type="file" name="pamflet" class="form-control <?= ($validation->hasError('pamflet')) ? 'is-invalid' : ''; ?>">
                <div class="invalid-feedback">
                    <?= $validation->getError('pamflet'); ?>
                </div>

            </div>

            <div class="modal-footer">
                <input type="submit" value="Simpan" class="btn btn-primary">
            </div>
        </form>
    </div>
</div>