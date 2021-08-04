<?php


namespace App\Http\Controllers\Admin;


use DB;
use App\User;
use \stdClass;
use Illuminate\Http\Request;
use App\Classes\Tork\FileManager;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;

class ProfileController extends Controller
{
     /**
      * Display a listing of the resource.
      *
      * @return \Illuminate\Http\Response
      */
     function __construct()
     {

          $this->key_word = 'Profile';
          $this->key_word_plural = 'Profiles';
     }

     public function index()
     {
          $page_title = $this->key_word;
          $info = new stdClass();
          return view('admin.profile.index', compact('page_title', 'info'));
     }
}
