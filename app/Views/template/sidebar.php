<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-light-primary elevation-4">
    <a href="#" class="brand-link">
        <img src="<?= base_url(); ?>/template/img/brand.png" alt=" Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light"><strong>BBQ</strong> Teknokrat</span>
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
                        <a href="<?= base_url('Admin/Dashboard'); ?>" class="nav-link active">
                            <i class="nav-icon fas fa-tachometer-alt"></i>
                            <p>Dashboard</p>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a href="#" class="nav-link active">
                            <i class="nav-icon fas fa-users-cog"></i>
                            <p>
                                Peserta
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview" style="display: block;">

                            <li class="nav-item">
                                <a href="<?= base_url('Admin/Peserta'); ?>" class="nav-link">
                                    <i class="fa fa-users nav-icon"></i>
                                    <p>Data Peserta</p>
                                </a>
                            </li>

                            <li class="nav-item">
                                <a href="<?= base_url('Admin/Peserta/data_kbm'); ?>" class="nav-link">
                                    <i class="fas fa-chart-bar nav-icon"></i>
                                    <p>Data KBM</p>
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li class="nav-item">
                        <a href="#" class="nav-link active">
                            <i class="nav-icon fas fa-cogs"></i>
                            <p>
                                Kelola
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview" style="display: block;">
                            <li class="nav-item">
                                <a href="<?= base_url('Admin/Tutor'); ?>" class="nav-link">
                                    <i class="fa fa-chalkboard-teacher nav-icon"></i>
                                    <p>Tutor</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="<?= base_url('Admin/JadwalTutor'); ?>" class="nav-link">
                                    <i class="fa fa-calendar-alt nav-icon"></i>
                                    <p>Jadwal Tutor</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="<?= base_url('Admin/Info'); ?>" class="nav-link">
                                    <i class="fa fa-info-circle nav-icon"></i>
                                    <p>Informasi</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="<?= base_url('Admin/Kegiatan'); ?>" class="nav-link">
                                    <i class="fa fa-calendar-check nav-icon"></i>
                                    <p>Kegiatan</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="<?= base_url('Admin/Laporan'); ?>" class="nav-link">
                                    <i class="fa fa-list nav-icon"></i>
                                    <p>Laporan KBM</p>
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li class="nav-header">User</li>
                    <li class="nav-item">
                        <a href="<?= base_url('Admin/User'); ?>" class="nav-link active">
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
                        <a href="<?= base_url('Tutor/Dashboard'); ?>" class="nav-link active">
                            <i class="nav-icon fas fa-tachometer-alt"></i>
                            <p>Dashboard</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="<?= base_url('Tutor/Laporan'); ?>" class="nav-link active">
                            <i class="nav-icon fas fa-list"></i>
                            <p>Laporan</p>
                        </a>
                    </li>

                    <li class="nav-header">Akun</li>
                    <li class="nav-item">
                        <a href="<?= base_url('Tutor/Akun'); ?>" class="nav-link active">
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
                        <a href="<?= base_url('Peserta/Dashboard'); ?>" class="nav-link active">
                            <i class="nav-icon fas fa-tachometer-alt"></i>
                            <p>Dashboard</p>
                        </a>
                    </li>

                    <li class="nav-header">Akun</li>
                    <li class="nav-item">
                        <a href="<?= base_url('Peserta/Akun'); ?>" class="nav-link active">
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