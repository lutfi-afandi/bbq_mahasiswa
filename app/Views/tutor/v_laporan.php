<div class="col-md-12 ">
    <div class="card card-default">
        <div class="card-header bg-info">
            <h3 class="card-title">
                <i class="fas fa-flag-checkered"></i>
                <?= $title; ?>
            </h3>
            <div class="card-tools">
                <a href="<?= base_url('Tutor/Laporan/add/' . session()->get('id_user')); ?>" class="btn btn-warning btn-sm"><i class="fas fa-plus"></i> add</a>
            </div>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <div class="table-responsive">

                <table class="table table-striped table-sm text-nowrap" id="data-table">
                    <thead class="bg-gradient-success">
                        <tr>
                            <th class="text-center">#</th>
                            <th>Hari</th>
                            <th>Pertemuan Ke</th>
                            <th>Tanggal </th>
                            <th>Peserta</th>
                            <th>Hadir</th>
                            <th>Izin</th>
                            <th>Absen</th>
                            <th>Materi</th>
                            <th>Keterangan</th>
                            <th>Foto</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody class="">
                        <?php $no = 1;
                        foreach ($laporan_tutor as $key => $row) { ?>
                            <tr>
                                <th><?= $no++; ?></th>
                                <td><?= $row['hari'] . "-" . $row['jam']; ?></td>
                                <td><?= $row['no_pertemuan']; ?></td>
                                <td><?php setlocale(LC_TIME, "id-ID");
                                    echo strftime("%A, %d %B %Y", strtotime($row['tanggal'])); ?></td>
                                <td><?= $row['jumlah_peserta']; ?></td>
                                <td><?= $row['hadir']; ?></td>
                                <td><?= $row['izin']; ?></td>
                                <td><?= $row['absen']; ?></td>
                                <td><?= $row['materi']; ?></td>
                                <td><?= $row['keterangan_laporan']; ?></td>
                                <td>
                                    <a class="btn btn-xs btn-warning" target="_blank" href="<?= base_url('/assets/uploads/laporan/' . $row['foto_laporan']); ?>"><i class=" fa fa-file-image"></i></a>
                                </td>
                                <td>
                                    <a class="btn btn-danger btn-xs" onclick="konfimasi('<?= $row['id_laporan']; ?>')" title="Hapus Data"><i class="fa fa-trash"></i></a>
                                </td>
                            </tr>

                        <?php } ?>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
</div>

<?php
foreach ($laporan_tutor as $key => $value) { ?>
    <script>
        function konfimasi(parameter_id) {
            Swal.fire({
                title: 'Anda Yakin?',
                text: "Hapus data",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Hapus!'
            }).then((result) => {
                if (result.isConfirmed) {
                    window.location.href = "<?= base_url('Tutor/Laporan/delete'); ?>" + "/" + parameter_id;
                }
            })
        }
    </script>
<?php } ?>