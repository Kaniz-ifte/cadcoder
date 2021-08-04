<?php

use App\TableColumn;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Database\Schema\Blueprint;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::prefix('bappi-123')->group(function () {

    Route::get('migrate', function () {
        Schema::table('admins', function (Blueprint $table) {
            $table->string('stripe_id')->nullable()->index();
            $table->string('pm_type')->nullable();
            $table->string('pm_last_four', 4)->nullable();
            $table->timestamp('trial_ends_at')->nullable();
        });
        return "successfull";
    });

    Route::get('table', function () {
        // return TableColumn::all()->groupBy('optgroup');
        return DB::connection()->getDoctrineSchemaManager()->listTableNames();
    });

    Route::get('/table/{table}', function ($table) {
        return DB::getSchemaBuilder()->getColumnListing($table);
    });

    Route::get('php-artisan/{command}', function ($command) {
        return Artisan::call($command);
    });
});
