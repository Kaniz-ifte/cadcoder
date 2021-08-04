<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use DB;
use Auth;
use App\User;
use App\Course;
use Mail;
use Illuminate\Support\Facades\Session;

class IndexController extends Controller
{

     public function __construct() {

        $this->pageIcon = 'icon-clock';
        $this->pageTitle ='Title';

     }


     public function View(){

          $this->courses=Course::with(['lectures'])->leftJoin('users','courses.instructor_id','users.id')->leftJoin('course_types','courses.type','course_types.id')->select('courses.*','users.name as instructor','course_types.title as course_type')->get()->groupBy('course_type');

         return view('pages.index')->with(['data'=>$this]);

     }
    





}
