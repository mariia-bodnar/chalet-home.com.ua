<footer class="footer">
    <div class="container footer-constructor">
        <form id="request-form" method="POST" action="<?= SERVER_URL ?>save/request-form">
            <h2><?= $this->text(' Заповніть форму для зворотнього звя' . "'" . 'зку', 0) ?></h2>
            <div class="form-constructor">
                <input name="name" type="text" placeholder="<?= $this->text('Ім' . "'" . 'я', 0) ?>" required>
                <input name="email" type="text" placeholder="<?= $this->text('Email', 0) ?>" required>
                <input id="phone" type="tel" placeholder="<?= $this->text('Телефон', 0) ?>" name="phone" required />
                <button type="submit"><?= $this->text('Надіслати', 0) ?></button>
            </div>
        </form>
        <div class="footer_info">
            <div><?= $this->text('Адреса') ?>:<a target="blank" href="<?= $this->text('link - google maps adress',0)?>"><?= $this->text('Українa, 90415, Закарпатська обл., Хустський р-н. с. Липча, вул. Зарічна 33', 0) ?></a></div>
            <div><?= $this->text('Телефон') ?>:<a href="tel:<?= $this->text('phone-1', 0) ?>"><?= $this->text('phone-1', 0) ?></a><a href="tel:<?= $this->text('phone-2', 0) ?>"><?= $this->text('phone-2', 0) ?></a></div>
        </div>
    </div>
    <span class="container footer_bottom-text"><?= $this->text('© 2008-2022 CHALET Шале. Дерев'."'".'яний дім', 0) ?></span>
</footer>