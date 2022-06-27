<!-- <pre></?php print_r($data) ?></pre> -->
<?php if ($_SESSION['alias']->link == "our_projects/nashi-roboty") {  ?>
    <main class="main">
        <?php if ($_SESSION['alias']->images) {
            foreach ($_SESSION['alias']->images as $image) {
                if ($image->position == 1) { ?>
                    <section class="img" style="background-image: url(<?= IMG_PATH . $image->path ?>) ;"></section>
        <?php }
            }
        } ?>
        <div class="articles">
            <section class="art-grid-constructor container">
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
                <div class="art1_text-item" style="height: fit-content;">
                    <?php if(!empty($articles)){
                    foreach ($articles as $article) { ?>
                        <div class="article">
                            <a href="<?= SITE_URL.$article->link ?>"><img src="<?= IMG_PATH . $article->photo ?>" alt="<?= $article->name ?>"></a>
                            <div class="article_text">
                                <a href="<?= SITE_URL.$article->link ?>">
                                    <h2><?= $article->name ?></h2>
                                </a>
                                <?= html_entity_decode($article->text) ?>
                            </div>
                        </div>
                    <?php }} ?>
                </div>
            </section>
        </div>
    </main>
<?php } else { ?>
    <main class="main container  articles img_page">
        <h1><?= $_SESSION['alias']->title ?></h1>
    <?php if(!empty($_SESSION['alias']->images)) { ?>
    <div
      style="--swiper-navigation-color: #fff; --swiper-pagination-color: #fff"
      class="swiper mySwiper2"
    >
      <div class="swiper-wrapper">
        <?php foreach($_SESSION['alias']->images as $image) {  ?>
        <div class="swiper-slide">
          <img src="<?= IMG_PATH.$image->path ?>" />
        </div>
        <?php } ?>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
    </div>
    <div thumbsSlider="" class="swiper mySwiper">
      <div class="swiper-wrapper">
      <?php foreach($_SESSION['alias']->images as $image) {  ?>
        <div class="swiper-slide">
          <img src="<?= IMG_PATH.$image->path ?>" />
        </div>
        <?php } ?>
      </div>
    </div>
    <?php } ?>
</main>
<?php } ?>