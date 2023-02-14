</div>
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->
<footer class="main-footer">
    <div class="float-right d-none d-sm-block">
        <b>Version</b> 2.0.0
    </div>
    <strong>Copyright &copy; 2021 <a href="#">Kader Terbaik</a>.</strong> UKMI Ar-Rahman
</footer>

<!-- jQuery -->
<script src="<?= base_url(); ?>/template/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<?= base_url(); ?>/template/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.24/js/dataTables.bootstrap4.min.js"></script>
<!-- AdminLTE App -->
<script src="<?= base_url(); ?>/template/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<!-- <script src="<?= base_url(); ?>/template/dist/js/demo.js"></script> -->


<!-- ChartJS -->
<script src="<?= base_url(); ?>/template/plugins/chart.js/Chart.min.js"></script>

<!-- page script -->
<script>
    $(function() {
        $('#example1').DataTable({
            "paging": true,
            "lengthChange": true,
            "searching": true,
            "ordering": true,
            "info": true,
            "autoWidth": false,
            "responsive": true,
        })
        $('#example2').DataTable({
            "paging": true,
            "lengthChange": true,
            "searching": true,
            "ordering": true,
            "info": true,
            "autoWidth": false,
            "responsive": true,
        })
        $('#example').DataTable({
            "paging": true,
            "lengthChange": true,
            "searching": true,
            "ordering": true,
            "info": true,
            "autoWidth": false,
            "responsive": true,
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

<script>
    <?php if (session()->getFlashdata('toast_icon')) { ?>
        const Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 2000,
            timerProgressBar: true,
            didOpen: (toast) => {
                toast.addEventListener('mouseenter', Swal.stopTimer)
                toast.addEventListener('mouseleave', Swal.resumeTimer)
            }
        })
        Toast.fire({
            icon: '<?= session()->getFlashdata('toast_icon'); ?>',
            title: '<?= session()->getFlashdata('toast_title'); ?>'
        })
    <?php } ?>
</script>


</body>

</html>