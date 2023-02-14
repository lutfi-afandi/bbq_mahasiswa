<!-- Main Sidebar Container -->
<?php $uri = current_url(true); ?>
<aside class="main-sidebar sidebar-light-primary elevation-4">
    <a href="#" class="brand-link bg-gradient-primary">
        <img src="<?= base_url(); ?>/template/img/brand.png" alt=" Logo" class="brand-image img-circle elevation-3">
        <span class="brand-text font-weight-bold text-white"><strong>BBQ</strong> Teknokrat</span>
    </a>
    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user (optional) -->
        <div class="user-panel mt-2 pb-2  d-flex">
            <div class="image">
                <?= (session()->get('jk') == 'Laki-Laki') ?  '<img src="' . base_url() . '/assets/img/ikhwan.jpg" class="img-circle elevation-2" alt="User Image">' : '<img src="' . base_url() . '/assets/img/akhwat.jpg" class="img-circle elevation-2" alt="User Image">'; ?>

            </div>
            <div class="info">
                <a href="#" class="d-block"><?= session()->get('nama_user'); ?></a>
            </div>
        </div>
        <!-- Sidebar Admin -->
        <?php if (session()->get('level') == '1') { ?>
            <nav class="mt-2">
                <ul class="nav nav-pills nav-sidebar flex-column nav-compact" data-widget="treeview" role="menu" data-accordion="false">

                    <li class="nav-item">
                        <a href="<?= base_url('Admin/Dashboard'); ?>" class="nav-link <?= ($uri->getSegment(3) == 'Dashboard' || $uri->getSegment(3) == 'Dashboard') ? 'active' : ''; ?>">
                            <i class="fa fa-tachometer-alt nav-icon "></i>
                            <p>Dashboard</p>
                        </a>
                    </li>
                    <li class="nav-header">Kelola Peserta</li>
                    <li class="nav-item">
                        <a href="<?= base_url('Admin/Peserta'); ?>" class="nav-link <?= ($uri->getSegment(3) == 'Peserta' || $uri->getSegment(3) == 'Peserta') ? 'active' : ''; ?>">
                            <i class="fa fa-users nav-icon text-<?= ($uri->getSegment(3) == 'Peserta' || $uri->getSegment(3) == 'Peserta') ? 'white' : 'primary'; ?>"></i>
                            <p>Data Peserta</p>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a href="<?= base_url('Admin/Peserta/data_kbm'); ?>" class="nav-link <?= ($uri->getSegment(4) == 'data_kbm' || $uri->getSegment(4) == 'data_kbm') ? 'active' : ''; ?>">
                            <i class="fas fa-chart-bar nav-icon text-maroon"></i>
                            <p>Data KBM</p>
                        </a>
                    </li>

                    <li class="nav-header">Kelola Tutor</li>
                    <li class="nav-item">
                        <a href="<?= base_url('Admin/Tutor'); ?>" class="nav-link <?= ($uri->getSegment(3) == 'Tutor') ? 'active' : ''; ?>">
                            <i class="fa fa-chalkboard-teacher nav-icon text-<?= ($uri->getSegment(3) == 'Tutor') ? 'white' : 'warning'; ?>"></i>
                            <p>Tutor</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="<?= base_url('Admin/JadwalTutor'); ?>" class="nav-link <?= ($uri->getSegment(3) == 'JadwalTutor') ? 'active' : ''; ?>">
                            <i class="fa fa-calendar-alt nav-icon text-<?= ($uri->getSegment(3) == 'JadwalTutor') ? 'white' : 'olive'; ?>"></i>
                            <p>Jadwal Tutor</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="<?= base_url('Admin/Laporan'); ?>" class="nav-link <?= ($uri->getSegment(3) == 'Laporan') ? 'active' : ''; ?>">
                            <i class="fa fa-list nav-icon text-<?= ($uri->getSegment(3) == 'Laporan') ? '' : 'lime'; ?>"></i>
                            <p>Laporan KBM</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="<?= base_url('Admin/Dosen'); ?>" class="nav-link <?= ($uri->getSegment(3) == 'Dosen') ? 'active' : ''; ?>">
                            <i class="fa fa-chalkboard-teacher text-<?= ($uri->getSegment(3) == 'Dosen') ? '' : 'danger'; ?> nav-icon"></i>
                            <p>Dosen</p>
                        </a>
                    </li>

                    <li class="nav-header">Setting</li>
                    <li class="nav-item">
                        <a href="<?= base_url('Admin/Info'); ?>" class="nav-link <?= ($uri->getSegment(3) == 'Info') ? 'active' : ''; ?>">
                            <i class="fa fa-info-circle nav-icon text-<?= ($uri->getSegment(3) == 'Info') ? 'white' : 'info'; ?>"></i>
                            <p>Informasi</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="<?= base_url('Admin/Kegiatan'); ?>" class="nav-link <?= ($uri->getSegment(3) == 'Kegiatan') ? 'active' : ''; ?>">
                            <i class="fa fa-calendar-check nav-icon text-<?= ($uri->getSegment(3) == 'Kegiatan') ? '' : 'cyan'; ?>"></i>
                            <p>Kegiatan</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="<?= base_url('Admin/User'); ?>" class="nav-link <?= ($uri->getSegment(3) == 'User') ? 'active' : ''; ?>">
                            <i class="nav-icon fas fa-user-cog"></i>
                            <p>Kelola Pengguna</p>
                        </a>
                    </li>

                </ul>
            </nav>
        <?php } ?>





        <!-- Sidebar Tutor -->
        <?php if (session()->get('level') == '2') { ?>
            <nav class="mt-2">
                <ul class="nav nav-pills nav-sidebar flex-column nav-compact" data-widget="treeview" role="menu" data-accordion="false">

                    <li class="nav-item">
                        <a href="<?= base_url('Tutor/Dashboard'); ?>" class="nav-link <?= ($uri->getSegment(3) == 'Dashboard') ? 'active' : ''; ?>">
                            <i class="nav-icon fas fa-tachometer-alt"></i>
                            <p>Dashboard</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="<?= base_url('Tutor/Laporan'); ?>" class="nav-link <?= ($uri->getSegment(3) == 'Laporan') ? 'active' : ''; ?>">
                            <i class="nav-icon fas fa-list"></i>
                            <p>Laporan</p>
                        </a>
                    </li>

                    <li class="nav-header">Akun</li>
                    <li class="nav-item">
                        <a href="<?= base_url('Tutor/Akun'); ?>" class="nav-link <?= ($uri->getSegment(3) == 'Akun') ? 'active' : ''; ?>">
                            <i class="nav-icon fas fa-user-cog"></i>
                            <p>Kelola akun</p>
                        </a>
                    </li>
                </ul>
            </nav>
        <?php } ?>


        <!-- Sidebar Peserta -->
        <?php if (session()->get('level') == '3') { ?>
            <nav class="mt-2">
                <ul class="nav nav-pills nav-sidebar flex-column nav-compact" data-widget="treeview" role="menu" data-accordion="false">

                    <li class="nav-item">
                        <a href="<?= base_url('Peserta/Dashboard'); ?>" class="nav-link <?= ($uri->getSegment(3) == 'Dashboard') ? 'active' : ''; ?>">
                            <i class="nav-icon fas fa-tachometer-alt"></i>
                            <p>Dashboard</p>
                        </a>
                    </li>

                    <li class="nav-header">Akun</li>
                    <li class="nav-item">
                        <a href="<?= base_url('Peserta/Akun'); ?>" class="nav-link <?= ($uri->getSegment(3) == 'Akun') ? 'active' : ''; ?>">
                            <i class="nav-icon fas fa-user-cog"></i>
                            <p>Kelola akun</p>
                        </a>
                    </li>
                </ul>
            </nav>
        <?php } ?>



        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Main content -->
    <section class="content">
        <div class="content-header">
            <div class="container-fluid">

            </div><!-- /.container-fluid -->
        </div>