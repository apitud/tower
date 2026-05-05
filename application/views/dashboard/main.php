 <div class="section-admin container-fluid mt-3">
     <div class="row admin text-center">
         <div class="col-md-12">
             <div class="row">
                 <div class="col-lg-3 col-md-3 col-sm-3 col-12" style="margin-bottom:1px;">
                     <div class="admin-content analysis-progrebar-ctn res-mg-t-30">
                         <h4 class="text-start text-uppercase"><b>B2S</b></h4>
                         <div class="row vertical-center-box vertical-center-box-tablet">
                             <div class="text-start col-3 mar-bot-15">
                                 <span class="badge bg-green"> <?= ($total_progress->progress_pembangunan > 0) ? round(($total_progress->progress_pembangunan / ($jenis->pembangunan * $total_photo->jumlah_pembangunan)) * 100, 2) : 0 ?>% <i class="bi bi-arrow-up" aria-hidden="true"></i></span>
                             </div>
                             <div class="col-9 cus-gh-hd-pro">
                                 <h2 class="text-end no-margin"><?= $jenis->pembangunan ?? 0 ?> Site</h2>
                             </div>
                         </div>
                         <div class="progress progress-mini">
                             <div style="width: <?= ($total_progress->progress_pembangunan > 0) ? round(($total_progress->progress_pembangunan / ($jenis->pembangunan * $total_photo->jumlah_pembangunan)) * 100, 2) : 0 ?>%;" class="progress-bar progress-bar-green bg-green"></div>
                         </div>
                     </div>
                 </div>
                 <div class="col-lg-3 col-md-3 col-sm-3 col-12">
                     <div class="admin-content analysis-progrebar-ctn res-mg-t-15">
                         <h4 class="text-start text-uppercase"><b>Perkuatan</b></h4>
                         <div class="row vertical-center-box vertical-center-box-tablet">
                             <div class="col-3 mar-bot-15 text-start">
                                 <span class="badge bg-green"><?= ($total_progress->progress_perkuatan > 0) ? round(($total_progress->progress_perkuatan / ($jenis->perkuatan * $total_photo->jumlah_perkuatan)) * 100, 2) : 0 ?>% <i class="bi bi-arrow-up" aria-hidden="true"></i></span>
                             </div>
                             <div class="col-9 cus-gh-hd-pro">
                                 <h2 class="text-end no-margin"><?= $jenis->perkuatan ?? 0 ?> Site</h2>
                             </div>
                         </div>
                         <div class="progress progress-mini">
                             <div style="width: <?= ($total_progress->progress_perkuatan > 0) ? round(($total_progress->progress_perkuatan / ($jenis->perkuatan * $total_photo->jumlah_perkuatan)) * 100, 2) : 0 ?>%;" class="progress-bar bg-green"></div>
                         </div>
                     </div>
                 </div>

                 <div class="col-lg-3 col-md-3 col-sm-3 col-12">
                     <div class="admin-content analysis-progrebar-ctn res-mg-t-30">
                         <h4 class="text-start text-uppercase"><b>AVG PROGRESS</b></h4>
                         <div class="row vertical-center-box vertical-center-box-tablet">
                             <div class="text-start col-3 mar-bot-15">
                                 <span class="badge bg-blue"><?= $avg_progress->avg_progress ?? 0 ?>% <i class="bi bi-arrow-up" aria-hidden="true"></i></span>
                             </div>
                             <div class="col-9 cus-gh-hd-pro">
                                 <h2 class="text-end no-margin"><?= $avg_progress->total_site ?> Site</h2>
                             </div>
                         </div>
                         <div class="progress progress-mini">
                             <div style="width: <?= $avg_progress->avg_progress ?? 0 ?>%;" class="progress-bar bg-blue"></div>
                         </div>
                     </div>
                 </div>
                 <div class="col-lg-3 col-md-3 col-sm-3 col-12">
                     <div class="admin-content analysis-progrebar-ctn res-mg-t-30">
                         <h4 class="text-start text-uppercase"><b>Completed</b></h4>
                         <div class="row vertical-center-box vertical-center-box-tablet">
                             <div class="text-start col-3 mar-bot-15">
                                 <span class="badge bg-purple"><?= $site_selesai->persetase_selesai ?? 0 ?>% <i class="bi bi-arrow-down" aria-hidden="true"></i></span>
                             </div>
                             <div class="col-9 cus-gh-hd-pro">
                                 <h2 class="text-end no-margin"><?= $site_selesai->site_selesai ?? 0 ?> Site</h2>
                             </div>
                         </div>
                         <div class="progress progress-mini">
                             <div style="width: <?= $site_selesai->persetase_selesai ?? 0 ?>%;" class="progress-bar bg-purple"></div>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>
 </div>
 <div class="product-sales-area mg-tb-30">
     <div class="container-fluid">
         <div class="row">
             <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                 <div class="product-sales-chart">
                     <div class="portlet-title">
                         <div class="row">
                             <div class="col-lg-6 col-md-6 col-sm-6 col-12">
                                 <div class="caption pro-sl-hd">
                                     <span class="caption-subject text-uppercase"><b>Kelengkapan BAST</b></span>
                                 </div>
                             </div>
                             <div class="col-lg-6 col-md-6 col-sm-6 col-12">
                                 <div class="actions graph-rp">

                                 </div>
                             </div>
                         </div>
                     </div>
                     <div id="chartdiv" style="width: 100%; height: 500px;" class="flot-chart-sts flot-chart curved-chart-statistic"></div>
                 </div>
             </div>
             <!-- <div class="col-lg-3 col-md-3 col-sm-3 col-12">
                 <div class="white-box analytics-info-cs mg-b-30 res-mg-t-30">
                     <h3 class="box-title">Total Visit</h3>
                     <ul class="list-inline two-part-sp">
                         <li>
                             <div id="sparklinedash"></div>
                         </li>
                         <li class="text-end sp-cn-r"><i class="bi bi-arrow-up" aria-hidden="true"></i> <span class="counter sales-sts-ctn">8659</span></li>
                     </ul>
                 </div>
                 <div class="white-box analytics-info-cs mg-b-30">
                     <h3 class="box-title">Total Page Views</h3>
                     <ul class="list-inline two-part-sp">
                         <li>
                             <div id="sparklinedash2"></div>
                         </li>
                         <li class="text-end"><i class="bi bi-arrow-up" aria-hidden="true"></i> <span class="counter sales-sts-ctn">7469</span></li>
                     </ul>
                 </div>
                 <div class="white-box analytics-info-cs mg-b-30">
                     <h3 class="box-title">Unique Visitor</h3>
                     <ul class="list-inline two-part-sp">
                         <li>
                             <div id="sparklinedash3"></div>
                         </li>
                         <li class="text-end"><i class="bi bi-arrow-up" aria-hidden="true"></i> <span class="counter sales-sts-ctn">6011</span></li>
                     </ul>
                 </div>
                 <div class="white-box analytics-info-cs">
                     <h3 class="box-title">Bounce Rate</h3>
                     <ul class="list-inline two-part-sp">
                         <li>
                             <div id="sparklinedash4"></div>
                         </li>
                         <li class="text-end"><i class="bi bi-arrow-down" aria-hidden="true"></i> <span class="sales-sts-ctn">18%</span></li>
                     </ul>
                 </div>
             </div> -->
         </div>
     </div>
 </div>
 <!-- <div class="traffic-analysis-area">
     <div class="container-fluid">
         <div class="row">
             <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                 <div class="white-box tranffic-als-inner">
                     <h3 class="box-title"><small class="float-end m-t-10 text-success last-month-sc cl-one"><i class="bi bi-arrow-down-up-asc"></i> 18% last month</small> Site Traffic</h3>
                     <div class="stats-row">
                         <div class="stat-item">
                             <h6>Overall Growth</h6>
                             <b>80.40%</b>
                         </div>
                         <div class="stat-item">
                             <h6>Montly</h6>
                             <b>15.40%</b>
                         </div>
                         <div class="stat-item">
                             <h6>Day</h6>
                             <b>5.50%</b>
                         </div>
                     </div>
                     <div id="sparkline8"></div>
                 </div>
             </div>
             <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                 <div class="white-box tranffic-als-inner res-mg-t-30">
                     <h3 class="box-title"><small class="float-end m-t-10 text-danger last-month-sc cl-two"><i class="bi bi-arrow-down-up-desc"></i> 18% last month</small>Site Traffic</h3>
                     <div class="stats-row">
                         <div class="stat-item">
                             <h6>Overall Growth</h6>
                             <b>80.40%</b>
                         </div>
                         <div class="stat-item">
                             <h6>Montly</h6>
                             <b>15.40%</b>
                         </div>
                         <div class="stat-item">
                             <h6>Day</h6>
                             <b>5.50%</b>
                         </div>
                     </div>
                     <div id="sparkline9"></div>
                 </div>
             </div>
             <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                 <div class="white-box tranffic-als-inner res-mg-t-30">
                     <h3 class="box-title"><small class="float-end m-t-10 text-success last-month-sc cl-three"><i class="bi bi-arrow-down-up-asc"></i> 18% last month</small>Site Traffic</h3>
                     <div class="stats-row">
                         <div class="stat-item">
                             <h6>Overall Growth</h6>
                             <b>80.40%</b>
                         </div>
                         <div class="stat-item">
                             <h6>Montly</h6>
                             <b>15.40%</b>
                         </div>
                         <div class="stat-item">
                             <h6>Day</h6>
                             <b>5.50%</b>
                         </div>
                     </div>
                     <div id="sparkline10"></div>
                 </div>
             </div>
         </div>
     </div>
 </div>
 <div class="product-new-list-area">
     <div class="container-fluid">
         <div class="row g-3 mt-1">
             <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                 <div class="card border-0 h-100" style="background:#1b2a47;">
                     <img src="img/new-product/5.svg" class="card-img-top" style="height:180px; object-fit:cover;" alt="Princes Diamond">
                     <div class="card-body px-3 py-3">
                         <div class="d-flex justify-content-between align-items-center mb-2">
                             <h6 class="text-white mb-0">Princes Diamond</h6>
                             <span class="text-success fw-bold">$280</span>
                         </div>
                         <div class="d-flex justify-content-between align-items-center">
                             <div class="text-warning" style="font-size:12px;">
                                 <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star" style="color:#5a6a7f;"></i>
                             </div>
                             <div>
                                 <a href="#" class="text-secondary me-2" data-bs-toggle="tooltip" title="Add to cart"><i class="bi bi-bag"></i></a>
                                 <a href="#" class="text-secondary" data-bs-toggle="tooltip" title="Wishlist"><i class="bi bi-heart"></i></a>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
             <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                 <div class="card border-0 h-100" style="background:#1b2a47;">
                     <img src="img/new-product/6-small.svg" class="card-img-top" style="height:180px; object-fit:cover;" alt="Gold Necklace">
                     <div class="card-body px-3 py-3">
                         <div class="d-flex justify-content-between align-items-center mb-2">
                             <h6 class="text-white mb-0">Gold Necklace</h6>
                             <span class="text-success fw-bold">$350</span>
                         </div>
                         <div class="d-flex justify-content-between align-items-center">
                             <div class="text-warning" style="font-size:12px;">
                                 <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                             </div>
                             <div>
                                 <a href="#" class="text-secondary me-2" data-bs-toggle="tooltip" title="Add to cart"><i class="bi bi-bag"></i></a>
                                 <a href="#" class="text-secondary" data-bs-toggle="tooltip" title="Wishlist"><i class="bi bi-heart"></i></a>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
             <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                 <div class="card border-0 h-100" style="background:#1b2a47;">
                     <img src="img/new-product/7-small.svg" class="card-img-top" style="height:180px; object-fit:cover;" alt="Silver Ring">
                     <div class="card-body px-3 py-3">
                         <div class="d-flex justify-content-between align-items-center mb-2">
                             <h6 class="text-white mb-0">Silver Ring</h6>
                             <span class="text-success fw-bold">$180</span>
                         </div>
                         <div class="d-flex justify-content-between align-items-center">
                             <div class="text-warning" style="font-size:12px;">
                                 <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star" style="color:#5a6a7f;"></i><i class="bi bi-star" style="color:#5a6a7f;"></i>
                             </div>
                             <div>
                                 <a href="#" class="text-secondary me-2" data-bs-toggle="tooltip" title="Add to cart"><i class="bi bi-bag"></i></a>
                                 <a href="#" class="text-secondary" data-bs-toggle="tooltip" title="Wishlist"><i class="bi bi-heart"></i></a>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
             <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                 <div class="card border-0 h-100" style="background:#1b2a47;">
                     <img src="img/new-product/5-small.svg" class="card-img-top" style="height:180px; object-fit:cover;" alt="Ruby Pendant">
                     <div class="card-body px-3 py-3">
                         <div class="d-flex justify-content-between align-items-center mb-2">
                             <h6 class="text-white mb-0">Ruby Pendant</h6>
                             <span class="text-success fw-bold">$420</span>
                         </div>
                         <div class="d-flex justify-content-between align-items-center">
                             <div class="text-warning" style="font-size:12px;">
                                 <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star" style="color:#5a6a7f;"></i>
                             </div>
                             <div>
                                 <a href="#" class="text-secondary me-2" data-bs-toggle="tooltip" title="Add to cart"><i class="bi bi-bag"></i></a>
                                 <a href="#" class="text-secondary" data-bs-toggle="tooltip" title="Wishlist"><i class="bi bi-heart"></i></a>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>
 </div>
 <div class="product-sales-area mg-tb-30">
     <div class="container-fluid">
         <div class="row">
             <div class="col-lg-9 col-md-9 col-sm-9 col-12">
                 <div class="product-sales-chart">
                     <div class="portlet-title">
                         <div class="row">
                             <div class="col-lg-6 col-md-6 col-sm-6 col-12">
                                 <div class="caption pro-sl-hd">
                                     <span class="caption-subject text-uppercase"><b>Order Statistic</b></span>
                                 </div>
                             </div>
                             <div class="col-lg-6 col-md-6 col-sm-6 col-12">
                                 <div class="actions graph-rp">
                                     <a href="#" class="btn btn-dark-blue btn-circle active tip-top" data-bs-toggle="tooltip" title="Upload">
                                         <i class="bi bi-cloud-download" aria-hidden="true"></i>
                                     </a>
                                     <a href="#" class="btn btn-dark btn-circle active tip-top" data-bs-toggle="tooltip" title="Refresh">
                                         <i class="bi bi-reply" aria-hidden="true"></i>
                                     </a>
                                     <a href="#" class="btn btn-blue-grey btn-circle active tip-top" data-bs-toggle="tooltip" title="Delete">
                                         <i class="bi bi-trash" aria-hidden="true"></i>
                                     </a>
                                 </div>
                             </div>
                         </div>
                     </div>
                     <div id="line-chart" class="flot-chart flot-chart-sts line-chart-statistic"></div>
                 </div>
             </div>
             <div class="col-lg-3 col-md-3 col-sm-3 col-12">
                 <div class="analytics-rounded mg-b-30 res-mg-t-30">
                     <div class="analytics-rounded-content">
                         <h5>Percentage distribution</h5>
                         <h2><span class="counter">60</span>/20</h2>
                         <div class="text-center">
                             <div id="sparkline51"></div>
                         </div>
                     </div>
                 </div>
                 <div class="analytics-rounded">
                     <div class="analytics-rounded-content">
                         <h5>Percentage division</h5>
                         <h2><span class="counter">150</span>/<span class="counter">54</span></h2>
                         <div class="text-center">
                             <div id="sparkline52"></div>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>
 </div>
 <div class="author-area-pro">
     <div class="container-fluid">
         <div class="row g-3">
             <div class="col-lg-4 col-md-6 col-sm-6 col-12">
                 <div class="card border-0 h-100" style="background:#1b2a47;">
                     <div class="text-center" style="background:#162544; border-bottom:1px solid #253a5c; padding:24px 20px 20px; border-radius:4px 4px 0 0;">
                         <img src="img/notification/5.svg" class="rounded-circle" style="width:64px; height:64px; border:2px solid #253a5c;" alt="Jon Royita">
                         <h6 class="text-white mt-2 mb-0">Jon Royita</h6>
                         <small class="text-secondary">Founder of Uttara It Park</small>
                     </div>
                     <div class="card-body px-3 py-3">
                         <div class="d-flex justify-content-around text-center mb-3" style="font-size:12px;">
                             <div><span class="text-white fw-bold d-block">100</span><span class="text-secondary">Tweets</span></div>
                             <div><span class="text-white fw-bold d-block">350</span><span class="text-secondary">Following</span></div>
                             <div><span class="text-white fw-bold d-block">610</span><span class="text-secondary">Followers</span></div>
                         </div>
                         <p class="text-secondary mb-3" style="font-size:13px; line-height:1.6;">To all the atheists attacking me right now, I can't make you believe in God, you have to have faith.</p>
                         <div class="d-flex gap-2 justify-content-end">
                             <a href="#" class="btn btn-sm" style="background:#253a5c; color:#8a9bb5; border:none;"><i class="bi bi-hand-thumbs-up me-1"></i>Like</a>
                             <a href="#" class="btn btn-sm" style="background:#253a5c; color:#8a9bb5; border:none;"><i class="bi bi-heart me-1"></i>Love</a>
                         </div>
                     </div>
                 </div>
             </div>
             <div class="col-lg-4 col-md-6 col-sm-6 col-12">
                 <div class="card border-0 h-100" style="background:#1b2a47;">
                     <div class="text-center" style="background:#162544; border-bottom:1px solid #253a5c; padding:24px 20px 20px; border-radius:4px 4px 0 0;">
                         <img src="img/notification/6.svg" class="rounded-circle" style="width:64px; height:64px; border:2px solid #253a5c;" alt="Fire Foxy">
                         <h6 class="text-white mt-2 mb-0">Fire Foxy</h6>
                         <small class="text-secondary">Founder of Uttara It House</small>
                     </div>
                     <div class="card-body px-3 py-3">
                         <div class="d-flex justify-content-around text-center mb-3" style="font-size:12px;">
                             <div><span class="text-white fw-bold d-block">100</span><span class="text-secondary">Tweets</span></div>
                             <div><span class="text-white fw-bold d-block">350</span><span class="text-secondary">Following</span></div>
                             <div><span class="text-white fw-bold d-block">610</span><span class="text-secondary">Followers</span></div>
                         </div>
                         <p class="text-secondary mb-3" style="font-size:13px; line-height:1.6;">To all the atheists attacking me right now, I can't make you believe in God, you have to have faith.</p>
                         <div class="d-flex gap-2 justify-content-end">
                             <a href="#" class="btn btn-sm" style="background:#253a5c; color:#8a9bb5; border:none;"><i class="bi bi-hand-thumbs-up me-1"></i>Like</a>
                             <a href="#" class="btn btn-sm" style="background:#253a5c; color:#8a9bb5; border:none;"><i class="bi bi-heart me-1"></i>Love</a>
                         </div>
                     </div>
                 </div>
             </div>
             <div class="col-lg-4 col-md-6 col-sm-6 col-12">
                 <div class="card border-0 h-100" style="background:#1b2a47;">
                     <div class="text-center" style="background:#162544; border-bottom:1px solid #253a5c; padding:24px 20px 20px; border-radius:4px 4px 0 0;">
                         <img src="img/contact/2.svg" class="rounded-circle" style="width:64px; height:64px; border:2px solid #253a5c;" alt="Jon Royita">
                         <h6 class="text-white mt-2 mb-0">Jon Royita</h6>
                         <small class="text-secondary">Founder of Uttara It Park</small>
                     </div>
                     <div class="card-body px-3 py-3">
                         <div class="d-flex justify-content-around text-center mb-3" style="font-size:12px;">
                             <div><span class="text-white fw-bold d-block">100</span><span class="text-secondary">Tweets</span></div>
                             <div><span class="text-white fw-bold d-block">350</span><span class="text-secondary">Following</span></div>
                             <div><span class="text-white fw-bold d-block">610</span><span class="text-secondary">Followers</span></div>
                         </div>
                         <p class="text-secondary mb-3" style="font-size:13px; line-height:1.6;">To all the atheists attacking me right now, I can't make you believe in God, you have to have faith.</p>
                         <div class="d-flex gap-2 justify-content-end">
                             <a href="#" class="btn btn-sm" style="background:#253a5c; color:#8a9bb5; border:none;"><i class="bi bi-hand-thumbs-up me-1"></i>Like</a>
                             <a href="#" class="btn btn-sm" style="background:#253a5c; color:#8a9bb5; border:none;"><i class="bi bi-heart me-1"></i>Love</a>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>
 </div> -->

 <script src="https://cdn.amcharts.com/lib/4/core.js"></script>
 <script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
 <script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script>

 <script>
     const chartData = <?= json_encode($chart_data) ?>; // <-- isi dari json_encode()
 </script>
 <!-- Chart code -->
 <script>
     am4core.ready(function() {

         // Themes begin
         am4core.useTheme(am4themes_animated);
         // Themes end
         const tahapOrder = {
             "B2S": ["SKOM", "PEMBESIAN", "PENGECORAN", "ERECTION", "ATP"],
             "PERKUATAN": ["TEAM & TOOLS", "MOS", "DOKUMENTASI ATP"]
         };
         // Create chart instance
         var chart = am4core.create("chartdiv", am4charts.XYChart);

         // Add data
         chart.data = chartData;
         chartData.sort((a, b) => {

             // urutan pekerjaan dulu
             if (a.pekerjaan !== b.pekerjaan) {
                 return a.pekerjaan === "B2S" ? -1 : 1;
             }

             // urutan tahap dalam pekerjaan
             return tahapOrder[a.pekerjaan].indexOf(a.tahap) -
                 tahapOrder[b.pekerjaan].indexOf(b.tahap);

         });
         // Create axes
         var yAxis = chart.yAxes.push(new am4charts.CategoryAxis());
         yAxis.dataFields.category = "tahap";
         yAxis.renderer.grid.template.location = 0;
         yAxis.renderer.labels.template.fontSize = 10;
         yAxis.renderer.labels.template.fill = am4core.color("#ffffff");
         console.log(yAxis.renderer.labels.template)
         yAxis.renderer.minGridDistance = 10;
         yAxis.renderer.inversed = true;
         var xAxis = chart.xAxes.push(new am4charts.ValueAxis());

         // Create series
         var series = chart.series.push(new am4charts.ColumnSeries());
         series.dataFields.valueX = "persentase";
         series.dataFields.categoryY = "tahap";
         series.columns.template.tooltipText = "{categoryY}: [bold]{valueX.formatNumber('#.00')}%[/]";
         series.columns.template.strokeWidth = 0;
         series.columns.template.adapter.add("fill", function(fill, target) {
             if (target.dataItem) {
                 switch (target.dataItem.dataContext.pekerjaan) {
                     case "B2S":
                         return chart.colors.getIndex(0);
                         break;
                     case "PERKUATAN":
                         return chart.colors.getIndex(1);
                         break;

                 }
             }
             return fill;
         });

         var axisBreaks = {};
         var legendData = [];

         // Add ranges
         function addRange(label, start, end, color) {
             var range = yAxis.axisRanges.create();
             range.category = start;
             range.endCategory = end;
             range.label.text = label;
             range.label.disabled = false;
             range.label.fill = color;
             range.label.location = 0;
             range.label.dx = -130;
             range.label.dy = -50;
             range.label.fontWeight = "bold";
             range.label.fontSize = 12;
             range.label.horizontalCenter = "left"
             range.label.inside = true;

             range.grid.stroke = am4core.color("#396478");
             range.grid.strokeOpacity = 1;
             range.tick.length = 200;
             range.tick.disabled = false;
             range.tick.strokeOpacity = 0.6;
             range.tick.stroke = am4core.color("#396478");
             range.tick.location = 0;
             range.tick.dy = -60;
             range.grid.dy = -60;

             range.locations.category = 1;
             var axisBreak = yAxis.axisBreaks.create();
             axisBreak.startCategory = start;
             axisBreak.endCategory = end;
             axisBreak.breakSize = 1;
             axisBreak.fillShape.disabled = true;
             axisBreak.startLine.disabled = true;
             axisBreak.endLine.disabled = true;
             axisBreaks[label] = axisBreak;

             legendData.push({
                 name: label,
                 fill: color
             });
         }

         addRange("PERKUATAN", "TEAM & TOOLS", "DOKUMENTASI ATP", chart.colors.getIndex(1));
         addRange("B2S", "SKOM", "ATP", chart.colors.getIndex(0));


         chart.cursor = new am4charts.XYCursor();


         var legend = new am4charts.Legend();
         legend.position = "right";
         legend.scrollable = true;
         legend.valign = "top";
         legend.reverseOrder = true;
         legend.labels.template.fill = am4core.color("#ffffff");

         chart.legend = legend;
         legend.data = legendData;

         legend.itemContainers.template.events.on("toggled", function(event) {

             var name = event.target.dataItem.dataContext.name;
             var axisBreak = axisBreaks[name];
             if (event.target.isActive) {
                 axisBreak.animate({
                     property: "breakSize",
                     to: 0
                 }, 1000, am4core.ease.cubicOut);
                 yAxis.dataItems.each(function(dataItem) {
                     if (dataItem.dataContext.pekerjaan == name) {
                         dataItem.hide(1000, 500);
                     }
                 })
                 series.dataItems.each(function(dataItem) {
                     if (dataItem.dataContext.pekerjaan == name) {
                         dataItem.hide(1000, 0, 0, ["valueX"]);
                     }
                 })
             } else {
                 axisBreak.animate({
                     property: "breakSize",
                     to: 1
                 }, 1000, am4core.ease.cubicOut);
                 yAxis.dataItems.each(function(dataItem) {
                     if (dataItem.dataContext.pekerjaan == name) {
                         dataItem.show(1000);
                     }
                 })

                 series.dataItems.each(function(dataItem) {
                     if (dataItem.dataContext.pekerjaan == name) {
                         dataItem.show(1000, 0, ["valueX"]);
                     }
                 })
             }
         })

     }); // end am4core.ready()
 </script>