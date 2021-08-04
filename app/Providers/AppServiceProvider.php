<?php

namespace App\Providers;

use DB;
use File;
use App\User;
use Laravel\Cashier\Cashier;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Cashier::useCustomerModel(User::class);
        Schema::defaultStringLength(191);


        if (env('APP_DEBUG')) {
            DB::listen(function ($query) {


                File::append(
                    storage_path('/logs/query.log'),
                    '[' . date('Y-m-d H:i:s') . '] ' . $query->sql . ' >>[' . implode(', ', $query->bindings) . '] ;' . PHP_EOL
                );
            });
        }
    }
}
