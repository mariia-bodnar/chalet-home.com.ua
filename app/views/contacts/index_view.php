<main class="main">
    <!-- <?php if (!empty($_SESSION['alias']->images)) {
                foreach ($_SESSION['alias']->images as $image) {
                    if ($image->position == 1) { ?>
                <section class="img" style="background-image: url(<?= IMG_PATH . $image->path ?>) ;"></section>
    <?php }
                }
            } ?> -->
    <?php if (!empty($_SESSION['alias']->section)) {
        foreach ($_SESSION['alias']->section as $section) { ?>
            <?php if (count($_SESSION['alias']->section) > 1) { ?>
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
            <?php } else { ?>
                <div class="articles">
                    <section class="art-grid-constructor-2 container">
                        <div class="art1_img-item-2 ">
                            <?php $i = 0;
                            if ($_SESSION['alias']->images) { ?>
                                <?php foreach ($_SESSION['alias']->images as $image) { ?>
                                    <div class="swiper-slide" style="padding-bottom: 12px ;"><img src="<?= IMG_PATH . $image->path ?>" alt="<?= $image->title ?>"></div>
                                <?php $i++;
                                    if ($i >= 3) {
                                        break;
                                    }
                                }
                                ?>
                            <?php } ?>
                        </div>

                        <div class="art1_text-item contacts"><?php

                                                    foreach ($_SESSION['alias']->section as $section) {
                                                    ?><?= html_entity_decode($section->value) ?><?php } ?></div>

                    </section>
                </div>
    <?php }
            break;
        }
    } ?>

</main>