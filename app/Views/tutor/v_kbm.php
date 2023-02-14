<div class="card card-maroon card-outline">
    <div class="card-header">
        <h5 class="card-title"><?= $title; ?> </h5> &nbsp; <small class="text-success"><?= $jadwal['hari']; ?> - <?= $jadwal['jam']; ?></small>
        <div class="card-tools">
            <a href="<?= base_url('Tutor/Kbm/nilai/' . $jadwal['id_jadwal']); ?>" class="btn bg-gradient-teal btn-sm"><i class="fas fa-sort-amount-down"></i> Nilai</a>
            <a href="<?= base_url('Tutor/Kbm/absensi/' . $jadwal['id_jadwal']); ?>" class="btn btn-info btn-sm"><i class="fas fa-clipboard"></i> Absen</a>
        </div>
    </div>

    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-striped table-sm text-nowrap" id="data-table">
                <thead class="bg-gradient-success">
                    <tr>
                        <th class="text-center">#</th>
                        <th>NPM</th>
                        <th>Nama Lengkap</th>
                        <th>Kelas </th>
                        <th>Nomor WA</th>
                        <th>Kelancaran</th>
                        <th>Lunas</th>
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
                                <a target="_blank" href="https://api.whatsapp.com/send?phone=62<?= $row['nomor_wa'] ?>&text=Assalamu'alaikum, %0ASalam kenal, nama Saya *<?= session()->get('nama_user') ?>*%0AInsya Allah Saya di amanahkan untuk jadi Tutor BBQ temen-temen semuanya 😁" class="badge badge-success ">
                                    <span class="text"><strong><?= "+62 " . $row['nomor_wa'] ?></strong> </span>
                            </td>
                            <td class="align-middle"><?php echo $row['kelancaran_mengaji']; ?></td>
                            <td class="align-middle">
                                <?php if ($row['keterangan'] == 'lunas') { ?>
                                    <button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#modal-keterangan<?= $row['id_peserta']; ?>"><i class="fa fa-check text-sm"></i> </button>
                                <?php  } else { ?>
                                    <button type="button" class="btn btn-danger  btn-xs" data-toggle="modal" data-target="#modal-keterangan<?= $row['id_peserta']; ?>"><i class="fa fa-times text-sm"></i></button>
                                <?php } ?>
                            </td>
                        </tr>
                    <?php } ?>

                </tbody>
            </table>
        </div>

    </div>
</div>