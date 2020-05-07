<?php
return [
  'current-config' => 'global-config',
  'locale' => [
    LC_COLLATE => 'fr_FR.UTF-8',
    LC_MONETARY => 'fr_FR.UTF-8',
    LC_NUMERIC => 'fr_FR.UTF-8',
    LC_TIME => 'fr_FR.UTF-8',
    LC_MESSAGES => 'fr_FR.UTF-8',
    LC_CTYPE => 'fr_FRs.UTF-8',
  ],
  'date' => [
    'handler' => 'strftime',
  ],
  'cache' => [
    'driver' => 'FileCache',
    'pages' => [
      'active' => true,
    ],
  ],
];
