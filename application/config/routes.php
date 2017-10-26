<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$route['posts/update'] = 'posts/update';
$route['posts/create'] = 'posts/create';
$route['default_controller'] = 'pages/view';
$route['posts/(:any)'] = 'posts/view/$1';
$route['posts'] = 'posts/index';
$route['(:any)'] = 'pages/view/$1';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
