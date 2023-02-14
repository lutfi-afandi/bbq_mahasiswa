<div class="card card-maroon card-outline">
    <div class="card-header">
        <table class="table table-sm mb-0">
            <thead>
                <tr>
                    <td width="200px" class="">Nama Tutor</td>
                    <td width="10px">:</td>
                    <th><?= $tutor['nama_user']; ?></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Nomor WA</td>
                    <td>:</td>
                    <th><?= $tutor['nomor_wa']; ?></th>
                </tr>
                <tr>
                    <td>Waktu</td>
                    <td>:</td>
                    <th><?= $tutor['hari']; ?> - <?= $tutor['jam']; ?></th>
                </tr>
            </tbody>
        </table>

    </div>

    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-striped table-sm text-nowrap" id="data-table">
                <thead class="bg-gradient-success">
                    <tr>
                        <th class="text-center">#</th>
                        <th>NPM</th>
                        <th>Nama Lengkap</th>
                        <th>Jurusan - Kelas </th>
                        <th>Nomor WA </th>
                        <th>Kelancaran</th>
                        <th>Gender</th>
                    </tr>
                </thead>
                <tbody class="">
                    <?php $i = 1;
                    foreach ($peserta_kbm as $key => $row) { ?>
                        <tr class="" for="check">
                            <th class="text-center"><?php echo $i++; ?></th>
                            <td class="align-middle"><?php echo $row['npm_peserta']; ?></td>
                            <td class="align-middle"><?php echo $row['nama_peserta']; ?></td>
                            <td class="align-middle"><?php echo $row['kode_jurusan']; ?> - <?php echo $row['kelas']; ?></td>
                            <td class="align-middle">
                                <a target="_blank" href="https://api.whatsapp.com/send?phone=62<?= $row['nomor_wa'] ?>&text=Assalamu'alaikum, %0ASalam kenal, nama Saya *<?= session()->get('nama_peserta') ?>*%0AKita satu kelompok BBQ %0AYuk berangkat BBQ 😁" class="badge badge-success ">
                                <span class="text"><strong><?= "+62 " . $row['nomor_wa'] ?></strong> </span>
                            </a>
                            </td>
                            <td class="align-middle"><?php echo $row['kelancaran_mengaji']; ?></td>
                            <td class="align-middle"><?php echo $row['jk']; ?></td>

                        </tr>
                    <?php } ?>

                </tbody>
            </table>
        </div>
    </div>
</div>

<div class="card card-maroon card-outline">
    <div class="card-header">
        <h5 class="card-title">Kehadiran Peserta </h5> &nbsp; <small class="text-success"></small>
        <div class="card-tools">

        </div>
    </div>

    <div class="card-body">
        <div class="table-responsive">

            <table class="table table-striped table-bordered table-sm text-nowrap" width="100%">
                <thead class="bg-gradient-purple">
                    <tr>
                        <th  width="10%" class="text-center align-middle" rowspan="2">NPM</th>
                        <th  width="20%" class="text-center align-middle" rowspan="2">Nama</th>
                        <th class="text-center" colspan="12">Pertemuan</th>
                    </tr>
                    <tr class="text-center">
                        <th width="">1</th>
                        <th width="">2</th>
                        <th width="">3</th>
                        <th width="">4</th>
                        <th width="">5</th>
                        <th width="">6</th>
                        <th width="">7</th>
                        <th width="">8</th>
                        <th width="">9<br></th>
                        <th width="">10</th>
                        <th width="">11</th>
                        <th width="">12</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1;
                    foreach ($peserta_kbm as $key => $row) { ?>

                        <tr class="text-center">
                            <td><?= $row['npm_peserta']; ?></td>
                            <td class="text-left "><?= $row['nama_peserta']; ?></td>
                            <td><?= $row['p1']; ?></td>
                            <td><?= $row['p2']; ?></td>
                            <td><?= $row['p3']; ?></td>
                            <td><?= $row['p4']; ?></td>
                            <td><?= $row['p5']; ?></td>
                            <td><?= $row['p6']; ?></td>
                            <td><?= $row['p7']; ?></td>
                            <td><?= $row['p8']; ?></td>
                            <td><?= $row['p9']; ?></td>
                            <td><?= $row['p10']; ?></td>
                            <td><?= $row['p11']; ?></td>
                            <td><?= $row['p12']; ?></td>

                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>

    </div>
</div>