<div class="modal fade" tabindex="1" id="modal-time<?= $info['id_info']; ?>">
    <div class="modal-dialog  ">
        <div class="modal-content">
            <div class="modal-header p-1 pl-3 pr-3 bg-gradient-teal">
                <h4 class="modal-title  text-center">TIMELINE PENDAFTARAN <?= $info['gelombang']; ?></h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span></button>
            </div>
            <form method="post" action="<?= base_url('Admin/Info/update_time/' . $info['id_info']) ?>" enctype="multipart/form-data">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="">Gelombang</label>
                        <select name="gelombang" id="gelombang" class="form-control">
                            <option value="1" <?= ($info['gelombang'] == '1') ? 'selected' : ''; ?>>1</option>
                            <option value="2" <?= ($info['gelombang'] == '2') ? 'selected' : ''; ?>>2</option>
                            <option value="3" <?= ($info['gelombang'] == '3') ? 'selected' : ''; ?>>3</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="">Tahun Ajaran</label>
                        <?php
                        $tahunSekarang = date("Y") + 1;
                        $daftarTahun = range(2020, $tahunSekarang);
                        $daftarTahun = array_reverse($daftarTahun);
                        ?>
                        <select name="tahun_ajar" id="tahun_ajar" class="form-control">
                            <option value="" hidden>Pilih Tahun Ajar</option>
                            <?php foreach ($daftarTahun as $tahun) {
                                $tahunDepan = $tahun + 1;
                                $tahun_ajar = $tahun . '/' . $tahunDepan; ?>
                                <option value="<?= $tahun_ajar; ?>" <?= ($tahun_ajar == $info['tahun_ajar']) ? 'selected' : ''; ?>>
                                    <?= $tahun_ajar; ?>
                                </option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="">Masa Pendaftaran</label>
                        <input type="text" name="masa_daftar" class="form-control" value="<?= $info['masa_daftar']; ?>">
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-info " type="submit">Update</button>
                </div>
            </form>
        </div>
    </div>
</div>