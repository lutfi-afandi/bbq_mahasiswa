<div class="modal fade" tabindex="1" id="modal-agenda<?= $info['id_info']; ?>">
    <div class="modal-dialog  ">
        <div class="modal-content">
            <div class="modal-header p-1 pl-3 pr-3 bg-gradient-cyan">
                <h4 class="modal-title  text-center">Jadwal Agenda BBQ <?= $info['gelombang']; ?></h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span></button>
            </div>
            <form method="post" action="<?= base_url('Admin/Info/update_agenda/' . $info['id_info']) ?>" enctype="multipart/form-data">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="">LAUNCHING</label>
                        <input type="date" name="launching" class="form-control" id="" value="<?= $info['launching']; ?>">
                    </div>
                    <div class="form-group">
                        <label for="">MULAI KBM</label>
                        <input type="date" name="mulai_kbm" class="form-control" id="" value="<?= $info['mulai_kbm']; ?>">
                    </div>
                    <div class="form-group">
                        <label for="">MABIT</label>
                        <input type="date" name="mabit" class="form-control" id="" value="<?= $info['mabit']; ?>">
                    </div>
                    <div class="form-group">
                        <label for="">JALASAH</label>
                        <input type="date" name="jalasah" class="form-control" id="" value="<?= $info['jalasah']; ?>">
                    </div>
                    <div class="form-group">
                        <label for="">TALKSHOW</label>
                        <input type="date" name="talkshow" class="form-control" id="" value="<?= $info['talkshow']; ?>">
                    </div>

                </div>
                <div class="modal-footer">
                    <button class="btn btn-info " type="submit">Update</button>
                </div>
            </form>
        </div>
    </div>
</div>