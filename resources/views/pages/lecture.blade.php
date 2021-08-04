@extends('layouts.app')


@section('content')

    @if (IsPaidOrder(Auth::User()->id, $course->id) == true)
        <section class="paddingTop-50 paddingBottom-100 bg-light">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 mt-4">
                        <div class="card shadow-v1">

                            <div class="card card-body accordion-item">
                                <div class="shadow-v2">
                                    <select class="chosen-select ec-select my_select_box" tabindex="5">

                                        @foreach ($courses as $row)
                                            <input type="hidden" id="course_id" value="{{ $course->id }}">
                                            <option value="{{ $row->id }}"
                                                {{ $row->id == $course->id ? 'selected' : '' }}>{{ $row->title }}
                                            </option>
                                        @endforeach

                                    </select>

                                </div>




                                <a href="#acc1" class="accordion__title h6 mt-4 mb-0" data-toggle="collapse"
                                    aria-expanded="true">
                                    <i class="ti-home mr-1"></i> Classroom
                                    <span class="accordion__icon float-right small mx-2 mt-1">
                                        <i class="ti-angle-down"></i>
                                        <i class="ti-angle-up"></i>
                                    </span>
                                </a>
                                <div id="acc1" class="collapse show" data-parent="#accordion">


                                    @foreach ($lectures as $row)
                                        <div class="py-2 pl-5">
                                            <input type="hidden" id="lecture_id" value="{{ $row->id }}">
                                            <input type="hidden" id="ordere_id" value="{{ $lecture->order }}">
                                            <a href="{{ route('lecture', [$row->course_id, $row->id]) }}"
                                                class="p-2 h6 mb-0 {{ $lecture->id == $row->id ? 'active' : '' }}">{{ $row->title }}<i
                                                    class="ti-home ml-4"></i></a>
                                        </div>
                                    @endforeach



                                </div>

                                <a href="{{ route('notebook', $course->id) }}"
                                    class="accordion__title h6 mb-0 mt-2 collapsed">
                                    <i class="ti-home mr-1"></i> Notebook

                                </a>

                                <a href="{{ route('library', $course->id) }}"
                                    class="accordion__title h6 mb-0 mt-2 collapsed">
                                    <i class="ti-home mr-1"></i> Library

                                </a>

                                <a href="{{ route('discussion', $course->id) }}"
                                    class="accordion__title h6 mb-0 mt-2 collapsed">
                                    <i class="ti-home mr-1"></i> Discussion

                                </a>

                                <a href="{{ route('grade', $course->id) }}"
                                    class="accordion__title h6 mb-0 mt-2 collapsed">
                                    <i class="ti-home mr-1"></i> Grade

                                </a>

                                <a href="{{ route('course-info', $course->id) }}"
                                    class="accordion__title h6 mb-0 mt-2 collapsed">
                                    <i class="ti-home mr-1"></i> Course Info

                                </a>
                            </div> <!-- END accordion-item-->


                        </div>
                    </div> <!-- END col-md-4 -->
                    <div class="col-lg-8 mt-4">

                        <div class="card padding-20">

                            <div class="ec-video-container my-4">

                                <iframe src="https://player.vimeo.com/video/{{ $lecture->video_url }}" frameborder="0"
                                    allowfullscreen>

                                </iframe>



                            </div>
                            <ul class="nav tabs-portlet" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#Tabs_12-1" role="tab"
                                        aria-selected="true">
                                        <i class="ti-home mr-1"></i>
                                        Notebook
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#Tabs_12-2" role="tab"
                                        aria-selected="false">
                                        <i class="ti-user mr-1"></i>
                                        Library
                                    </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#Tabs_12-4" role="tab"
                                        aria-selected="false">
                                        <i class="ti-settings mr-1"></i>
                                        Discussion
                                    </a>
                                </li>


                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane fade mt-4 show active" id="Tabs_12-1" role="tabpanel">

                                    <div class="notebook-top">
                                        <form id="notebookForm">
                                            <div class="input-group mb-3">
                                                <input type="text" class="form-control border border-success" id="title_note" name="title"
                                                    placeholder="Add New Note.." aria-label="Recipient's username"
                                                    aria-describedby="button-addon2">
                                                <div class="input-group-append">
                                                    <button type="button" class="btn btn-success" onclick="addNote()">Add
                                                        New</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div id="notebook_items" style="margin-left: 10px; float: left; height: 300px; width: 100%; overflow-y: scroll; margin-bottom: 25px;">

                                    </div>


                                </div>
                                <div class="tab-pane fade mt-4" id="Tabs_12-2" role="tabpanel">

                                    <div class="p-4 px-md-5">

                                        @php
                                            $count = 0;
                                        @endphp

                                        @foreach ($libraries as $item)
                                            @php
                                                $count++;
                                            @endphp
                                            <p>
                                                <i class="text-primary ti-headphone mr-3"></i> {{ $count }} .
                                                {{ $item->title }} <a href="/download" target="_blank"
                                                    class="btn btn-danger"> Download </a>

                                            </p>
                                        @endforeach
                                    </div>
                                </div>

                                <div class="tab-pane fade mt-4" id="Tabs_12-4" role="tabpanel">
                                        <div class="card shadow-v5 mt-5 padding-40">
                                            <h4>
                                                Leave a Comment
                                            </h4>
                                            <input type="hidden" name="course_id" id="course_id" class="course_id"
                                                value="{{ $course->id }}">
                                            <input type="hidden" name="lecture_id" id="lecture_id"
                                                value="{{ $lecture_id }}">
                                            <textarea class="form-control mb-4" rows="5" placeholder="Your comment *"
                                                name="text" id="text"></textarea>
                                            <button class="btn btn-primary" onclick="comment(0)">Comment</button>
                                        </div>
                                   
                                    <div class="card shadow-v5 mt-5 padding-40">

                                        @if (count($discussions) > 0)

                                            <ol class="list-unstyled comments-area">
                                                @php
                                                    // echo dd($discussions[0]);
                                                @endphp


                                                {{-- @foreach ($comments as $item)

                                                    <li>

                                                        <div class="media mb-5">
                                                            <img class="iconbox iconbox-lg mr-3"
                                                                src="{{ asset($item->user_avatar) }}" alt="">
                                                            <div class="media-body">
                                                                <a href="#"
                                                                    class="float-right btn btn-outline-primary btn-pill btn-sm">
                                                                    <i class="ti-back-right"></i> REPLY
                                                                </a>
                                                                <h4 class="h5 mb-0">
                                                                    {{ $item->user_name }}
                                                                </h4>
                                                                <p class="text-gray">
                                                                    {{ date('M d, Y', strtotime($item->created_at)) }}
                                                                </p>
                                                                <p>
                                                                    {{ $item->text }}
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </li>

                                                @endforeach --}}
                                                

                                                <div id="discussion_items"  style="margin-left: 10px; float: left; height: 300px; width: 100%; overflow-y: scroll; margin-bottom: 25px;">

                                                </div>
                                                {{-- <li class="text-center mt-5">
                                                    <a href="#" class="btn btn-icon btn-outline-primary">
                                                        <i class="ti-reload mr-2"></i> Load More
                                                    </a>
                                                </li> --}}
                                            </ol>
                                        @endif
                                    </div>
                                </div>


                            </div> <!-- END tab-content-->
                        </div> <!-- END col-12 -->


                    </div> <!-- END col-md-8 -->
                </div>
                <!--END row-->
            </div>
            <!--END container-->
        </section>
    @else
        <h1 class="text-center">You can't Acces This Page.</h1>
    @endif

