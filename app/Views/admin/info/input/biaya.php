<div class="modal fade" tabindex="1" id="modal-biaya<?= $info['id_info']; ?>">
    <div class="modal-dialog  ">
        <div class="modal-content">
            <div class="modal-header p-1 pl-3 pr-3 bg-gradient-yellow">
                <h4 class="modal-title  text-center">REGISTRASI BBQ GELOMBANG <?= $info['gelombang']; ?></h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span></button>
            </div>
            <form method="post" action="<?= base_url('Admin/Info/update_biaya/' . $info['id_info']) ?>" enctype="multipart/form-data">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="biaya">Biaya Registrasi :</label>
                        <div class="input-group mb-2">
                            <input type="number" name="biaya" class="form-control" id="inlineFormInputGroup" value="<?= $info['biaya']; ?>">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="wa_konfirmasi">Konfirmasi Pendaftaran :</label>
                        <div class="input-group mb-2">
                            <div class="input-group-prepend">
                                <div class="input-group-text"><strong class="text-success">+62</strong></div>
                            </div>
                            <input type="text" name="wa_konfirmasi" class="form-control" id="inlineFormInputGroup" placeholder="8xxxxxx" value="<?= $info['wa_konfirmasi']; ?>">
                        </div>
                    </div>
                    <!-- <div class="form-group">
                        <label for="rek_konfirmasi">Rekening :</label>
                        <div class="input-group mb-2">
                            <input type="text" name="rek_konfirmasi" class="form-control" id="inlineFormInputGroup" value="">
                        </div>
                    </div> -->


                </div>
                <div class="modal-footer">
                    <button class="btn btn-info " type="submit">Update</button>
                </div>
            </form>
        </div>
    </div>
</div>