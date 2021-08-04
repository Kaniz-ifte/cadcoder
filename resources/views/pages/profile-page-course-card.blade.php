
 <div class="card  text-gray height-100p shadow-v2">
     <img class="card-img-top" src="assets/img/384x320/5.jpg" alt="">
     <div class="card-body">
          @if ($row->is_completed==1)
          @elseif ($row->deadline<date('Y-m-d'))
              <span class="badge badge-danger mr-3 mb-3">Overdue</span>
         @endif
         <a href="{{route('classroom',$row->course_id)}}" class="h4">
           {{$row->course->title}}
         </a>
         <ul class="list-unstyled line-height-lg mt-4">
              @if ($row->course->instructor!='')
             <li><i class="ti-location-pin text-primary mr-2"></i>{{$row->course->instructor->name}}
             </li>
             @endif

             @if ($row->is_completed!=1 && $row->deadline<date('Y-m-d'))
             <li class="text-danger">
                  <i class="ti-time text-danger mr-2"></i>
             @else
                  <li class="text-primary">
                       <i class="ti-time text-primary mr-2"></i>
             @endif

                  25-30 Dec, 2018
             </li>
         </ul>

         @if ($row->is_completed==1)
              <a href="javascript:void(0)" class="btn btn-primary btn-sm left-20 text-center">View Certificate</a>
         @elseif($row->deadline<date('Y-m-d'))
              <a href="javascript:void(0)" class="btn btn-warning btn-sm left-20 text-center" onclick="ResetDeadline({{$row->order_id}})">Reset Deadline</a>
         @else
              <a href="{{route('classroom',$row->course_id)}}" class="btn btn-primary btn-sm left-20 text-center">Go to Course</a>
         @endif
     </div>
 </div>
