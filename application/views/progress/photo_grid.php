    <div class="modal-body">
        <input type="hidden" value="<?= $site_id ?>" id="site_id">
        <input type="hidden" value="<?= $pekerjaan ?>" id="pekerjaan">
        <?php
        $current_section = '';
        ?>

        <?php foreach ($categories as $cat) : ?>

            <?php if ($current_section != $cat['section']) : ?>

                <hr>
                <h6><?= $cat['section'] ?></h6>
                <div class="row g-2">

                    <?php $current_section = $cat['section']; ?>

                <?php endif; ?>


                <?php for ($i = 1; $i <= $cat['max_photo']; $i++) : ?>

                    <div class="col-md-2">

                        <div class="paste-slot" data-category="<?= $cat['id'] ?>" data-slot="<?= $i ?>">
                            <p><?= $cat['name'] ?> <?= $i ?></p>
                            <div class="spinner"></div>

                            <a href="" data-lightbox="site-photos" class="lightbox-link">
                                <img style="display:none;">
                            </a>

                            <button class="btn-delete-photo">✕</button>
                        </div>

                    </div>

                <?php endfor; ?>

            <?php endforeach; ?>

                </div>

    </div>
    <a href="<?= base_url('tower/generate_report/' . $site_id) ?>" class="btn btn-success btn-sm">
        Generate Report
    </a>