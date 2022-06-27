<main class="main">
    <?php if ($_SESSION['alias']->images) {
        foreach ($_SESSION['alias']->images as $image) {
            if ($image->position == 1) { ?>
                <section class="img" style="background-image: url(<?= IMG_PATH . $image->path ?>) ;"></section>
    <?php }
        }
    } ?>
    <?php if ($_SESSION['alias']->section) {
        foreach ($_SESSION['alias']->section as $section) { ?>
            <div class="articles">
                <section class="art-grid-constructor container">
                    <?php if ($section->position == 1) { ?>
                        <div class="art1_img-item ">
                            <span class="notes"><?= html_entity_decode($section->value) ?></span>
                            <?php if ($_SESSION['alias']->images) { ?>
                                <div class="swiper mySwiper-main">
                                    <div class="swiper-wrapper">
                                        <?php foreach ($_SESSION['alias']->images as $image) {
                                            if ($image->position != 1) { ?>
                                                <div class="swiper-slide"><img src="<?= IMG_PATH . $image->path ?>" alt="<?= $image->title ?>"></div>
                                        <?php }
                                        } ?>
                                    </div>
                                    <div class="swiper-pagination"></div>
                                </div>
                            <?php } ?>
                        </div>

<?php } ?>
                        <div class="art1_text-item"><?php
                                                
                                                foreach ($_SESSION['alias']->section as $section) {
                                                    if ($section->position != 1) { ?><?= html_entity_decode($section->value) ?><?php }
                                                                                                                        } ?></div>

                </section>
            </div>
    <?php break;
        }
    } ?>

</main>