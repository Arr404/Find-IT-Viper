<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (file_exists(SYSTEMPATH . 'Config/Routes.php')) {
	require SYSTEMPATH . 'Config/Routes.php';
}

/**
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Login');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
$routes->setAutoRoute(true);

/**
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
$routes->get('/activate/(:segment)', 'AuthController::activate/$1');
$routes->get('/recover-password/(:segment)', 'AuthController::recover_view/$1');
$routes->get('/', 'Home::index', ['filter' => 'auth']);
$routes->get('/report', 'Report::index', ['filter' => 'auth']);
$routes->get('/tracking', 'Tracking::index', ['filter' => 'auth']);
// $routes->get('/dashboard', 'Dashboard::index', ['filter' => 'auth']);
$routes->get('/login', 'Login::index');
// $routes->get('/register', 'Register::index');
// $routes->get('/forgot-password', 'Forgot::index');
// $routes->get('/login', function () {
// 	return view('auth/login');
// });
$routes->get('/register', function () {
	return view('auth/register');
});
$routes->get('/logout', function () {
	return redirect()->to('/authController/logout');
});
$routes->get('/forgot-password', function () {
	return view('auth/forgot-password');
});
// $routes->get('/dashboard', function () {
// 	return view('dashboard/dashboard');
// }
// );
$routes->get('/data', 'home::index');
$routes->resource('employee');
/**
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (file_exists(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
	require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
