<div class="col-md-12 ">
    <div class="card card-default">
        <div class="card-header bg-navy">
            <h3 class="card-title">
                <i class="fas fa-flag-checkered"></i>
                <?= $title; ?>
            </h3>
            <div class="card-tools">
                <a href="<?= base_url('Tutor/Laporan/') ?>" class="btn btn-danger btn-sm"><i class="fas fa-arrow-left"></i> back</a>
            </div>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <form enctype="multipart/form-data" class="form-horizontal" method="POST" action="<?= base_url('Tutor/Laporan/simpan/' . session()->get('id_user')); ?>">
                <div class="card-body">
                    <div class="form-group row">
                        <label for="pertemuan" class="col-sm-2 col-form-label">Pertemuan ke</label>
                        <div class="col-sm-2">
                            <input type="number" class="form-control" id="pertemuan" name="no_pertemuan" placeholder="pertemuan ke" required="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Jadwal</label>
                        <div class="col-sm-2">
                            <select class="form-control" name="id_jadwal_tutor" required="">
                                <option value="">-Pilih Jadwal-</option>
                                <?php foreach ($jadwal as $key => $jad) { ?>
                                    <option value="<?= $jad['id_jadwal']; ?>"><?= $jad['hari']; ?> - <?= $jad['jam']; ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="tanggal" class="col-sm-2 col-form-label">Tanggal</label>
                        <div class="col-sm-2">
                            <input type="date" class="form-control" id="tanggal" name="tanggal" placeholder="tanggal" required="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Jumlah Peserta</label>
                        <div class="col-sm-10">
                            <input type="num" class="form-control" name="jumlah_peserta" placeholder="jumlah peserta" required="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Hadir</label>
                        <div class="col-sm-10">
                            <input type="num" class="form-control" name="hadir" placeholder="jumlah peserta" required="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Izin</label>
                        <div class="col-sm-10">
                            <input type="num" class="form-control" name="izin" placeholder="Izin" required="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Tanpa Keterangan</label>
                        <div class="col-sm-10">
                            <input type="num" class="form-control" name="absen" placeholder="Tanpa Keterangan" required="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Materi</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="materi" placeholder="Materi" required="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Keterangan</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="keterangan_laporan" placeholder="Keterangan">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Dokumentasi</label>
                        <div class="col-sm-10">
                            <input type="file" class="form-control" name="foto_laporan" placeholder="Dokumentasi" accept=".png, .jpg, .jpeg" required="">
                        </div>
                    </div>
                </div>
                <!-- /.card-body -->
                <div class="card-footer">
                    <button type="submit" class="btn btn-info">Simpan</button>
                </div>
                <!-- /.card-footer -->
            </form>
        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
</div>