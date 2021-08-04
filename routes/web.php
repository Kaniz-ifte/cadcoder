<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use Illuminate\Support\Facades\Route;



Route::get('/help', 'PagesController@help')->name('help');
Route::get('/settings', 'PagesController@profile')->name('settings');

Route::get('/message', 'PagesController@message')->name('message');
Route::get('/dashboard', 'PagesController@dashboard')->name('dashboard');
Route::get('/courses/{type}', 'PagesController@courseType')->name('courses');
Route::get('/course/{id}', 'PagesController@course')->name('course');

Route::get('/', 'IndexController@View')->name('first');
Route::get('/index', 'IndexController@View')->name('index');


Route::get('/terms-conditions', function () {
    return view('pages.terms-conditions');
})->name('terms-conditions');

Route::get('/classroom/{id}', 'PagesController@classroom')->name('classroom');
Route::get('/grade/{id}', 'PagesController@grade')->name('grade');
Route::get('/course-info/{id}', 'PagesController@courseInfo')->name('course-info');
Route::get('/discussion/{id}', 'PagesController@discussion')->name('discussion');
Route::get('/notebook/{id}', 'PagesController@notebook')->name('notebook');
Route::get('/library/{id}', 'PagesController@library')->name('library');
Route::get('/lecture/{course_id}/{id}', 'PagesController@lecture')->name('lecture');

Route::get('/checkout/course/{id}', 'PagesController@checkout')->name('checkout');
Route::get('/orer-success/{id}', 'PagesController@successOrder')->name('success-order');

Route::get('/events', function () {
    return view('pages.events');
})->name('events');

Route::get('/contact-us', function () {
    return view('pages.contact-us');
})->name('contact-us');

Route::get('/faqs', function () {
    return view('pages.faqs');
})->name('faqs');

Route::get('/instructors', function () {
    return view('pages.instructors');
})->name('instructors');

Route::get('/design-your-desire', function () {
    return view('pages.design-your-desire');
})->name('design-your-desire');

Route::get('/notifications', function () {
    return view('pages.notifications');
})->name('notifications');


Route::get('/become-instructor', function () {
    return view('pages.become-instructor');
})->name('become-instructor');


Route::get('/privacy-policy', function () {
    return view('pages.privacy-policy');
})->name('privacy-policy');


Route::get('/about-us', function () {
    return view('pages.about-us');
})->name('about-us');

Route::get('/teacher_profile/{id}', 'PagesController@teacherProfile')->name('teacherProfile');
Route::get('note/{id}', 'PagesController@viewNotes');
Route::post('/note', 'PagesController@notebooks')->name('note');
Route::delete('/note/{id}', 'PagesController@deleteNotebook');

Route::get('get_comment/{lecture_id}','Admin\LectureCommentController@getComments');
Route::post('lecture_comment','Admin\LectureCommentController@store')->name('lecture_comment');
Route::delete('/deleteComment/{id}', 'Admin\LectureCommentController@deleteComment');

Route::get('/users/logout', 'Auth\LoginController@userLogout')->name('user.logout');
Route::get('/logout', 'Auth\LoginController@userLogout')->name('logout');

Route::prefix('admin')->group(function () {
    Route::get('/login', 'Admin\Auth\LoginController@showLoginForm')->name('admin.login');
    Route::post('/login', 'Admin\Auth\LoginController@login')->name('admin.login.submit');
    Route::get('/', 'Admin\Auth\LoginController@showLoginForm')->name('admin');
    Route::get('/dashboard', 'Admin\DashboardController@Index')->name('admin.dashboard');
    Route::get('/logout', 'Admin\Auth\LoginController@logout')->name('admin.logout');

    // Password reset routes
    Route::post('/password/email', 'Admin\Auth\ForgotPasswordController@sendResetLinkEmail')->name('admin.password.email');
    Route::get('/password/reset', 'Admin\Auth\ForgotPasswordController@showLinkRequestForm')->name('admin.password.request');
    Route::post('/password/reset', 'Admin\Auth\ResetPasswordController@reset');
    Route::get('/password/reset/{token}', 'Admin\Auth\ResetPasswordController@showResetForm')->name('admin.password.reset');
});

