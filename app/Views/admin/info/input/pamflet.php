<div class="modal fade" tabindex="1" id="modal-pamflet<?= $info['id_info']; ?>">
    <div class="modal-dialog  ">
        <div class="modal-content">
            <div class="modal-header p-1 pl-3 pr-3 bg-gradient-yellow">
                <h4 class="modal-title  text-center">PAMFLET BBQ GELOMBANG <?= $info['gelombang']; ?></h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span></button>
            </div>
            <form method="post" action="<?= base_url('Admin/Info/update_pamflet/' . $info['id_info']) ?>" enctype="multipart/form-data">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="pamflet">Pamflet Baru :</label>
                        <div class="input-group mb-2">
                            <input type="file" name="pamflet" class="form-control">
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