<div class="card card-info">

    <div class="card-body card-sm">
        <?php form_open_multipart('Admin/Peserta/tambah') ?>
        <div class="row card-body">
            <div class="col-md-6">
                <div class="form-group">
                    <label>NPM</label>
                    <input type="text" class="form-control" required="">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>Nama Lengkap</label>
                    <input type="text" class="form-control" required="">
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <label>Nomor WA</label>
                    <input type="number" class="form-control" required>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <label>Jurusan</label>
                    <select name="id_jurusan" id="id_jurusan" class="form-control" required>
                        <option value="">-Pilih Jurusan-</option>
                        <?php foreach ($jurusan as $key => $jur) { ?>
                            <option value="<?= $jur['id_jurusan']; ?>"><?= $jur['nama_jurusan']; ?></option>
                        <?php } ?>
                    </select>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <label>Jenis Kelamin</label>
                    <select name="jk" id="jk" class="form-control" required>
                        <option value="">-Pilih Jenis Kelamin-</option>
                        <option value="Laki-Laki">Laki-Laki</option>
                        <option value="Perempuan">Perempuan</option>
                    </select>
                </div>
            </div>
            <div class="col-md-4"></div>


        </div>
        <div class="card-footer text-right">
            <button class="btn btn-primary">Submit</button>
        </div>
        <?php form_close(); ?>

    </div>
</div>