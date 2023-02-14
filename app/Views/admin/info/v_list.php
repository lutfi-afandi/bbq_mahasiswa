<div class="content-header ">
    <h3 class="font-weight-bold text-blue"><i class="fa fa-info-circle"></i> <?= $title; ?></h3>
</div>
<?php setlocale(LC_TIME, 'id-ID', 'id_ID'); ?>
<!-- PENDAFTARAN DAN INFO -->
<div class="row">
    <div class="col-md-4">
        <div class="card card-maroon card-outline ">
            <div class="card-header ">
                <h3 class="card-title"><strong>PENDAFTARAN</strong></h3>
                <div class="card-tools mr-2">
                    <a type="button" data-toggle="modal" data-target="#"><i class="fa fa-time"></i></a>
                </div>
            </div>
            <div class="card-body">

                <div class=" table-responsive">
                    <table class="table table-striped text-center table-sm text-sm">
                        <thead class="bg-gradient-blue">
                            <tr>
                                <th>STATUS</th>
                                <th>AKSI</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><?php if ($info['status_pendaftaran'] == 1) { ?>
                                        <label class="badge badge-primary">Aktif</label>
                                    <?php    } else { ?>
                                        <label class="badge badge-danger">Non-Aktif</label>
                                    <?php } ?>
                                </td>
                                <td>
                                    <form action="<?= base_url('Admin/Info/status_pendaftaran/' . $info['id_info']); ?>" method="post">
                                        <?php if ($info['status_pendaftaran'] == 1) { ?>
                                            <input name="status_pendaftaran" type="hidden" value="0">
                                            <button class="btn btn-xs btn-danger" type="submit">Tutup</button>
                                        <?php } else { ?>
                                            <input name="status_pendaftaran" type="hidden" value="1">
                                            <button class="btn btn-xs btn-success" type="submit">Buka</button>
                                        <?php } ?>
                                    </form>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

        </div>
    </div>

    <div class="col-md-8">
        <div class="card card-maroon card-outline ">
            <div class="card-header ">
                <h3 class="card-title"><strong>INFO PENDAFTARAN</strong></h3>
                <div class="card-tools mr-2">
                    <a type="button" data-toggle="modal" data-target="#modal-time<?= $info['id_info']; ?>"><i class="fa fa-edit"></i></a>
                </div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="table-responsive">
                        <table class="table table-striped text-center table-sm  text-sm">
                            <thead class="bg-gradient-blue">
                                <tr>
                                    <th>GELOMBANG</th>
                                    <th>TAHUN AJARAN</th>
                                    <th>MASA PENDAFTARAN</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><?= $info['gelombang']; ?></td>
                                    <td><?= $info['tahun_ajar']; ?></td>
                                    <td><?= $info['masa_daftar']; ?></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <?= $this->include('admin/info/input/time'); ?>
            </div>
        </div>
    </div>

</div>

<!-- AGENDA DAN BIAYA -->
<div class="row">
    <div class="col-md-8">
        <div class="card card-maroon card-outline ">
            <div class="card-header ">
                <h3 class="card-title"><strong>AGENDA</strong></h3>
                <div class="card-tools mr-2">
                    <a type="button" data-toggle="modal" data-target="#modal-agenda<?= $info['id_info'] ?>"><i class="fa fa-edit"></i></a>
                </div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="table-responsive">
                        <table class="table table-striped text-center table-sm  text-sm">
                            <thead class="bg-gradient-blue">
                                <tr>
                                    <th>LAUNCHING</th>
                                    <th>MULAI KBM</th>
                                    <th>MABIT</th>
                                    <th>JALASAH</th>
                                    <th>TALKSHOW</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><?= strftime("%d %B %Y", strtotime($info['launching']));  ?></td>
                                    <td><?= strftime("%d %B %Y", strtotime($info['mulai_kbm']));  ?></td>
                                    <td><?= strftime("%d %B %Y", strtotime($info['mabit']));  ?></td>
                                    <td><?= strftime("%d %B %Y", strtotime($info['jalasah']));  ?></td>
                                    <td><?= strftime("%d %B %Y", strtotime($info['talkshow']));  ?></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <?= $this->include('admin/info/input/agenda'); ?>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="card card-maroon card-outline ">
            <div class="card-header ">
                <h3 class="card-title"><strong>REGISTRASI</strong></h3>
                <div class="card-tools mr-2">
                    <a type="button" data-toggle="modal" data-target="#modal-biaya<?= $info['id_info'] ?>"><i class="fa fa-edit"></i></a>
                </div>
            </div>
            <div class="card-body">
                <table class="table table-striped text-center table-sm  text-sm">
                    <thead class="bg-gradient-blue">
                        <tr>
                            <th>BIAYA</th>
                            <th>NOMOR KONFIRMASI</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <label class="btn btn-primary btn-pill"><?= $info['biaya'];  ?> K</label>
                            </td>
                            <td><?= $info['wa_konfirmasi'];  ?></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <?= $this->include('admin/info/input/biaya'); ?>
</div>

<!-- PAMFLET -->
<div class="row">
    <div class="col-md-4">
        <div class="card card-maroon card-outline ">
            <div class="card-header ">
                <h3 class="card-title"><strong>PAMFLET</strong></h3>
                <div class="card-tools mr-2">
                    <a type="button" data-toggle="modal" data-target="#modal-pamflet<?= $info['id_info'] ?>"><i class="fa fa-edit"></i></a>
                </div>
            </div>
            <div class="card-body">
                <img src="<?= base_url(); ?>/template/img/info/<?= $info['pamflet']; ?>" class="img img-thumbnail" alt="">
            </div>
        </div>
    </div>
    <?= $this->include('admin/info/input/pamflet'); ?>

    <div class="col-md-8">
        <div class="card card-maroon card-outline ">
            <div class="card-header ">
                <h3 class="card-title"><strong>NARAHUBUNG</strong></h3>
                <div class="card-tools mr-2">
                    <a type="button" data-toggle="modal" data-target="#modal-cp<?= $info['id_info'] ?>"><i class="fa fa-edit"></i></a>
                </div>
            </div>
            <div class="card-body">
                <table class="table table-striped text-center table-sm text-sm">
                    <thead class="bg-gradient-blue">
                        <tr>
                            <th>NAMA</th>
                            <th>NOMOR WA</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><strong><?= $info['nama_cp1'];  ?></strong> <sub>[IKHWAN]</sub></td>
                            <td><?= $info['cp1'];  ?></td>
                        </tr>
                        <tr>
                            <td><strong><?= $info['nama_cp2'];  ?></strong> <sub>[AKHWAT]</sub></td>
                            <td><?= $info['cp2'];  ?></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <?= $this->include('admin/info/input/cp'); ?>

    </div>
</div>