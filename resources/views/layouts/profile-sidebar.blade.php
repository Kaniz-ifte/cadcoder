



<div class="profile-sidebar">
    <!-- SIDEBAR USERPIC -->
    <div class="profile-userpic desktop-view">
        <div class="profile-pic" style="background-image: url(@if(Auth::User()->avatar==''){{asset('storage/profile/profile.png')}}@else{{asset(Auth::User()->avatar)}}@endif);">
        </div>
    </div>
    <!-- END SIDEBAR USERPIC -->
    <!-- SIDEBAR USER TITLE -->
    <div class="profile-usertitle desktop-view">
        @if(Auth::User())
        <div class="profile-usertitle-name">
            {{Auth::User()->name}}
        </div>

        <div class="profile-usertitle-job">
            {{Auth::User()->phone}}
        </div>

        <div class="profile-usertitle-job">
          <button type="button" class="btn btn-info btn-block">  User Id: {{Auth::User()->id}} </button>
        </div>

        @endif


    </div>
    <!-- END SIDEBAR USER TITLE -->
    <!-- SIDEBAR BUTTONS -->
    <!-- <div class="profile-userbuttons">
                  <button type="button" class="btn btn-success btn-sm">Follow</button>
                  <button type="button" class="btn btn-danger btn-sm">Message</button>
             </div> -->
    <!-- END SIDEBAR BUTTONS -->
    <!-- SIDEBAR MENU -->
    <br>
    <br>



    @if(Auth::User())

    @if(Auth::User()->phone=='')



        @else




        @foreach (MyCourses() as $course)

        <ul class="tree1">


            <li class="alert alert-success courses">

               {{$course->title}}

               <ul>
                    <ul>

                        @foreach (SubjectsInVideoCourse($course->id) as $subject)



                        <li class="alert subjects">


                            {{CleanTitle($subject->title)}}

                            <ul>
                                @foreach (ChaptersInVideoSubject($subject->id) as $chapter)

                                <li class="alert chapters">


                                    <a href="/my-course/{{$course->id}}/{{$subject->id}}/{{$chapter->id}}">
                                        {{$chapter->title}}
                                    </a>
                                </li>

                                @endforeach

                            </ul>
                        </li>

                        @endforeach


                    </ul>

               </ul>
            </li>


        </ul>

        @endforeach
        @endif
        @endif

        <!-- END MENU -->
</div>
