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
    <!-- DataTables -->
    <link rel="stylesheet" href="<?= base_url(); ?>/template/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">


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

                <button class="navbar-toggler order-1 text-light" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>


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
                                    <h5 class="card-title text-uppercase"> <b><?= $title; ?></b></h5>
                                    <div class="card-tools">
                                        <a href="<?= base_url('Home') ?>" class="btn btn-sm btn-success"><i class="fa fa-home"></i> Beranda</a>
                                        <a href="<?= base_url('Peserta/Register') ?>" class="btn btn-primary btn-sm"><i class="fa fa-registered"></i> Daftar</a>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-sm table-striped " id="example1">
                                            <thead>
                                                <tr class="bg-maroon">
                                                    <th scope="col">#</th>
                                                    <th class="th-sm">NPM</th>
                                                    <th class="th-sm">Nama Lengkap</th>
                                                    <th class="th-sm">Kelas</th>
                                                    <th class="th-sm">Kelancaran</th>
                                                    <th class="th-sm">Jenis Kelamin</th>
                                                    <th>Gelombang</th>
                                                    <th class="th-sm">Nama Tutor</th>
                                                    <th class="th-sm">Jadwal BBQ</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php $no = 1;
                                                foreach ($peserta as $key => $value) { ?>
                                                    <tr>
                                                        <th scope="row"><?= $no++; ?></th>
                                                        <td><?= $value['npm_peserta']; ?></td>
                                                        <td><?= $value['nama_peserta']; ?></td>
                                                        <td><?= $value['kode_jurusan'] . " - " . $value['kelas']; ?></td>
                                                        <td><?= $value['kelancaran_mengaji']; ?></td>
                                                        <td><?= $value['jk']; ?></td>
                                                        <td><?= $value['gelombang']; ?></td>
                                                        <td><?= $value['nama_user']; ?></td>
                                                        <td><?= $value['hari'] . " - " . $value['jam']; ?></td>
                                                    </tr>
                                                <?php } ?>

                                            </tbody>
                                        </table>
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
    <!-- AdminLTE App -->
    <script src="<?= base_url(); ?>/template/dist/js/adminlte.min.js"></script>
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