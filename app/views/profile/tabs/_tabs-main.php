<h2 class="heading-md">Загальні дані мого аккаунту</h2>
<br>
<form action="<?= SITE_URL?>profile/saveUserInfo" method="POST" class="sky-form">
    <dl class="dl-horizontal">
        <dt>
            <strong>Моє ім'я</strong>
        </dt>
        <dd>
            <span id="name"><?=$_SESSION['user']->name?></span>
            <span>
                <a class="pull-right" href="#" onclick="changeInfo('name')">
                    <i class="fa fa-pencil"></i>
                </a>
            </span>
        </dd>
        <hr>

        <dt>
            <strong>Мій email </strong>
        </dt>
        <dd>
            <?=$_SESSION['user']->email?>
        </dd>
        <hr>

        <dt>
            <strong>Тип</strong>
        </dt>
        <dd>
            <?php if ($_SESSION['user']->admin == 1){ ?>
                Адміністратор
            <?php }else{ ?>
                Користувач
            <?php } ?>
        </dd>
        <hr>

        <dt>
            <strong>Останній вхід </strong>
        </dt>
        <dd>
            <?= date("d.m.Y H:i", $user->last_login); ?>
        </dd>
        <hr>

        <dt>
            <strong>Дата реєстрації</strong>
        </dt>
        <dd>
            <?= date("d.m.Y H:i", $user->registered); ?>
        </dd>
        <hr>
        <?php $info = array('phone' => 'Номер телефону', 'address' => 'Адреса');
            foreach($info as $key => $title) { if(isset($user->info[$key])) {?>
            <dt>
                <?= $title ?>
            </dt>
            <dd>
                <span id="<?= $key ?>"><?= $user->info[$key] ?></span>
                <span>
                    <a class="pull-right" href="#" onclick="changeInfo('<?= $key ?>')">
                        <i class="fa fa-pencil"></i>
                    </a>
                </span>
            </dd>
            <hr>
        <?php } }?>
        <button class="btn-u hidden" type="submit" id="saveInfo" >Зберегти зміни</button>
    </dl>
</form>