Route::group(['middleware' => ['auth:admin']], function () {


    Route::get('/dashboard', function () {
        return redirect('/admin/dashboard');
    });

    Route::get('/language/{locale}', function ($locale) {
        Session::put('locale', $locale);
        return redirect()->back();
    });
});

Route::get('/login/{provider}', 'Auth\LoginController@redirectToProvider')->name('login.social-media');
Route::get('/login/{provider}/callback', 'Auth\LoginController@handleProviderCallback');



// Admin Group
Route::group(['as' => 'admin.', 'prefix' => 'admin', 'middleware' => 'auth:admin'], function () {

    Route::resource('users', 'Admin\UserController');
    Route::resource('roles', 'Admin\RoleController');
    Route::resource('admins', 'Admin\AdminController');
    Route::resource('settings', 'Admin\SettingController');
    Route::resource('sliders', 'Admin\SliderController');
    Route::resource('gallery', 'Admin\GalleryController');
    Route::resource('admin-menus', 'Admin\AdminMenuController');
    Route::resource('testimonials', 'Admin\TestimonialController');
    Route::resource('subscriptions', 'Admin\SubscriptionController');
    Route::resource('blogs', 'Admin\BlogController');
    Route::resource('terms-conditions', 'Admin\TermsConditionController');
    Route::resource('faqs', 'Admin\FaqController');
    Route::resource('privacy-policy', 'Admin\PrivacyPolicyController');
    Route::resource('social-media', 'Admin\SocialMediaController');
    Route::resource('base-inputs', 'Admin\BaseInputController');
    Route::resource('base-columns', 'Admin\BaseColumnController');

    Route::get('profile', 'Admin\ProfileController@index')
        ->name('profile');
    Route::get('developer/inputs', 'Admin\DeveloperController@inputs')
        ->name('developer.inputs');
    Route::get('developer/payment-gateways', 'Admin\DeveloperController@paymentGateways')
        ->name('developer.payment-gateways');
    Route::get('developer/columns', 'Admin\DeveloperController@columns')
        ->name('developer.columns');
    Route::get('developer/database-queries', 'Admin\DeveloperController@databaseQueryLog')
        ->name('developer.database-queries');
    Route::get('save-nested-admin-menus', 'Admin\AdminMenuController@saveNestedMenus')
        ->name('save-nested-admin-menus');

    // STUB after makeing menus have to run this
    Route::get('/create-crud/{id}', 'Admin\CrudController@create')->name('create-crud');

    Route::get('/test', 'PagesController@testGet')->name('test-get');

    Route::post('/test', 'PagesController@testPost')->name('test-post');
    Route::get('base-input/{base_input}', [\App\Http\Controllers\Admin\BaseInputController::class, "getParams"])->name('base-input');
    Route::get('base-column/{base_column}', [\App\Http\Controllers\Admin\BaseColumnController::class, "getParams"])->name('base-column');
});


// SSLCOMMERZ Start

Route::post('/pay', [\App\Http\Controllers\SslCommerzPaymentController::class, 'index']);
Route::post('/pay-via-ajax', [\App\Http\Controllers\SslCommerzPaymentController::class, 'payViaAjax']);

Route::post('/success', [\App\Http\Controllers\SslCommerzPaymentController::class, 'success']);
Route::post('/fail', [\App\Http\Controllers\SslCommerzPaymentController::class, 'fail']);
Route::post('/cancel', [\App\Http\Controllers\SslCommerzPaymentController::class, 'cancel']);

Route::post('/ipn', [\App\Http\Controllers\SslCommerzPaymentController::class, 'ipn']);
//SSLCOMMERZ END

//stripe
Route::post('/stripe/pay', [\App\Http\Controllers\User\PaymentController::class, 'paymentStripe'])->name('payment-stripe');



Auth::routes();
