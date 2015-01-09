%if mode == 'definition':
Balanced\APIKey->unstore();

% else:
<?php

require(__DIR__ . '/vendor/autoload.php');

Httpful\Bootstrap::init();
RESTful\Bootstrap::init();
Balanced\Bootstrap::init();

Balanced\Settings::$api_key = "ak-test-2eKlj1ZDfAcZSARMf3NMhBHywDej0avSY";

$api_key = Balanced\APIKey::get("/api_keys/AK3DQGzROuoRYulKXMQdHBxX");
$api_key->unstore();

?>
%endif