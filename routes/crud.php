<?php

          Route::group(['as'=>'admin.', 'prefix' => 'admin', 'middleware' => 'auth:admin' ], function(){
               Route::resource('tests','Admin\TestController');Route::resource('coursetypes','Admin\CourseTypeController');
          });
