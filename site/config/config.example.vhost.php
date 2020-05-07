<?php
// When using a vhost config, we should just include the local config file.
$config = __DIR__ . DS . 'config.localhost.php';

return array_merge(F::load($config, []));
