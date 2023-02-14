<div class="modal fade" tabindex="1" id="modal-cp<?= $info['id_info']; ?>">
    <div class="modal-dialog  ">
        <div class="modal-content">
            <div class="modal-header p-1 pl-3 pr-3 bg-gradient-cyan">
                <h4 class="modal-title  text-center">NARAHUBUNG BBQ <?= $info['gelombang']; ?></h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span></button>
            </div>
            <form method="post" action="<?= base_url('Admin/Info/update_cp/' . $info['id_info']) ?>" enctype="multipart/form-data">
                <div class="modal-body">
                    <div class="form-group ">
                        <label for="nama_cp1">Narahubung 1/Ikhwan :</label>
                        <input type="text" name="nama_cp1" class="form-control" value="<?= $info['nama_cp1']; ?>" placeholder="Nama CP 1/Ikhwan">
                        <div class="input-group mt-2">
                            <div class="input-group-prepend">
                                <div class="input-group-text"><strong class="text-success">+62</strong></div>
                            </div>
                            <input type="number" name="cp1" class="form-control" id="inlineFormInputGroup" placeholder="8xxxxxx" value="<?= $info['cp1']; ?>">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="nama_cp1">Narahubung 2/Akhwat :</label>
                        <input type="text" name="nama_cp2" class="form-control" value="<?= $info['nama_cp2']; ?>" placeholder="Nama CP 2/Akhwat">
                        <div class="input-group mt-2">
                            <div class="input-group-prepend">
                                <div class="input-group-text"><strong class="text-success">+62</strong></div>
                            </div>
                            <input type="number" name="cp2" class="form-control" id="inlineFormInputGroup" placeholder="8xxxxxx" value="<?= $info['cp2']; ?>">
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <button class="btn btn-info " type="submit">Update</button>
                </div>
            </form>
        </div>
    </div>
</div>