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

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

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
                                    <h4>MOHON MAAF BUKAN MASA PENDAFTARAN BBQ</h4>
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