@endsection
@section('css')
    <style media="screen">
        .card-body.accordion-item .chosen-single {
            color: white !important;
            border-radius: 50px;
            background-color: rgb(111, 218, 68) !important;

        }

        .card-body.accordion-item a.accordion__title {
            padding: 20px;
        }

        .card-body.accordion-item a.accordion__title:hover,
        .card-body.accordion-item a.accordion__title:active,
        .card-body.accordion-item a.accordion__title:focus,
        #acc1 a:hover,
        #acc1 a:active,
        #acc1 a:focus {
            background-color: #F3F6F9;
            border-radius: 2px;
        }

    </style>

@endsection

@section('js')
    <script>
        viewNotes();

        function viewNotes() {
            var lecture_id = $('#lecture_id').val();
            // console.log("id: " + lecture_id);
            $.ajax({
                type: "GET",
                url: "{{ url('note') }}/" + lecture_id,

                success: function(response) {
                    // console.log("response: " + response);

                    $('#notebook_items').html(response);
                }
            });
        }

        function addNote() {
            var title = $('#title_note').val();
            var course_id = $('#course_id').val();
            var lecture_id = $('#lecture_id').val();
            $.ajax({
                type: "POST",
                url: "{{ route('note') }}",
                data: {
                    _token: '{{ csrf_token() }}',
                    title: title,
                    course_id: course_id,
                    lecture_id: lecture_id,
                },
                success: function(data) {
                    viewNotes();
                    $('#title_note').val('');
                }
            });
        }

        function deleteNotebook(id) {
            // var token = $(this).data("token");
            $.ajax({
                url: "{{ url('note') }}/" + id,
                type: 'DELETE',
                dataType: "JSON",
                data: {
                    _token: '{{ csrf_token() }}',
                    id: id,
                },
                success: function() {
                    // console.log("it Work");
                    viewNotes();
                }
            });

            // console.log("It failed");
        }


        viewComments();
        // $("#comment").click(function(e) {
            function comment(id){
            var parent_id = id; 
            var text = $("#text").val();
            var lecture_id = $("#lecture_id").val();
            var course_id = $(".course_id").val();
            $.ajax({
                type: "POST",
                url: "{{ route('lecture_comment') }}",
                data: {
                    _token: '{{ csrf_token() }}',
                    text: text,
                    parent_id: parent_id,
                    lecture_id: lecture_id,
                    course_id: course_id,
                },
                success: function(data) {
                    viewComments();
                    $('#text').val('');
                }
            });
        }

        function viewComments() {
            var lecture_id = $("#lecture_id").val();
            $.ajax({
                type: "GET",
                url: "{{ url('get_comment') }}/" + lecture_id,
                success: function(response) {
                    // console.log("response: " + response);

                    $('#discussion_items').html(response);
                }
            });
        }
    </script>
    <script>
        function reply(id){
            $( "#reply_form"+id ).append(`
                <div class="d-flex flex-row align-items-start">
                    <textarea class="form-control ml-1 shadow-none textarea" name="text" id="text"></textarea>
                </div>
                <div class="mt-2 text-right">
                    <button class="btn btn-primary btn-sm shadow-none" type="button" onclick="comment(`+id+`)">
                        Post comment
                    </button>
                    <button class="btn btn-outline-primary btn-sm ml-1 shadow-none" onClick="cancel()" type="button">
                        Cancel
                    </button>
                </div>
            `);
        }
        function deleteComment(id) {
            // var token = $(this).data("token");
            $.ajax({
                url: "{{ url('deleteComment') }}/" + id,
                type: 'DELETE',
                dataType: "JSON",
                data: {
                    _token: '{{ csrf_token() }}',
                    id: id,
                },
                success: function() {
                    // console.log("it Work");
                    viewComments();
                }
            });

            // console.log("It failed");
        }
        
    </script>
    <script>
        function cancel(){
            $(".display_none").addClass('d-none');
        }
    </script>
@endsection
