{{-- Extends layout --}}
@extends('admin._layouts._default')
{{-- Content --}}
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card card-custom">
                <div class="card-header">
                    <h3 class="card-title">{{ $info->title }}</h3>
                    <div class="card-toolbar">
                        <div class="example-tools justify-content-center">

                            <a href="{{ route($info->first_button_route) }}"
                                class="btn btn-light-warning font-weight-bolder mr-2">
                                <i class="flaticon2-list"></i>
                                {{ $info->first_button_title }}
                            </a>
                            <a href="https://www.appdevtools.com/json-php-array-converter"
                                class="btn btn-light-warning font-weight-bolder mr-2">
                                <i class="flaticon2-list"></i>
                                Array to Json
                            </a>

                        </div>
                    </div>
                </div>
                fsdfsa
                <div class="card-body">
                    {{-- {{dd(route($info->form_route))}} --}}
                    <form class="form" id="msform" action="{{ route($info->form_route) }}" method="POST"
                        enctype="multipart/form-data">
                        @csrf

                        <div class="form-group row">
                            <label class="col-md-2 col-form-label text-right">Title</label>
                            <div class="col-md-3">
                                <input type="text" class="form-control" placeholder="Enter Title" name="title">
                            </div>
                            <label class="col-md-2 col-form-label text-right">Design ID</label>
                            <div class="col-md-3">
                                <input type="text" class="form-control" placeholder="Enter Design ID" name="design_id">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-2 col-form-label text-right">Array Params</label>
                            <div class="col-md-3">
                                <textarea rows="6" class="form-control" onkeyup="convertJson(this.value)"></textarea>
                            </div>
                            <label class="col-md-2 col-form-label text-right">Json Params</label>
                            <div class="col-md-3">
                                <textarea rows="6" class="form-control" id="params" name="params"></textarea>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection
@section('styles')

    @parent
@endsection
@section('scripts')
    <script>
        function convertJson(val) {

            console.log(JSON.parse(val));
        }
    </script>
    @parent
@endsection
