<main class="main container articles detals">
	<section class="art-grid-constructor">
		<?php if(!empty($_SESSION['alias']->text)) {?>
		<div class="art1_img-item ">
			<span class="notes"><?= html_entity_decode($_SESSION['alias']->text) ?></span>
		</div>
		<?php } ?>
		<div class="art1_text-item ">
			<div class="img_page">
				<h1><?= $_SESSION['alias']->title ?></h1>
				<?php if (!empty($_SESSION['alias']->images) && count($_SESSION['alias']->images) > 1) { ?>
					<div style="--swiper-navigation-color: #fff; --swiper-pagination-color: #fff" class="swiper mySwiper2">
						<div class="swiper-wrapper">
							<?php foreach ($_SESSION['alias']->images as $image) {
								if ($image->position != 1) { ?>
									<div class="swiper-slide">
										<img src="<?= IMG_PATH . $image->path ?>" />
									</div>
							<?php }
							} ?>
						</div>
						<div class="swiper-button-next"></div>
						<div class="swiper-button-prev"></div>
					</div>
					<div thumbsSlider="" class="swiper mySwiper">
						<div class="swiper-wrapper">
							<?php foreach ($_SESSION['alias']->images as $image) {  ?>
								<div class="swiper-slide">
									<img src="<?= IMG_PATH . $image->path ?>" />
								</div>
							<?php } ?>
						</div>
					</div>
			</div>
		</div>
	</section>
<?php } ?>
</main>