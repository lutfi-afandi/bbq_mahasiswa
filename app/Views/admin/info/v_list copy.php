<div class="card card-maroon card-outline ">
    <div class="card-header">
        <h5 class="text-danger font-weight-bold"><i class="fa fa-info-circle"></i> <?= $title; ?></h5>
    </div>

    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-striped table-hover table-sm text-nowrap" id="">
                <thead class="bg-maroon">
                    <tr>
                        <th class="text-center">No</th>
                        <th>Gel</th>
                        <th>TA</th>
                        <th>Status Pendaftaran</th>
                        <th>Pendaftaran</th>
                        <th>CP1</th>
                        <th>CP2</th>
                        <th>Pamflet</th>
                        <th class=" text-center">Aksi</th>
                    </tr>
                </thead>
                <tbody class="">
                    <?php
                    $no = 1;
                    $db = \Config\Database::connect();
                    foreach ($info as $key => $row) { ?>
                        <tr>
                            <th class="text-center"><?= $no++; ?></th>
                            <td><?= $row['gelombang']; ?></td>
                            <td><?= $row['tahun_ajar']; ?></td>
                            <td class="">
                                <form action="<?= base_url('Admin/Info/status_pendaftaran/' . $row['id_info']); ?>" method="post">
                                    <?php if ($row['status_pendaftaran'] == 1) { ?>
                                        <input name="status_pendaftaran" type="hidden" value="0">
                                        <label class="text-success">Aktif</label> &ensp;
                                        <button class="btn btn-xs btn-danger" type="submit">Tutup</button>
                                    <?php } else { ?>
                                        <input name="status_pendaftaran" type="hidden" value="1">
                                        <label class="text-danger">Ditutup</label> &ensp;
                                        <button class="btn btn-xs btn-success" type="submit">Buka</button>
                                    <?php } ?>
                                </form>
                            </td>
                            <td><?= $row['masa_daftar']; ?></td>
                            <td><?= $row['cp1']; ?></td>
                            <td><?= $row['cp2']; ?></td>
                            <td>
                                <button type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target="#modal-info<?= $row['id_info']; ?>"><i class="fa fa-file-image"></i></button>
                            </td>
                            <td class="text-center">
                                <button title="Ganti Pamflter" type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target="#modal-edit<?= $row['id_info']; ?>"><i class="fa fa-file"></i></button>
                                <a href="<?= base_url('Admin/Info/edit/' . $row['id_info']); ?>" class="btn btn-warning btn-xs" title="Hapus Info"><i class="fa fa-edit text-white"></i></a>
                                <a class="btn btn-danger btn-xs" onclick="konfimasi('<?= $row['id_info']; ?>')" title="Hapus Info"><i class="fa fa-trash"></i></a>
                            </td>
                        </tr>
                    <?php } ?>

                </tbody>
            </table>
        </div>
    </div>
</div>

<!-- MODAL HAPUs -->
<?php
foreach ($info as $key => $value) { ?>
    <script>
        function konfimasi(parameter_id) {
            Swal.fire({
                title: 'Anda Yakin?',
                text: "Hapus Info",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Hapus!'
            }).then((result) => {
                if (result.isConfirmed) {
                    window.location.href = "<?= base_url('Admin/Info/delete'); ?>" + "/" + parameter_id;
                }
            })
        }
    </script>
<?php } ?>

<!-- Modal Ubah gambar -->
<?php
foreach ($info as $key => $value) { ?>
    <div class="modal fade" tabindex="1" id="modal-edit<?= $value['id_info']; ?>">
        <div class="modal-dialog  ">
            <div class="modal-content">
                <div class="modal-header p-1 pl-3 pr-3 bg-gradient-teal">
                    <h4 class="modal-title  text-center">Ganti Pamflet Gelombang <?= $value['gelombang']; ?></h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span></button>
                </div>
                <form method="post" action="<?= base_url('Admin/Info/ubahgambar/' . $value['id_info']) ?>" enctype="multipart/form-data">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="">Pilih gambar pamflet baru</label>
                            <input type="file" name="pamflet" id="pamflet" class="form-control">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-info " type="submit">Update</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
<?php }
?>

<!-- Modal FUll Info -->
<?php
foreach ($info as $key => $value) {
    setlocale(LC_TIME, 'id-ID', 'id_ID'); ?>
    <div class="modal fade" tabindex="1" id="modal-info<?= $value['id_info']; ?>">
        <div class="modal-dialog  modal-dialog-scrollable modal-lg">
            <div class="modal-content">
                <div class="modal-header p-1 pl-3 pr-3 bg-gradient-teal">
                    <h4 class="modal-title  text-center">Pamflet Gelombang <?= $value['gelombang']; ?></h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span></button>
                </div>
                <div class="modal-body">
                    <table class="table table-sm">
                        <thead>
                            <tr>
                                <th width="170px">Gelombang</th>
                                <th width="50px">:</th>
                                <th> <?= $value['gelombang']; ?></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Tahun Ajaran</td>
                                <td>:</td>
                                <td><?= $value['tahun_ajar']; ?></td>
                            </tr>
                            <tr>
                                <td>Masa Pendaftaran</td>
                                <td>:</td>
                                <td><?= $value['masa_daftar']; ?></td>
                            </tr>
                            <tr>
                                <td>Biaya Pendaftaran</td>
                                <td>:</td>
                                <td><?= $value['biaya']; ?></td>
                            </tr>
                            <tr>
                                <td>Nomor Konfirmasi</td>
                                <td>:</td>
                                <td><?= $value['wa_konfirmasi']; ?></td>
                            </tr>
                            <tr>
                                <td>Mulai KBM</td>
                                <td>:</td>
                                <td><?php echo $tgl = strftime("%d %B %Y", strtotime($value['mulai_kbm'])); ?></td>
                            </tr>
                            <tr>
                                <td>Launching</td>
                                <td>:</td>
                                <td><?= strftime("%d %B %Y", strtotime($value['launching']));  ?></td>
                            </tr>
                            <tr>
                                <td>Mabit</td>
                                <td>:</td>
                                <td><?= strftime("%d %B %Y", strtotime($value['mabit']));  ?></td>
                            </tr>
                            <tr>
                                <td>Jalasah</td>
                                <td>:</td>
                                <td><?= strftime("%d %B %Y", strtotime($value['jalasah']));  ?></td>
                            </tr>
                            <tr>
                                <td>Talkshow</td>
                                <td>:</td>
                                <td><?= strftime("%d %B %Y", strtotime($value['talkshow']));  ?></td>
                            </tr>
                            <tr>
                                <td>Contact Person 1</td>
                                <td>:</td>
                                <td><?= $value['nama_cp1']; ?></td>
                            </tr>
                            <tr>
                                <td>Contact Person 2</td>
                                <td>:</td>
                                <td><?= $value['nama_cp2']; ?></td>
                            </tr>
                        </tbody>
                    </table>
                    <iframe src="<?= base_url(); ?>/template/img/info/<?= $value['pamflet']; ?>" width="100%" height="500px" frameborder="0"></iframe>
                </div>
            </div>
        </div>
    </div>
<?php }
?>