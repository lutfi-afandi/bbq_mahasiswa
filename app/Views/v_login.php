<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?= $title; ?></title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?= base_url(); ?>/template/plugins/fontawesome-free/css/all.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?= base_url(); ?>/template/dist/css/adminlte.min.css">

    <link rel="stylesheet" href="<?= base_url(); ?>/template/dist/css/skins/_all-skins.min.css">

    <link rel="icon" type="image/x-icon" href="<?php echo base_url(); ?>/template/img/logo.png">

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

<body style="background-image: url('<?= base_url(); ?>/template/img/cover.png'); background-position: center;
    background-repeat: no-repeat;
    background-size: cover; " class="hold-transition login-page">
    <div class="login-box">
        <div class="card-body bg-gray-light">

            <div class="login-logo">
                <img src="<?php echo base_url(); ?>/template/img/logo.png" alt="" width="50px">
            </div>
        </div>
        <!-- /.login-logo -->
        <div class="card-body login-card-body">
            <p class="login-box-msg">Silahkan Login</p>



            <?= form_open('Login/cek_login') ?>
            <div class="form-group has-feedback">
                <input autofocus type="text" class="form-control <?= ($validation->hasError('username')) ? "is-invalid" : ""; ?>" placeholder="Username" name="username" value="<?= old('username'); ?>">
                <span class="error invalid-feedback"><?= $validation->getError('username'); ?></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" class="form-control <?= ($validation->hasError('password')) ? "is-invalid" : ""; ?>" name="password" placeholder="Password" value="<?= old('password'); ?>">
                <span class="error invalid-feedback"><?= $validation->getError('password'); ?></span>
            </div>

            <!-- <div class="form-group ">
                <select name="level" id="level" class="form-control">
                    <option value="">-Pilih Level-</option>
                    <option value="1">Admin</option>
                    <option value="2">Tutor</option>
                    <option value="3">Peserta</option>
                </select>
            </div> -->

            <div class="col-xs-12">
                <button type="submit" class="btn btn-block btn-primary"><i class="fa fa-sign-in-alt"></i> Login</button>
                <a href="<?= base_url('Home') ?>" class="btn btn-block btn-success"><i class="fa fa-home"></i> Beranda</a>
            </div>
            <?= form_close(); ?>
        </div>
        <br><br><br>
        <!-- /.login-box-body -->
    </div>
    <!-- /.login-box -->

    <!-- jQuery -->
    <script src="<?= base_url(); ?>/template/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="<?= base_url(); ?>/template/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- iCheck -->
    <script src="<?= base_url(); ?>/template/plugins/iCheck/icheck.min.js"></script>
    <script>
        $(function() {
            $('input').iCheck({
                checkboxClass: 'icheckbox_square-blue',
                radioClass: 'iradio_square-blue',
                increaseArea: '20%' /* optional */
            });
        });
    </script>

    <script>
        window.setTimeout(function() {
            $(".alert").fadeTo(500, 0).slideUp(500, function() {
                $(this).remove();
            })
        }, 1500);
    </script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        <?php if (session()->getFlashdata('swal_icon')) { ?>
            Swal.fire({
                icon: '<?= session()->getFlashdata('swal_icon'); ?>',
                title: '<?= session()->getFlashdata('swal_title'); ?>',
                text: '<?= session()->getFlashdata('swal_text'); ?>',
                showConfirmButton: false,
                timer: 1500
            })
        <?php } ?>
    </script>
</body>

</html>