<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?= $title; ?></title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="<?= base_url(); ?>/template/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">


    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?= base_url(); ?>/template/plugins/fontawesome-free/css/all.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?= base_url(); ?>/template/dist/css/adminlte.min.css">

    <link rel="stylesheet" href="<?= base_url(); ?>/template/dist/css/skins/_all-skins.min.css">

    <link rel="icon" type="image/x-icon" href="<?php echo base_url(); ?>/template/img/logo.png">

    <!-- ION ICON -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">

    <!-- SweetAlert -->

    <link rel="stylesheet" href="<?= base_url(); ?>/template/vendor/package/dist/sweetalert2.min.css">


    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

<body class="hold-transition layout-top-nav">
    <div class="wrapper">

        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand-md  navbar-light  navbar-primary">
            <div class="container">
                <a href="" class="navbar-brand">
                    <img src="<?= base_url(); ?>/template/img/brand.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .9">
                    <span class="brand-text font-weight-light text-light"><strong>BBQ</strong> Teknokrat</span>
                </a>

            </div>
        </nav>
        <!-- /.navbar -->

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container">

                </div><!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->

            <!-- Main content -->
            <div class="content">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card card-primary card-outline">
                                <div class="card-header">
                                    <h5 class="card-title text-uppercase"><?= $title; ?></h5>
                                    <div class="card-tools">
                                        <a href="<?= base_url('Home') ?>" class="btn btn-sm btn-success"><i class="fa fa-home"></i> Beranda</a>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <!-- Form -->
                                    <form class="user" method="post" action="<?= base_url('Peserta/Register/add') ?>" enctype="multipart/form-data">
                                        <?= csrf_field() ?>

                                        <div class="row">
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label class="text-center" for="pilihGelombang">Gelombang</label>
                                                    <input type="hidden" name="gelombang" value="<?= $gelombang; ?>">
                                                    <select class="custom-select  <?= ($validation->hasError('gelombang')) ? 'is-invalid' : ''; ?>" name="gelombang1" id="pilihGelombang" disabled>
                                                        <option value="">Pilih Gelombang BBQ</option>
                                                        <option value="1" <?= ($gelombang == '1') ? 'selected' : ''; ?>>1</option>
                                                        <option value="2" <?= ($gelombang == '2') ? 'selected' : ''; ?>>2</option>
                                                        <option value="3" <?= ($gelombang == '3') ? 'selected' : ''; ?>>3</option>
                                                    </select>
                                                    <div class="invalid-feedback">
                                                        <?= $validation->getError('gelombang'); ?>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="">Nama Dosen</label>
                                                    <select class="custom-select " name="dosen_id" id="pilihJurusan" required>
                                                        <option value="">Pilih Dosen</option>
                                                        <?php foreach ($dosen as $key => $row) { ?>
                                                            <option value="<?php echo $row['id_dosen']; ?>" <?= (old('dosen_id') == $row['id_dosen']) ? 'selected' : ''; ?>><?= $row['nama_dosen']; ?></option>
                                                        <?php } ?>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="">NPM</label>
                                                    <input type="text" name="npm_peserta" class="form-control  <?= ($validation->hasError('npm_peserta')) ? 'is-invalid' : ''; ?>" id="npm_peserta" placeholder="NPM" value="<?= old('npm_peserta'); ?>" required>
                                                    <div class="invalid-feedback">
                                                        <?= $validation->getError('npm_peserta'); ?>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="">Nama Lengkap</label>
                                                    <input type="text" name="nama_peserta" class="form-control <?= ($validation->hasError('nama_peserta')) ? 'is-invalid' : ''; ?>" id="exampleFirstName" placeholder="Nama Lengkap" value="<?= old('nama_peserta'); ?>" required>
                                                    <div class="invalid-feedback">
                                                        <?= $validation->getError('nama_peserta'); ?>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="">Nomor WA</label> <small class="text-danger">*(08xxxx)</small>
                                                    <input type="number" name="nomor_wa" class="form-control <?= ($validation->hasError('nomor_wa')) ? 'is-invalid' : ''; ?>" id="exampleInputTelepon" placeholder="Nomor WhatsApp" value="<?= old('nomor_wa'); ?>" required>
                                                    <div class="invalid-feedback">
                                                        <?= $validation->getError('nomor_wa'); ?>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <!-- pilihan jenis Kelamin -->
                                                <div class="form-group ">
                                                    <label class="text-center" for="pilihJenisKelamin">Jenis Kelamin</label>
                                                    <select class="custom-select mr-sm-2 <?= ($validation->hasError('Jk')) ? 'is-invalid' : ''; ?>" name="Jk" id="pilihJenisKelamin" required>
                                                        <option value="">Pilih Jenis Kelamin</option>
                                                        <option value="Laki-Laki" <?= (old('Jk') == 'Laki-Laki') ? 'selected' : ''; ?>>Laki-Laki</option>
                                                        <option value="Perempuan" <?= (old('Jk') == 'Perempuan') ? 'selected' : ''; ?>>Perempuan</option>
                                                    </select>
                                                    <div class="invalid-feedback">
                                                        <?= $validation->getError('Jk'); ?>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <!-- pilihan jurusan -->
                                                <div class="form-group ">
                                                    <label class="text-center" for="pilihJurusan">Jurusan</label>
                                                    <select class="custom-select mr-sm-2 <?= ($validation->hasError('id_jurusan')) ? 'is-invalid' : ''; ?>" name="id_jurusan" id="pilihJurusan" required>
                                                        <option value="">Pilih Jurusan</option>
                                                        <?php foreach ($jurusan as $key => $row) { ?>
                                                            <option value="<?= $row['id_jurusan']; ?>" <?= (old('id_jurusan') == $row['id_jurusan']) ? 'selected' : ''; ?>><?= $row['nama_jurusan']; ?></option>
                                                        <?php } ?>
                                                    </select>
                                                    <div class="invalid-feedback">
                                                        <?= $validation->getError('id_jurusan'); ?>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <!-- pilihan Kelas -->
                                                <div class="form-group ">
                                                    <label class="text-center" for="pilihKelas">Kelas</label>
                                                    <select class="custom-select mr-sm-2 <?= ($validation->hasError('id_kelas')) ? 'is-invalid' : ''; ?>" name="id_kelas" id="pilihKelas" required>
                                                        <option value="">Pilih Kelas</option>
                                                        <?php foreach ($kelas as $key => $row) { ?>
                                                            <option value="<?php echo $row['id_kelas']; ?>" <?= (old('id_kelas') == $row['id_kelas']) ? 'selected' : ''; ?>><?= $row['kelas']; ?></option>
                                                        <?php } ?>
                                                    </select>
                                                    <div class="invalid-feedback">
                                                        <?= $validation->getError('id_kelas'); ?>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <!-- pilihan Kelancaran -->
                                                <div class="form-group ">
                                                    <label class="text-center" for="pilihKelancaran">Kelancaran Mengaji</label>
                                                    <select class="custom-select mr-sm-2 <?= ($validation->hasError('kelancaran_mengaji')) ? 'is-invalid' : ''; ?>" name="kelancaran_mengaji" id="pilihKelancaran" required>
                                                        <option value="">Pilih Kelancaran</option>
                                                        <option value="Lancar" <?= (old('kelancaran_mengaji') == 'Lancar') ? 'selected' : ''; ?>>Lancar</option>
                                                        <option value="Terbata Bata" <?= (old('kelancaran_mengaji') == 'Terbata Bata') ? 'selected' : ''; ?>>Terbata Bata</option>
                                                        <option value="Tidak Bisa Membaca" <?= (old('kelancaran_mengaji') == 'Tidak Bisa Membaca') ? 'selected' : ''; ?>>Tidak Bisa Membaca</option>
                                                    </select>
                                                    <div class="invalid-feedback">
                                                        <?= $validation->getError('kelancaran_mengaji'); ?>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="jadwal">Upload Gambar Jadwal Kuliah <small class="text-danger">(jpg,jpeg,gif,png)</small> </label><br>
                                                    <input type="file" accept="image/*" name="jadwal_kuliah" class="form-control <?= ($validation->hasError('jadwal_kuliah')) ? 'is-invalid' : ''; ?>" value="<?= old('jadwal_kuliah'); ?>" required>
                                                    <div class="invalid-feedback">
                                                        <?= $validation->getError('jadwal_kuliah'); ?>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-primary btn-user  mt-2"><strong>Submit Data Pendaftaran</strong></button>
                                        <hr>
                                    </form>
                                    <div class="col-md-12 d-flex justify-content-md-center">
                                        <a href="<?php echo base_url('Peserta/Register/data_peserta') ?>" class="btn btn-success btn-icon-split float-right">
                                            <span class="icon d-flex align-middle align-items-center">
                                                <i class="fas fa-clipboard-list-check"></i>
                                            </span>
                                            <span class="text">Sudah daftar? lihat data pendaftar </span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->

        <!-- Main Footer -->

        <!-- /.content-wrapper -->
        <footer class="main-footer">
            <div class="float-right d-none d-sm-block">
                <b>Version</b> 2.0.0
            </div>
            <strong>Copyright &copy; 2021 <a href="#">Kader Terbaik</a>.</strong> UKMI Ar-Rahman
        </footer>
    </div>

    <!-- jQuery -->
    <script src="<?= base_url(); ?>/template/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="<?= base_url(); ?>/template/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- DataTables -->
    <!-- DataTables  & Plugins -->
    <script src="<?= base_url(); ?>/template/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="<?= base_url(); ?>/template/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
    <script src="<?= base_url(); ?>/template/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
    <script src="<?= base_url(); ?>/template/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
    <script src="<?= base_url(); ?>/template/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
    <script src="<?= base_url(); ?>/template/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
    <script src="<?= base_url(); ?>/template/plugins/jszip/jszip.min.js"></script>
    <script src="<?= base_url(); ?>/template/plugins/pdfmake/pdfmake.min.js"></script>
    <script src="<?= base_url(); ?>/template/plugins/pdfmake/vfs_fonts.js"></script>
    <script src="<?= base_url(); ?>/template/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
    <script src="<?= base_url(); ?>/template/plugins/datatables-buttons/js/buttons.print.min.js"></script>
    <script src="<?= base_url(); ?>/template/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
    <!-- AdminLTE App -->
    <script src="<?= base_url(); ?>/template/dist/js/adminlte.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <!-- <script src="<?= base_url(); ?>/template/dist/js/demo.js"></script> -->
    <!-- page script -->
    <script>
        $(function() {
            $('#example1').DataTable()
            $('#example').DataTable({
                'paging': true,
                'lengthChange': false,
                'searching': false,
                'ordering': true,
                'info': true,
                'autoWidth': false
            })
        })
    </script>

    <script>
        window.setTimeout(function() {
            $(".alert").fadeTo(500, 0).slideUp(500, function() {
                $(this).remove();
            })
        }, 2500);
    </script>

    <script>
        function bacaGambar(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function(e) {
                    $('gambar_load').attr('src', e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }

        $('#preview_gambar').change(function() {
            bacaGambar(this);
        });
    </script>

    <!-- <script src="<?= base_url(); ?>/template/vendor/package/dist/sweetalert2.min.js"></script> -->
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        <?php if (session()->getFlashdata('swal_icon')) { ?>
            Swal.fire({
                icon: '<?= session()->getFlashdata('swal_icon'); ?>',
                title: '<?= session()->getFlashdata('swal_title'); ?>',
                text: '<?= session()->getFlashdata('swal_text'); ?>',
            })
        <?php } ?>


        // Swal.fire({
        //     icon: 'warning',
        //     title: 'Oops...',
        //     text: 'Something went wrong!',
        //     footer: '<a href="">Why do I have this issue?</a>'
        // })
    </script>
</body>

</html>