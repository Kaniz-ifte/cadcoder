<?php

namespace App\Http\Controllers;

use App\CourseType;
use App\Course;
use App\Lecture;
use App\Library;
use App\Notebook;
use App\Discussion;
use App\Order;
use App\Wishlist;
use App\ActivityLog;
use App\Http\Controllers\Admin\LectureCommentController;
use App\LectureComment;
use App\Review;
use App\Teacher;
use App\User;
use DB;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB as FacadesDB;

class PagesController extends Controller
{
     public function index()
     {
          $page_title = 'Dashboard';
          $page_description = 'This Is Base Admin Panel Of Tork';

          return view('pages.dashboard', compact('page_title', 'page_description'));
     }
     public function course($id)
     {

          $course = Course::where('id', $id)->first();

          $instructor = Teacher::where('id', $course->instructor_id)->first();
          $title = DB::table('categories')->find($course->cat_id)->title;
          $lectures = Lecture::where('course_id', $course->id)->get();
          //     $lectures = Lecture::select('*')->leftJoin("lectures", "lectures.course_id", "=", $course->id)->get();
          //     dd($lectures);
          return view('pages.course', compact('course', 'instructor', 'lectures', 'title'));
     }

     public function message()
     {

          $user = Auth::User();

          $continue_courses = Order::with(['course'])->where('user_id', $user->id)->where('is_paid', 1)->where('is_completed', '!=', 1)->where('is_active', 1)->get();

          $completed_courses = Order::with(['course'])->where('user_id', $user->id)->where('is_paid', 1)->where('is_completed', 1)->where('is_active', 1)->get();

          $wishlists = Wishlist::where('user_id', $user->id)->where('is_active', 1)->orderBy('id', 'DESC')->get();

          $activity_logs = ActivityLog::where('user_id', $user->id)->where('is_active', 1)->orderBy('id', 'DESC')->get();

          $data = [
               'continue_courses' => $continue_courses,
               'completed_courses' => $completed_courses,
               'wishlists' => $wishlists,
               'activity_logs' => $activity_logs,
               'user' => $user,
          ];

          return view('pages.message', $data);
     }


     public function dashboard()
     {

          $user = Auth::User();

          $continue_courses = Order::with(['course'])->where('user_id', $user->id)->where('is_paid', 1)->where('is_completed', '!=', 1)->where('is_active', 1)->get();

          $completed_courses = Order::with(['course'])->where('user_id', $user->id)->where('is_paid', 1)->where('is_completed', 1)->where('is_active', 1)->get();

          $wishlists = Wishlist::where('user_id', $user->id)->where('is_active', 1)->orderBy('id', 'DESC')->get();

          $activity_logs = ActivityLog::where('user_id', $user->id)->where('is_active', 1)->orderBy('id', 'DESC')->get();

          $data = [
               'continue_courses' => $continue_courses,
               'completed_courses' => $completed_courses,
               'wishlists' => $wishlists,
               'activity_logs' => $activity_logs,
               'user' => $user,
          ];

          return view('pages.user-dashboard', $data);
     }


     public function courseType($type_id)
     {

          $page_description = 'This Is Base Admin Panel Of Tork';
          $courses = Course::with(['lectures', 'instructor'])->where('type', $type_id)->get();
          $type = CourseType::where('id', $type_id)->first();
          $data = [
               'type' => $type,
               'courses' => $courses,
          ];

          // return dd($data);

          return view('pages.courses', $data);
     }

     public function classroom($course_id)
     {

          $page_description = 'This Is Base Admin Panel Of Tork';
          $lectures = Lecture::where('course_id', $course_id)->get();
          $course = Course::where('id', $course_id)->first();
          $courses = Course::with(['lectures', 'instructor'])->get();
          $data = [
               'lectures' => $lectures,
               'course' => $course,
               'courses' => $courses,
          ];

          // return dd($data);

          return view('pages.classroom', $data);
     }

     public function discussion($course_id)
     {

          $page_description = 'This Is Base Admin Panel Of Tork';
          $lectures = Lecture::where('course_id', $course_id)->get();
          $course = Course::where('id', $course_id)->first();
          $courses = Course::with(['lectures', 'instructor'])->get();
          $discussions = Discussion::leftJoin('users', 'discussions.user_id', 'users.id')->where('course_id', $course_id)->select('discussions.*', 'users.name as user_name', 'users.avatar as user_avatar')->orderBy('created_at', 'ASC')->get()->groupBy(['lecture_id', 'parent_id']);
          $data = [
               'lectures' => $lectures,
               'course' => $course,
               'courses' => $courses,
               'discussions' => $discussions,
          ];

          //     return dd($discussions[3]);

          return view('pages.discussion', $data);
     }

     public function notebook($course_id)
     {

          $page_description = 'This Is Base Admin Panel Of Tork';
          $lectures = Lecture::where('course_id', $course_id)->get();
          $course = Course::where('id', $course_id)->first();
          $courses = Course::with(['lectures', 'instructor'])->get();
          $notebooks = Notebook::where('course_id', $course_id)->orderBy('order', 'DESC')->get()->groupBy('lecture_id');
          $data = [
               'lectures' => $lectures,
               'course' => $course,
               'courses' => $courses,
               'notebooks' => $notebooks,
          ];

          // return dd($data);

          return view('pages.notebook', $data);
     }

