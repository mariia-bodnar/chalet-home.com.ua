<!DOCTYPE html>
<!--[if IE 8]> <html lang="<?=$_SESSION['language']?>" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="<?=$_SESSION['language']?>">
<!--<![endif]-->
<head>
    <meta charset="utf-8" />
    <title>Відновлення паролю | <?=SITE_NAME?></title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />

    <link rel="shortcut icon" href="<?=SERVER_URL?>favicon.ico">

    <!-- ================== BEGIN BASE CSS STYLE ================== -->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,700,300,600,400&subset=latin,cyrillic' rel='stylesheet' type='text/css'>
    <link href="<?=SERVER_URL?>assets/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
    <link href="<?=SERVER_URL?>assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="<?=SERVER_URL?>style/admin/font-awesome-4.0.3/font-awesome.css" rel="stylesheet" />
    <link href="<?=SERVER_URL?>style/admin/animate.min.css" rel="stylesheet" />
    <link href="<?=SERVER_URL?>style/admin/style.min.css" rel="stylesheet" />
    <link href="<?=SERVER_URL?>style/admin/style-responsive.min.css" rel="stylesheet" />
    <link href="<?=SERVER_URL?>style/admin/theme/default.css" rel="stylesheet" id="theme" />
    <!-- ================== END BASE CSS STYLE ================== -->

    <!-- ================== BEGIN BASE JS ================== -->
    <script src="<?=SERVER_URL?>assets/pace/pace.min.js"></script>
    <!-- ================== END BASE JS ================== -->
</head>
<body class="pace-top bg-white">
    <div id="divLoading"></div>
    <!-- begin #page-loader -->
    <div id="page-loader" class="fade in"><span class="spinner"></span></div>
    <!-- end #page-loader -->

    <!-- begin #page-container -->
    <div id="page-container" class="fade">
        <!-- begin login -->
        <div class="login login-with-news-feed">
            <!-- begin news-feed -->
            <div class="news-feed">
                <div class="news-image">
                    <img src="<?=SITE_URL?>style/admin/login-bg/bg-8.jpg" data-id="login-cover-image" alt="" />
                </div>
                <div class="news-caption">
                    <h4 class="caption-title"><i class="fa fa-diamond text-success"></i> <?=SITE_NAME?> </h4>
                    <p> <a href="<?=SITE_URL?>"> <?=SITE_URL?> </a> </p>
                </div>
            </div>
            <!-- end news-feed -->
            <!-- begin right-content -->
            <div class="right-content">
                <!-- begin login-header -->
                <div class="login-header">
                    <div class="brand">
                        <span class="logo"></span> <?=$this->text('Відновлення паролю')?>
                        <small> <?=$this->text('Відновити доступ до кабінету користувача')?>. </small>
                    </div>
                    <div class="icon">
                        <i class="fa fa-sign-in"></i>
                    </div>
                </div>
                <!-- end login-header -->
                <!-- begin login-content -->
                <div class="login-content">

                    <?php if(!empty($_SESSION['notify']->errors)): ?>
                       <div class="alert alert-danger fade in">
                            <span class="close" data-dismiss="alert">×</span>
                            <h4><?=(isset($_SESSION['notify']->title)) ? $_SESSION['notify']->title : $this->text('Помилка!', 0)?></h4>
                            <p><?=$_SESSION['notify']->errors?></p>
                        </div>
                    <?php elseif(!empty($_SESSION['notify']->success)): ?>
                        <div class="alert alert-success fade in">
                            <span class="close" data-dismiss="alert">×</span>
                            <i class="fa fa-check fa-2x pull-left"></i>
                            <h4><?=(isset($_SESSION['notify']->title)) ? $_SESSION['notify']->title : $this->text('Успіх!', 0)?></h4>
                            <p><?=$_SESSION['notify']->success?></p>
                        </div>
                    <?php endif; unset($_SESSION['notify']); ?>

                    <form action="<?=SITE_URL?>reset/process" method="POST" class="margin-bottom-0" onsubmit="$('#divLoading').addClass('show');">
                        <div class="form-group m-b-15">
                            <input type="email" name="email" class="form-control input-lg" placeholder="Email Address" value="<?=$this->data->re_post('email')?>" required />
                        </div>
                        <div class="form-group m-b-15">
                            <?php
                                $this->load->library('recaptcha');
                                $this->recaptcha->form();
                            ?>
                        </div>
                        <div class="login-buttons">
                            <button type="submit" class="btn btn-success btn-block btn-lg"><?=$this->text('Продовжити відновлення')?></button>
                        </div>
                        <div class="m-t-20 m-b-40 p-b-40">
                            <?=$this->text('Якщо пам\'ятаєте Ваш пароль перейдіть на сторінку')?> <a href="<?=SITE_URL?>login" class="text-success"><?=$this->text('увійти в систему')?></a>.
                        </div>
                        <hr />
                        <p class="text-center text-inverse">
                            &copy; White Lion CMS All Right Reserved 2015
                        </p>
                        <p class="text-center text-inverse">
                            &copy; Color Admin All Right Reserved 2015
                        </p>
                    </form>
                </div>
                <!-- end login-content -->
            </div>
            <!-- end right-container -->
        </div>
        <!-- end login -->
    </div>
    <!-- end page container -->

    <!-- ================== BEGIN BASE JS ================== -->
    <script src="<?=SERVER_URL?>assets/jquery/jquery-1.9.1.min.js"></script>
    <script src="<?=SERVER_URL?>assets/jquery/jquery-migrate-1.1.0.min.js"></script>
    <script src="<?=SERVER_URL?>assets/jquery-ui/ui/minified/jquery-ui.min.js"></script>
    <script src="<?=SERVER_URL?>assets/bootstrap/js/bootstrap.min.js"></script>
    <!--[if lt IE 9]>
        <script src="<?=SERVER_URL?>assets/crossbrowserjs/html5shiv.js"></script>
        <script src="<?=SERVER_URL?>assets/crossbrowserjs/respond.min.js"></script>
        <script src="<?=SERVER_URL?>assets/crossbrowserjs/excanvas.min.js"></script>
    <![endif]-->
    <script src="<?=SERVER_URL?>assets/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="<?=SERVER_URL?>assets/jquery-cookie/jquery.cookie.js"></script>
    <!-- ================== END BASE JS ================== -->

    <!-- ================== BEGIN PAGE LEVEL JS ================== -->
    <script src='https://www.google.com/recaptcha/api.js?hl=uk'></script>
    <script src="<?=SERVER_URL?>assets/color-admin/apps.min.js"></script>
    <!-- ================== END PAGE LEVEL JS ================== -->

    <script>
        $(document).ready(function() {
            App.init();
        });
    </script>
</body>
</html>