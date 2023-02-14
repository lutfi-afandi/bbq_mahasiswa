<div class="row">

    <div class="col-lg-3 col-xs-6">

        <div class="small-box bg-<?= $warna[0] ?>">
            <div class="inner">
                <a href="<?= base_url('Admin/tutor'); ?>" style="text-decoration: none; color: currentColor;">
                    <h3>Tutor</h3>
                    <p>BBQ</p>
            </div>
            <div class="icon">
                <i class="fa fa-chalkboard-teacher"></i>
            </div>
            </a>
        </div>
    </div>

    <div class="col-lg-3 col-xs-6">
        <div class="small-box bg-<?= $warna[1] ?>">
            <div class="inner">
                <a href="<?= base_url('Admin/Peserta'); ?>" style="text-decoration: none; color: currentColor;">
                    <h3>Peserta</h3>
                    <p>BBQ</p>
            </div>
            <div class="icon">
                <i class="fa fa-users"></i>
            </div>
            </a>
        </div>
    </div>

    <div class="col-lg-3 col-xs-6">
        <div class="small-box bg-<?= $warna[2] ?>">
            <div class="inner">
                <a href="<?= base_url('Admin/JadwalTutor'); ?>" style="text-decoration: none; color: currentColor;">
                    <h3>Jadwal Tutor</h3>
                    <p>BBQ</p>
            </div>
            <div class="icon">
                <i class="fa fa-calendar-alt"></i>
            </div></a>
        </div>
    </div>

    <div class="col-lg-3 col-xs-6">
        <div class="small-box bg-<?= $warna[3] ?>">
            <div class="inner">
                <a href="<?= base_url('Admin/info'); ?>" style="text-decoration: none; color: currentColor;">
                    <h3>Informasi</h3>
                    <p>BBQ</p>
            </div>
            <div class="icon">
                <i class="fa fa-info-circle"></i>
            </div></a>
        </div>
    </div>

    <div class="col-lg-3 col-xs-6">
        <div class="small-box bg-<?= $warna[4] ?>">
            <div class="inner">
                <a href="<?= base_url('Admin/kegiatan'); ?>" style="text-decoration: none; color: currentColor;">
                    <h3>Kegiatan</h3>
                    <p>BBQ</p>
            </div>
            <div class="icon">
                <i class="fa fa-calendar-check"></i>
            </div>
            </a>
        </div>
    </div>
    <div class="col-lg-8 col-xs-6">
        <div class="small-box bg-<?= $warna[5] ?>">
            <div class="inner">
                <a href="<?= base_url('Admin/user'); ?>" style="text-decoration: none; color: currentColor;">
                    <h3>Akun</h3>
                    <p>Admin</p>
            </div>
            <div class="icon">
                <i class="fa fa-user-cog"></i>
            </div>
            </a>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-4">

        <div class="card card-info">
            <div class="card-header"><strong>PESERTA GELOMBANG 1</strong></div>
            <div class="card-footer">
                <canvas id="pieChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
            </div>
        </div>
    </div>
    <div class="col-md-4">

        <div class="card card-info">
            <div class="card-header"><strong>PESERTA GELOMBANG 2</strong></div>
            <div class="card-footer">
                <canvas id="pieChart2" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
            </div><!-- ChartJS -->

        </div>
    </div>
    <div class="col-md-4">

        <div class="card card-info">
            <div class="card-header"><strong>PESERTA GELOMBANG 3</strong></div>
            <div class="card-footer">
                <canvas id="pieChart3" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
            </div>
        </div>
    </div>
</div>

<!-- jQuery -->
<script src="<?= base_url(); ?>/template/plugins/jquery/jquery.min.js"></script>

<!-- ChartJS -->
<script src="<?= base_url(); ?>/template/plugins/chart.js/Chart.min.js"></script>
<script>
    $(function() {
        /* ChartJS
         * -------
         * Here we will create a few charts using ChartJS
         */

        //--------------

        var donutData1 = {
            labels: [
                'Laki-Laki',
                'Perempuan',
            ],
            datasets: [{
                data: [<?= $laki1; ?>, <?= $perempuan1; ?>],
                backgroundColor: ['#f56954', '#00a65a'],
            }]
        }
        var donutData2 = {
            labels: [
                'Laki-Laki',
                'Perempuan',
            ],
            datasets: [{
                data: [<?= $laki2; ?>, <?= $perempuan2; ?>],
                backgroundColor: ['#f56954', '#00a65a'],
            }]
        }
        var donutData3 = {
            labels: [
                'Laki-Laki',
                'Perempuan',
            ],
            datasets: [{
                data: [<?= $laki3; ?>, <?= $perempuan3; ?>],
                backgroundColor: ['#f56954', '#00a65a'],
            }]
        }
        var donutOptions = {
            maintainAspectRatio: false,
            responsive: true,
        }

        //-------------
        //- PIE CHART -
        //-------------
        // Get context with jQuery - using jQuery's .get() method.
        var pieChartCanvas1 = $('#pieChart').get(0).getContext('2d')
        var pieData = donutData1;
        var pieOptions = {
            maintainAspectRatio: false,
            responsive: true,
        }
        //Create pie or douhnut chart
        // You can switch between pie and douhnut using the method below.
        new Chart(pieChartCanvas1, {
            type: 'pie',
            data: pieData,
            options: pieOptions
        })


        var pieChartCanvas2 = $('#pieChart2').get(0).getContext('2d')
        var pieData = donutData2;
        var pieOptions = {
            maintainAspectRatio: false,
            responsive: true,
        }
        //Create pie or douhnut chart
        // You can switch between pie and douhnut using the method below.
        new Chart(pieChartCanvas2, {
            type: 'pie',
            data: pieData,
            options: pieOptions
        })

        var pieChartCanvas3 = $('#pieChart3').get(0).getContext('2d')
        var pieData = donutData3;
        var pieOptions = {
            maintainAspectRatio: false,
            responsive: true,
        }
        //Create pie or douhnut chart
        // You can switch between pie and douhnut using the method below.
        new Chart(pieChartCanvas3, {
            type: 'pie',
            data: pieData,
            options: pieOptions
        })

    })
</script>