<?php
/**
 * Список бібліотек які будуть завантаження за замовчуванням
 */
$config['autoload'] = array('db', 'data');
$config['recaptcha'] = array(
	'public' => '',
	'secret' => '',
	'public_v3' => '6LfBdFwgAAAAAKEayLYijfszdij-L8p49ABY2Kcp',
	'secret_v3' => '6LfBdFwgAAAAABjluE0LAOZz5MuHJNBWgXTEBgR2'
);
$config['facebook'] = array('appId' => 'FACEBOOK_APP_ID', 'secret' => 'FACEBOOK_SECRET_KEY');
$config['googlesignin'] = array('clientId' => 'GOOGLE_CLIENT_ID', 'secret' => 'GOOGLE_API_SECRET');

/**
 * Параметри для з'єднання до БД
 */
$config['db'] = array(
	'host' 		=> 'localhost',
	'user' 		=> 'root',
	'password'	=> '',
	'database'	=> 'chalet-home.com'
);

$config['mail'] = array(
	'host' 		=> '$MAILHOST',
	'user' 		=> '$MAILUSER',
	'password'	=> '$MAILPASSWORD',
	'port'		=> '$MAILPORT'
);

$config['Paginator'] = array(
	'ul'		=> 'pagination nomargin'
);
$config['video'] = array(
	'width'		=> 737
);

?>
