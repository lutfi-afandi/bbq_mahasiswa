<div class="card card-primary card-outline col-md-6">
    <div class="card-header text-center p-2">
        <h5 class="text-uppercase mb-0">Pendaftaran Peserta BBQ</h5>

    </div>
    <div class="card-body ">
        <!-- Form -->
        <form class="user" method="post" action="<?= base_url('Admin/Peserta/update/' . $peserta['id_peserta']) ?>" enctype="multipart/form-data">
            <?= csrf_field() ?>
            <div class="form-group ">
                <div class="row">
                    <div class="col-sm-12 mt-2 ">
                        <label class="text-center" for="pilihGelombang">Gelombang</label>
                        <select class="custom-select mr-sm-2 <?= ($validation->hasError('gelombang')) ? 'is-invalid' : ''; ?>" name="gelombang" id="pilihGelombang">
                            <option value=" ">Pilih Gelombang BBQ</option>
                            <option value="1" <?= ($peserta['gelombang'] == '1') ? 'selected' : ''; ?>>1</option>
                            <option value="2" <?= ($peserta['gelombang'] == '2') ? 'selected' : ''; ?>>2</option>
                            <option value="3" <?= ($peserta['gelombang'] == '3') ? 'selected' : ''; ?>>3</option>
                        </select>
                        <div class="invalid-feedback">
                            <?= $validation->getError('gelombang'); ?>
                        </div>
                    </div>

                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="">NPM</label>
                        <input type="text" name="npm_peserta" class="form-control  <?= ($validation->hasError('npm_peserta')) ? 'is-invalid' : ''; ?>" id="npm_peserta" placeholder="NPM" value="<?= $peserta['npm_peserta'] ?>">
                        <div class="invalid-feedback">
                            <?= $validation->getError('npm_peserta'); ?>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="">Nama Lengkap</label>
                        <input type="text" name="nama_peserta" class="form-control <?= ($validation->hasError('nama_peserta')) ? 'is-invalid' : ''; ?>" id="exampleFirstName" placeholder="Nama Lengkap" value="<?= $peserta['nama_peserta'] ?>">
                        <div class="invalid-feedback">
                            <?= $validation->getError('nama_peserta'); ?>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="">Nomor WA</label>
                        <input type="text" name="nomor_wa" class="form-control <?= ($validation->hasError('nomor_wa')) ? 'is-invalid' : ''; ?>" id="exampleInputTelepon" placeholder="Nomor WhatsApp" value="<?= $peserta['nomor_wa'] ?>">
                        <div class="invalid-feedback">
                            <?= $validation->getError('nomor_wa'); ?>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <!-- pilihan jenis Kelamin -->
                    <div class="form-group ">
                        <label class="text-center" for="pilihJenisKelamin">Jenis Kelamin</label>
                        <select class="custom-select mr-sm-2 <?= ($validation->hasError('Jk')) ? 'is-invalid' : ''; ?>" name="Jk" id="pilihJenisKelamin">
                            <option value="">Pilih Jenis Kelamin</option>
                            <option value="Laki-Laki" <?= ($peserta['jk'] == 'Laki-Laki') ? 'selected' : ''; ?>>Laki-Laki</option>
                            <option value="Perempuan" <?= ($peserta['jk'] == 'Perempuan') ? 'selected' : ''; ?>>Perempuan</option>
                        </select>
                        <div class="invalid-feedback">
                            <?= $validation->getError('Jk'); ?>
                        </div>

                    </div>
                </div>
                <div class="col-md-12">
                    <!-- pilihan jurusan -->
                    <div class="form-group ">
                        <label class="text-center" for="pilihJurusan">Jurusan</label>
                        <select class="custom-select mr-sm-2 <?= ($validation->hasError('jurusan')) ? 'is-invalid' : ''; ?>" name="id_jurusan" id="pilihJurusan">
                            <option value="">Pilih Jurusan</option>
                            <?php foreach ($jurusan as $key => $row) { ?>
                                <option value="<?php echo $row['id_jurusan']; ?>" <?= ($peserta['id_jurusan'] == $row['id_jurusan']) ? 'selected' : ''; ?>><?= $row['nama_jurusan']; ?></option>
                            <?php } ?>
                        </select>
                        <div class="invalid-feedback">
                            <?= $validation->getError('jurusan'); ?>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <!-- pilihan Kelas -->
                    <div class="form-group ">
                        <label class="text-center" for="pilihKelas">Kelas</label>
                        <select class="custom-select mr-sm-2 <?= ($validation->hasError('kelas')) ? 'is-invalid' : ''; ?>" name="id_kelas" id="pilihKelas">
                            <option selected>Pilih Kelas</option>
                            <?php foreach ($kelas as $key => $row) { ?>
                                <option value="<?php echo $row['id_kelas']; ?>" <?= ($peserta['id_kelas'] == $row['id_kelas']) ? 'selected' : ''; ?>><?= $row['kelas']; ?></option>
                            <?php } ?>
                        </select>
                        <div class="invalid-feedback">
                            <?= $validation->getError('kelas'); ?>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <!-- pilihan Kelancaran -->
                    <div class="form-group ">
                        <label class="text-center" for="pilihKelancaran">Kelancaran Mengaji</label>
                        <select class="custom-select mr-sm-2 <?= ($validation->hasError('kelancaran_mengaji')) ? 'is-invalid' : ''; ?>" name="kelancaran_mengaji" id="pilihKelancaran">
                            <option selected>Pilih Kelancaran</option>
                            <option value="Lancar" <?= ($peserta['kelancaran_mengaji'] == 'Lancar') ? 'selected' : ''; ?>>Lancar</option>
                            <option value="Terbata Bata" <?= ($peserta['kelancaran_mengaji'] == 'Terbata Bata') ? 'selected' : ''; ?>>Terbata Bata</option>
                            <option value="Tidak Bisa Membaca" <?= ($peserta['kelancaran_mengaji'] == 'Tidak Bisa Membaca') ? 'selected' : ''; ?>>Tidak Bisa Membaca</option>
                        </select>
                        <div class="invalid-feedback">
                            <?= $validation->getError('kelancaran_mengaji'); ?>
                        </div>
                    </div>
                </div>
            </div>
            <button type="submit" class="btn btn-primary btn-user btn-block mt-2"><strong>Simpan</strong></button>
            <hr>
        </form>
    </div>
</div>