     public function library($course_id)
     {

          $page_description = 'This Is Base Admin Panel Of Tork';
          $lectures = Lecture::where('course_id', $course_id)->get();
          $course = Course::where('id', $course_id)->first();
          $courses = Course::with(['lectures', 'instructor'])->get();
          $libraries = Library::where('course_id', $course_id)->orderBy('order', 'DESC')->get()->groupBy('lecture_id');
          $data = [
               'lectures' => $lectures,
               'course' => $course,
               'courses' => $courses,
               'libraries' => $libraries,
          ];

          // return dd($data);

          return view('pages.library', $data);
     }

     public function grade($course_id)
     {

          $page_description = 'This Is Base Admin Panel Of Tork';
          $lectures = Lecture::where('course_id', $course_id)->get();
          $course = Course::where('id', $course_id)->first();
          $courses = Course::with(['lectures', 'instructor'])->get();
          $data = [
               'lectures' => $lectures,
               'course' => $course,
               'courses' => $courses,
          ];

          // return dd($data);

          return view('pages.grade', $data);
     }

     public function courseInfo($course_id)
     {

          $page_description = 'This Is Base Admin Panel Of Tork';
          $lectures = Lecture::where('course_id', $course_id)->get();
          $course = Course::where('id', $course_id)->first();
          $courses = Course::with(['lectures', 'instructor'])->get();
          $data = [
               'lectures' => $lectures,
               'course' => $course,
               'courses' => $courses,
          ];

          // return dd($data);

          return view('pages.course-info', $data);
     }

     public function lecture($course_id, $lecture_id)
     {

          $page_description = 'This Is Base Admin Panel Of Tork';
          $lecture = Lecture::where('id', $lecture_id)->first();
          $lectures = Lecture::where('course_id', $course_id)->get();
          $course = Course::where('id', $course_id)->first();
          $courses = Course::with(['lectures', 'instructor'])->get();
          $notebooks = Notebook::where('lecture_id', $lecture_id)->orderBy('order', 'DESC')->get();
          $libraries = Library::where('lecture_id', $lecture_id)->orderBy('order', 'DESC')->get();
          $discussions = Discussion::leftJoin('users', 'discussions.user_id', 'users.id')
               ->where('lecture_id', $lecture_id)
               ->select('discussions.*', 'users.name as user_name', 'users.avatar as user_avatar')
               ->orderBy('created_at', 'ASC')->get()->groupBy('parent_id');
          $data = [
               'lecture' => $lecture,
               'lectures' => $lectures,
               'course' => $course,
               'courses' => $courses,
               'notebooks' => $notebooks,
               'libraries' => $libraries,
               'discussions' => $discussions,
               'lecture_id' => $lecture_id,
          ];

          //     return dd($discussions);         

          return view('pages.lecture', $data);
     }

     public function checkout($id)
     {
          $course = Course::find($id);
          $instructor = Teacher::find($course->instructor_id);
          return view('pages.check-out', compact('course', 'instructor'));
     }
     public function successOrder($id)
     {
          //     $course = Course::find($id);
          //     dd($course);
          return view('pages.check-out', compact('course'));
     }

     public function profile()
     {

          $user = Auth::User();

          $continue_courses = Order::with(['course'])->where('user_id', $user->id)->where('is_paid', 1)->where('is_completed', '!=', 1)->where('is_active', 1)->get();

          $completed_courses = Order::with(['course'])->where('user_id', $user->id)->where('is_paid', 1)->where('is_completed', 1)->where('is_active', 1)->get();

          $wishlists = Wishlist::where('user_id', $user->id)->where('is_active', 1)->orderBy('id', 'DESC')->get();

          $activity_logs = ActivityLog::where('user_id', $user->id)->where('is_active', 1)->orderBy('id', 'DESC')->get();

          $data = [
               'continue_courses' => $continue_courses,
               'completed_courses' => $completed_courses,
               'wishlists' => $wishlists,
               'activity_logs' => $activity_logs,
               'user' => $user,
          ];

          return view('pages.profile', $data);
     }

     public function teacherProfile($id)
     {
          $teacher = Teacher::join('users', 'teachers.user_id', 'users.id')->find($id);
          $courses = Course::where('instructor_id', $id)->get();
          return view('pages.teacher_profile', compact('teacher', 'courses'));
     }

     public function notebooks(Request $request)
     {
          $data = [
               'course_id' => $request->course_id,
               'lecture_id' => $request->lecture_id,
               'is_active' => 1,
               'user_id' => Auth::user()->id,
               'title' => $request->title,
          ];
          $status = Notebook::create($data);

          return $status;
     }

     public function viewNotes($lecture_id)
     {
          $notebooks = Notebook::where('lecture_id', $lecture_id)->where('user_id', Auth::user()->id)->orderBy('order', 'DESC')->get();

          return view('pages.ajax.notebook_item', compact('notebooks'));
     }

     // public function vieDiscussion($lecture_id)
     // {
     //      $discussions = Discussion::leftJoin('users', 'discussions.user_id', 'users.id')
     //      ->where('lecture_id', $lecture_id)
     //      ->select('discussions.*', 'users.name as user_name', 'users.avatar as user_avatar')
     //      ->orderBy('created_at', 'ASC')->get()->groupBy('parent_id');
     //      return view('pages.ajax.discussions_item', compact('discussions'));

     // }
     public function deleteNotebook($id)
     {
          $status = Notebook::find($id)->delete();
          return $status;
     }
}
