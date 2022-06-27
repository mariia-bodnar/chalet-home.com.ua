<!-- <?php $groups = $this->load->function_in_alias('our_projects', '__get_Groups'); ?>
<?php $articles = $this->load->function_in_alias('our_projects', '__get_Articles'); ?> -->
<!-- <pre><?php print_r($_SESSION['alias']) ?></pre> -->
<main class="main static">
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
                <section class="art-grid-constructor  container <?= $_SESSION['alias']->alias ?>">
                    <?php if ($section->position == 1) { ?>
                        <div class="art1_img-item " style="height: fit-content;">
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
                    <?php  } ?>
                    <div class="art1_text-item static_page" style="height: fit-content;">
                        <?php if ($_SESSION['alias']->alias != 'technology' && $_SESSION['alias']->alias != 'chalet_information') {
                            foreach ($_SESSION['alias']->section as $section) {
                                if ($section->position != 1) {
                                    if (!empty($section->title)) { ?>
                                        <h3><?= $section->title ?></h3>
                                    <?php } ?>
                                    <p><?= html_entity_decode($section->value) ?></p>
                                    <?php }
                            }
                        } elseif ($_SESSION['alias']->alias == 'technology') {
                            foreach ($_SESSION['alias']->section as $section) {
                                if ($section->type != 'images') {
                                    if ($section->position != 1 && $section->position < 4) {
                                        if (!empty($section->title)) { ?>
                                            <h3><?= $section->title ?></h3>
                                        <?php } ?>
                                        <p><?= html_entity_decode($section->value) ?></p>
                                    <?php }
                                } elseif ($section->type == 'images') {
                                    foreach ($section->images as $image) { ?>
                                        <h4><?= $image->title ?></h4>
                                        <img src="<?= IMG_PATH . $image->path ?>" alt="<?= $image->title ?>">
                                    <?php }
                                }
                                if ($section->position > 4) {
                                    if (!empty($section->title)) { ?>
                                        <h3><?= $section->title ?></h3>
                                    <?php } ?>
                                    <p><?= html_entity_decode($section->value) ?></p>
                                <?php  }
                            }
                        }
                        if ($_SESSION['alias']->alias == 'chalet_information') {
                            foreach ($_SESSION['alias']->section as $section) {
                                if ($section->position != 1) { ?>
                                    <div class="faq">
                                        <h3><?= $section->title ?></h3>
                                        <div class="answear">
                                            <p><?= html_entity_decode($section->value) ?></p>
                                        </div>
                                    </div>
                        <?php }
                            }
                        } ?>
                        <?php
                        if ($_SESSION['alias']->alias != 'chalet_log_home') {
                            $i = 0;
                            if (!empty($articles)) { ?>
                                <a href="<?= SITE_URL ?>our_projects/nashi-roboty" class="link-to-ptojects"><?= $this->text("Усі роботи", 0) ?></a>
                                <?php foreach ($articles as $article) { ?>
                                    <div class="article">
                                        <a href="<?= $article->link ?>"><img src="<?= IMG_PATH . $article->photo ?>" alt="<?= $article->name ?>"></a>
                                        <div class="article_text">
                                            <a href="<?= $article->link ?>">
                                                <h2><?= $article->name ?></h2>
                                            </a>
                                            <?= html_entity_decode($article->text) ?>
                                        </div>
                                    </div>
                        <?php $i++;
                                    if ($i > 6) {
                                        break;
                                    }
                                }
                            }
                        } ?>
                    </div>

                </section>
            </div>
    <?php break;
        }
    } ?>

</main>