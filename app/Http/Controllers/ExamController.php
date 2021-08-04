<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use DB;
use Auth;
use App\User;
use App\StudentMark;
use Mail;
use Illuminate\Support\Facades\Session;

class ExamController extends Controller
{

     public function __construct() {

          $this->pageIcon = 'icon-clock';
          $this->pageTitle ='Title';

     }


     public function View(){

          return view('exam');

     }

     public function ExamsByCourse($course_id){

          $this->exams=ExamsByCourse($course_id);
          $this->course_id=$course_id;
          return view('exams-by-course')->with('data',$this);

     }

     public function StartExam($exam_id){

          $this->questions=QuestionsByExam($exam_id);
          $this->exam=ExamsById($exam_id);

          if ($this->exam->is_active==1) {

               return view('questions')->with('data',$this);
          }else{
               return back();
          }

     }


     public function ExamSubmit(Request $req){

          $this->exam_id=$req->exam_id;
          $this->exam=ExamsById($req->exam_id);
          $answers=AnswersByExam($req->exam_id);

          $correct_ans=0;
          $not_ans=0;
          $wrong_ans=0;

          $answers_data = array();




          foreach ($answers as $answer) {




               $my_answer=$req->input($answer->id);
               if ($my_answer==''){
                    $not_ans++;
               }elseif($my_answer==$answer->correct_ans){
                    $correct_ans++;
               }else{
                    $wrong_ans++;
               }

               $row = array();
     		$row['question'] = $answer->question;
     		$row['question_id'] = $answer->id;
     		$row['correct_ans'] = $answer->correct_ans;
     		$row['my_answer'] = $my_answer;



               array_push($answers_data, $row);

          }

          $this->correct_ans=$correct_ans;
          $this->wrong_ans=$wrong_ans;
          $this->not_ans=$not_ans;
          $this->answers_data=$answers_data;

          $mark= StudentMark::updateOrCreate([
               'exam_id' => $req->exam_id,
               'user_id' => Auth::User()->id]);


               $difference=strtotime( date("Y-m-d H:i:s"))-strtotime($mark->created_at);



               if ($difference<$this->exam->duration) {


                              if($mark->total_correct>0 || $mark->total_wrong>0 || $mark->not_answer>0){

                              }else{

                                   $mark->total_correct=$correct_ans;
                                   $mark->total_wrong=$wrong_ans;
                                   $mark->not_answer=$not_ans;
                                   $mark->total_question=$correct_ans+$wrong_ans+$not_ans;
                                   $mark->total_gain_mark=($correct_ans*$this->exam->marks_per_question)-($wrong_ans*$this->exam->negative_mark);
                                   $mark->save();
                              }


               }




          return view('questions_with_answers')->with('data',$this);

          // return 'Correct Ans: '.$correct_ans.' ; Wrong Ans: '.$wrong_ans.' ; Not Ans: '.$not_ans.' ; ';



     }


}
