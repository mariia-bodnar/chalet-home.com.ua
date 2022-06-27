<?php $groups = $this->load->function_in_alias('our_projects', '__get_Groups'); ?>
<?php $pages_info = [
  $this->text('Статті', 0) => SITE_URL . 'articles',
  $this->text('Посилання', 0) => SITE_URL . 'links',
  $this->text('Партнери', 0) => SITE_URL . 'partners',
  $this->text('Загальна інформація', 0) => SITE_URL . 'chalet_information',
]; ?>
<?php $pages = [
  $this->text('Загальна інформація', 0) => SITE_URL . 'chalet_log_home',
  $this->text('Проектування', 0) => SITE_URL . 'design',
  $this->text('Технологія', 0) => SITE_URL . 'technology',
  $this->text('Комплектація та ціни', 0) => SITE_URL . 'prices'
]; ?>
<?php if ($_SESSION['alias']->alias == 'about-us' || $_SESSION['alias']->alias == 'contacts') { ?>
  <div class="banner" id="short_ban">
    <?php  } elseif ($_SESSION['alias']->alias != 'about-us') {
    if ($_SESSION['alias']->alias == 'our_projects' || $_SESSION['alias']->alias == 'main') { ?>
      <div class="banner" id="<?= $_SESSION['alias']->alias ?>">
      <?php  } ?>
      <?php foreach ($pages as $key => $value) {
        if ($_SESSION['alias']->alias == 'chalet_log_home' || $_SESSION['alias']->name == $key) { ?>
          <div class="banner" id="static_pages">
          <?php break;
        }
      }
      if ($_SESSION['alias']->alias == 'frame_houses' || empty($_SESSION['alias']->alias)) { ?>
          <div class="banner" id="<?= $_SESSION['alias']->alias ?>">
          <?php } ?>
          <?php foreach ($pages_info as $key => $value) {
            if ($_SESSION['alias']->alias == 'chalet_information' || $_SESSION['alias']->name == $key) { ?>
              <div class="banner" id="info_pages">
            <?php break;
            }
          } ?>
          <?php } else { ?>
            <div class="banner" id="<?= $_SESSION['alias']->alias ?>">
            <?php } ?>
            <div class="container banner-constructor">
              <a class="logo" href="<?= SITE_URL ?>">
                <img src="<?= SERVER_URL ?>style/icons/logotype.png">
              </a>
              <?php if ($_SESSION['alias']->alias == 'our_projects') { ?>
                <div class="sub_pages-link">
                  <?php foreach ($groups as $group) {
                    if ($_SESSION['alias']->name == $group->name) { ?>
                      <a href="<?= SITE_URL.$group->link ?>" style="color: #fff;"><?= $group->name ?></a>
                    <?php } else { ?>
                      <a href="<?= SITE_URL.$group->link ?>"><?= $group->name ?></a>
                  <?php }
                  } ?>
                </div>
              <?php } ?>
              <?php foreach ($pages as $key => $value) {
                if ($_SESSION['alias']->alias == 'chalet_log_home' || $_SESSION['alias']->name == $key) { ?>
                  <div class="sub_pages-link" style="flex-direction: column;">
                    <?php foreach ($pages as $key => $value) {
                      if ($_SESSION['alias']->name == $key) { ?>
                        <a href="<?= $value ?>" style="color: #fff;"><?= $key ?></a>
                      <?php } elseif ($_SESSION['alias']->alias == 'chalet_log_home' && $value == SITE_URL . 'chalet_log_home') { ?>
                        <a href="<?= $value ?>" style="color: #fff;"><?= $key ?></a>
                      <?php } else { ?>
                        <a href="<?= $value ?>"><?= $key ?></a>
                    <?php }
                    } ?>
                  </div>
              <?php break;
                }
              } ?>
              <?php foreach ($pages_info as $key => $value) {
                if ($_SESSION['alias']->alias == 'chalet_information' || $_SESSION['alias']->name == $key) { ?>
                  <div class="sub_pages-link">
                    <?php foreach ($pages_info as $key => $value) {
                      if ($_SESSION['alias']->name == $key) { ?>
                        <a href="<?= $value ?>" style="color: #fff;"><?= $key ?></a>
                      <?php }elseif ($_SESSION['alias']->alias == 'chalet_information' && $value == SITE_URL . 'chalet_information') { ?>
                        <a href="<?= $value ?>" style="color: #fff;"><?= $key ?></a>
                      <?php } else { ?>
                        <a href="<?= $value ?>"><?= $key ?></a>
                    <?php }
                    } ?>
                  </div>
              <?php break;
                }
              } ?>
              <div class="sign">
                <img src="<?= SERVER_URL ?>style/icons/sign.png">
              </div>
              <div class="titles">
                <?php if (!empty($_SESSION['alias']->text)) {
                  if ($_SESSION['alias']->alias == 'about-us') { ?>
                    <h2 class="animate-typing" id="state_on" data-type-speed="100" data-type-delay="200" data-remove-speed="50" data-remove-delay="500"><?= html_entity_decode($_SESSION['alias']->text) ?></h2>
                  <?php } elseif ($_SESSION['alias']->alias == 'our_projects') { ?>
                    <h2 class="animate-typing" id="state_on" data-type-speed="100" data-type-delay="200" data-remove-speed="50" data-remove-delay="500"><?= $this->text('Зруб вручну - унікальна робота', 0) ?></h2>
                  <?php } else { ?>
                    <h2 class="animate-typing" data-type-speed="100" data-type-delay="200" data-remove-speed="50" data-remove-delay="500"><?= html_entity_decode($_SESSION['alias']->text) ?></h2>
                <?php }
                } ?>
                <?php if (!empty($_SESSION['alias']->list && $_SESSION['alias']->alias != 'our_projects')) {  ?>
                  <h1 class="firstWord"><?= html_entity_decode($_SESSION['alias']->list) ?></h1>
                <?php } ?>
              </div>
            </div>
            </div>