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
                        <input type="text" name="tahun_ajar" class="form-control" value="<?= $info['tahun_ajar']; ?>">
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