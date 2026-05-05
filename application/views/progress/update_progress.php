<!-- Static Table Start -->
<div class="data-table-area mg-tb-15">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="sparkline13-list">
                    <div class="sparkline13-hd">
                        <div class="main-sparkline13-hd">
                            <h1>Data <span class="table-project-n">Update</span> Progress</h1>
                        </div>
                    </div>
                    <div class="sparkline13-graph ">
                        <?= $this->session->flashdata('message') ?>
                        <div class="datatable-dashv1-list custom-datatable-overright table-responsive">

                            <table class="table tabledata table-bordered table-hover table-striped table-sm">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Site Name Tenant</th>
                                        <th>Site ID</th>
                                        <th>Type Tower</th>
                                        <th>Height</th>
                                        <th>Alamat</th>
                                        <th>Latitude</th>
                                        <th>Longitude</th>
                                        <th>Progress Terakhir</th>
                                        <th>Persentase</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $no = 1; ?>
                                    <?php foreach ($loadMaster as $lm) : ?>
                                        <tr class="row-site" data-id="<?= $lm['id_site'] ?>" data-project="<?= $lm['project_id'] ?>" data-site="<?= $lm['site_id'] ?>" data-name="<?= $lm['site_name_po'] ?>" data-pekerjaan="<?= $lm['pekerjaan'] ?>">
                                            <td><?= $no ?></td>
                                            <td><?= $lm['site_name_tenant'] ?></td>
                                            <td><?= $lm['site_id'] ?></td>
                                            <td><?= $lm['type_tower'] ?></td>
                                            <td><?= $lm['height'] ?></td>
                                            <td><?= $lm['alamat'] ?></td>
                                            <td><?= $lm['latitude'] ?></td>
                                            <td><?= $lm['longitude'] ?></td>
                                            <td><?= $lm['last_progress'] ?></td>
                                            <td><?= $lm['persentase'] ?>%</td>
                                        </tr>
                                        <?php $no++ ?>
                                    <?php endforeach; ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="siteModal">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">

            <div class="modal-header">
                <h5 class="modal-title">Upload Foto Site</h5>
                <button class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <div id="photo-grid"></div>


        </div>
    </div>
    
    <!-- Static Table End -->