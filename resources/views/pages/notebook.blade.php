@extends('layouts.app')


@section('content')

@if (IsPaidOrder(Auth::User()->id,$course->id)==true)

<section class="paddingTop-50 paddingBottom-100 bg-light">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 mt-4">
                <div class="card shadow-v1">

                    <div class="card card-body accordion-item">
                        <div class="shadow-v2">
                            <select class="chosen-select ec-select my_select_box" tabindex="5">
                                @foreach ($courses as $row)

                                <option value="{{$row->id}}" {{$row->id==$course->id? "selected" : ""}}>{{$row->title}}
                                </option>
                                @endforeach
                            </select>

                        </div>




                        <a href="#acc1" class="accordion__title h6 mt-4 mb-0 collapsed" data-toggle="collapse"
                            aria-expanded="true">
                            <i class="ti-home mr-1"></i> Classroom
                            <span class="accordion__icon float-right small mx-2 mt-1">
                                <i class="ti-angle-down"></i>
                                <i class="ti-angle-up"></i>
                            </span>
                        </a>
                        <div id="acc1" class="collapse" data-parent="#accordion">

                            @foreach ($lectures as $row)




                            <div class="py-2 pl-5">
                                <a href="{{route('lecture',[$row->course_id,$row->id])}}"
                                    class="p-2 h6 mb-0">{{$row->title}}<i class="ti-home ml-4"></i></a>
                            </div>

                            @endforeach





                        </div>

                        <a href="{{route('notebook',$course->id)}}" class="accordion__title h6 mb-0 mt-2 collapsed">
                            <i class="ti-home mr-1"></i> Notebook

                        </a>

                        <a href="{{route('library',$course->id)}}" class="accordion__title h6 mb-0 mt-2 collapsed">
                            <i class="ti-home mr-1"></i> Library

                        </a>

                        <a href="{{route('discussion',$course->id)}}" class="accordion__title h6 mb-0 mt-2 collapsed">
                            <i class="ti-home mr-1"></i> Discussion

                        </a>

                        <a href="{{route('grade',$course->id)}}" class="accordion__title h6 mb-0 mt-2 collapsed">
                            <i class="ti-home mr-1"></i> Grade

                        </a>

                        <a href="{{route('course-info',$course->id)}}" class="accordion__title h6 mb-0 mt-2 collapsed">
                            <i class="ti-home mr-1"></i> Course Info

                        </a>

                    </div> <!-- END accordion-item-->


                </div>
            </div> <!-- END col-md-4 -->
            <div class="col-lg-8 mt-4">

                <div class="card padding-20">

                    <div id="accordion-{{$row->id}}" class="accordion-style-1">

                        @foreach ($lectures as $row)

                        @if (isset($notebooks[$row->id]) && count($notebooks[$row->id])>0)

                        <div class="accordion-item rounded bg-white shadow-v3 mb-3">
                            <a href="#acc-{{$row->id}}" class="accordion__title h6 p-4 px-md-5 rounded"
                                data-toggle="collapse" aria-expanded="true">
                                <span class="accordion__icon mr-3">
                                    <i class="ti-plus"></i>
                                    <i class="ti-minus"></i>
                                </span>
                                {{$row->title}}
                            </a>
                            <div id="acc-{{$row->id}}" class="collapse show" data-parent="#accordion-{{$row->id}}">
                                <div class="p-4 px-md-5">

                                    @php
                                    $count=0;
                                    @endphp

                                    @foreach ($notebooks[$row->id] as $item)

                                    @php
                                    $count++;
                                    @endphp

                                    <div class="alert border border-success text-success bg-success-0_1 px-4 py-3 alert-dismissible fade show"
                                        role="alert">
                                        <div class="media align-items-center">
                                            <i class="mr-2 ti-check font-size-20"></i>
                                            <div class="media-body">
                                                <strong> Note {{$count}}!</strong> {{$item->title}}
                                            </div>
                                        </div>
                                        <button type="button" class="close font-size-14 absolute-center-y"
                                            data-dismiss="alert" aria-label="Close">
                                            <i class="ti-close"></i>
                                        </button>
                                    </div>

                                    @endforeach


                                </div>
                            </div>
                        </div> <!-- END accordion-item-->
                        @endif

                        @endforeach

                    </div> <!-- END accordion-1-->
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