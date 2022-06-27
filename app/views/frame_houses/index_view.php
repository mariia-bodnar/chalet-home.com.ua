<main class="main frame_houses">
    <!-- <pre><?php print_r($_SESSION['alias']) ?></pre> -->
    <?php if ($_SESSION['alias']->images) {
        foreach ($_SESSION['alias']->images as $image) {
            if ($image->position == 1) { ?>
                <section class="img" style="background-image: url(<?= IMG_PATH . $image->path ?>) ;"></section>
    <?php }
            break;
        }
    } ?>
    <?php if ($_SESSION['alias']->section) {
        foreach ($_SESSION['alias']->section as $section) { ?>
            <div class="articles">
                <section class="art-grid-constructor container">
                    <?php if ($section->position == 1) { ?>
                        <div class="art1_img-item ">
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
                        <div class="art1_text-item">
                            <?php
                        }
                        foreach ($_SESSION['alias']->section as $section) {
                            if ($section->type == 'images') {
                                if ($section->position < 3) { ?>
                                    <h3><?= $section->value ?></h3>
                                    <?php foreach ($section->images as $image) { ?><p><?= html_entity_decode($image->title) ?></p>
                                        <img src="<?= IMG_PATH . $image->path ?>" alt="<?= $image->title ?>"> <?php }
                                                                                                        }
                                                                                                    } elseif ($section->position == 3) {
                                                                                                                ?>
                                <h3><?= $section->title ?></h3>
                                <?= html_entity_decode($section->value) ?>
                                <?php }
                                                                                                    if ($section->type == 'images') {
                                                                                                        if ($section->position == 4) { ?>
                                    <?php foreach ($section->images as $image) { ?>
                                        <div class="last_section">
                                            <img src="<?= IMG_PATH . $image->path ?>" alt="<?= $image->title ?>">
                                            <div>
                                                <h3><?= $section->value ?></h3>
                                                <p><?= html_entity_decode($image->title) ?></p>
                                            </div>
                                        </div>
                            <?php }
                                                                                                        }
                                                                                                    }
                            ?>
                        <?php
                        } ?>
                        </div>

                </section>
            </div>
    <?php break;
        }
    } ?>
</main>