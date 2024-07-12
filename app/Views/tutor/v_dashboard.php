   <div class="container-fluid">
       <div class="callout callout-info info-box p-3 pl-3">
           <i class="fa fa-calendar-alt fa-4x text-primary"></i>
           <div class="info-box-content ">
               <h3 class="info-box-number mb-0">Jadwal BBQ</h3>
               <h4 class="info-box-text ">Gelombang : <?= $info['gelombang']; ?> - <?= $info['tahun_ajar']; ?></h4>
           </div>

       </div>
       <div class="row">

           <?php
            if (empty($jadwal)) { ?>
               <div class="col-md-12">
                   <div class="jumbotron jumbotron-fluid">
                       <div class="container text-danger">
                           <h1 class="display-4"><i class="fas fa-exclamation-triangle"></i> Afwan</h1>
                           <p class="lead">Antum belum diberikan kelompok BBQ. </p>
                           <p>Mohon tunggu informasi selanjutnya.</p>
                       </div>
                   </div>
               </div>
           <?php  } else { ?>
               <?php foreach ($jadwal as $key => $value) { ?>
                   <div class="col-lg-3 col-xs-6">
                       <!-- small box -->
                       <div class="small-box bg-<?= $warna; ?>">
                           <div class="inner">
                               <h3><?= $value['hari']; ?></h3>
                               <p><?= $value['jam']; ?></p>
                           </div>
                           <div class="icon">
                               <i class="ion "></i>
                           </div>
                           <a href="<?= base_url('Tutor/Kbm/kelompok/' . $value['id_jadwal']); ?>" class="small-box-footer">Kelola Kelompok <i class="fa fa-arrow-circle-right"></i></a>
                       </div>
                   </div>

               <?php } ?>
           <?php } ?>

       </div>
   </div>