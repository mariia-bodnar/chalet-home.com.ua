<!-- <?php $groups = $this->load->function_in_alias('projects', '__get_Groups'); ?>
    <?php $all_ar = $this->load->function_in_alias('projects', '__get_Articles'); ?> -->
<main class="main">
    <?php if ($_SESSION['alias']->images) {
        foreach ($_SESSION['alias']->images as $image) {
            if ($image->position == 1) { ?>
                <section class="img" id="size-1" style="background-image: url(<?= IMG_PATH . $image->path ?>) ;"></section>
    <?php }
        }
    } ?>
    <?php if ($_SESSION['alias']->section) {
        foreach ($_SESSION['alias']->section as $section) { ?>
            <div class="articles ">
                <section class="art-grid-constructor container">
                    <div class="art1_img-item " style="grid-auto-rows: max-content;">
                        <?php   foreach ($_SESSION['alias']->section as $section) {
                         if ($section->position < 3) { ?>
                            <span class="notes"><?= html_entity_decode($section->value) ?></span>
                        <?php } }?>
                    </div>


                    <div class="art1_text-item"><?php

                                                foreach ($_SESSION['alias']->section as $section) {
                                                    if ($section->position > 2) { ?><?= html_entity_decode($section->value) ?><?php }
                                                                                                                        } ?></div>

                </section>
            </div>
    <?php break;
        }
    } ?>

</main>