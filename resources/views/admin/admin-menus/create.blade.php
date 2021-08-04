{{-- Extends layout --}}
@extends('admin._layouts._default')
@section('styles')
    <style media="screen">
        .form-text.text-muted {
            display: none;
        }

        #msform {
            margin-top: 30px;
            position: relative;
        }

        #msform fieldset:not(:first-of-type) {
            display: none;
        }

        fieldset {
            text-align: center;
        }

        fieldset .card-body {
            text-align: left;
        }

        /*progressbar*/
        #progressbar {
            margin-bottom: 30px;
            overflow: hidden;
            text-align: center;
            /*CSS counters to number the steps*/
            counter-reset: step;
        }

        #progressbar li {
            list-style-type: none;
            color: #999999;
            text-transform: uppercase;
            font-size: 12px;
            width: 33.33%;
            float: left;
            position: relative;
            letter-spacing: 1px;
        }

        #progressbar li:before {
            content: counter(step);
            counter-increment: step;
            width: 32px;
            height: 32px;
            line-height: 32px;
            display: block;
            font-size: 12px;
            color: #333;
            background: #999999;
            border-radius: 50%;
            margin: 0 auto 10px auto;
        }

        /*progressbar connectors*/
        #progressbar li:after {
            content: '';
            width: 100%;
            height: 2px;
            background: #999999;
            position: absolute;
            left: -50%;
            top: 16px;
            z-index: -1;
            /*put it behind the numbers*/
        }

        #progressbar li:first-child:after {
            /*connector not needed before the first step*/
            content: none;
        }

        /*marking active/completed steps green*/
        /*The number of the step and the connector before it = green*/
        #progressbar li.active:before,
        #progressbar li.active:after {
            background: #ee0979;
            color: white;
        }

        .next,
        .previous,
        .submit {
            margin: 40px;
        }

    </style>
    @parent
@endsection
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
                        </div>
                    </div>
                </div>
            </div>
            <div class="">
                {{-- {{dd(route($info->form_route))}} --}}
                <form class="form" id="msform" action="{{ route($info->form_route) }}" method="POST"
                    enctype="multipart/form-data">
                    @csrf

                    <ul id="progressbar">
                        <li class="active">1. Complaints Details</li>
                        <li>2. Contact Information</li>
                        <li>3. Confirmation</li>
                    </ul>

                    <div class="card">

                        <fieldset>

                            <div class="card-body">
                                <div class="form-group row">

                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label>Model Path</label>
                                            <div class="input-group w-75">
                                                <div class="input-group-prepend">
                                                    <button class="btn btn-secondary" type="button">App\</button>
                                                </div>
                                                <input type="text" class="form-control" placeholder="Model Path"
                                                    name="model" id="model" onkeyup="AutoFillInputs(this.value)">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label>Menu Icon Class</label>
                                            <input type="text" class="form-control w-75" placeholder="Icon Class"
                                                name="icon">
                                        </div>
                                    </div>

                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label>Menu NewTab</label>
                                            <span class="switch switch-outline switch-icon switch-success">
                                                <label>
                                                    <input type="hidden" value="0" name="is_newtab">
                                                    <input type="checkbox" value="1" name="is_newtab">
                                                    <span></span>
                                                </label>
                                            </span>
                                        </div>
                                    </div>

                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label>Menu Bullet</label>
                                            <select class="form-control w-75" name="bullet">
                                                <option value="dot">Dot</option>
                                            </select>
                                        </div>
                                    </div>






                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label>Menu Title</label>
                                            <input type="text" class="form-control w-75" placeholder="Title" id="title"
                                                name="title">
                                        </div>
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label>Crud Resource Path</label>
                                            <div class="input-group w-75">
                                                <div class="input-group-prepend">
                                                    <button class="btn btn-secondary" type="button">admin\</button>
                                                </div>
                                                <input type="text" class="form-control" placeholder="Resource Path"
                                                    id="resource_path" name="resource_path">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label>Crud Key Word</label>
                                            <input type="text" class="form-control w-75" placeholder="Crud Key Word"
                                                id="crud_key_word" name="crud_key_word">
                                        </div>
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label>Menu Permission</label>
                                            <input type="text" class="form-control w-75" placeholder="Permission"
                                                id="permission" name="permission">
                                        </div>
                                    </div>

                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label>Crud Controller</label>
                                            <div class="input-group w-75">
                                                <div class="input-group-prepend">
                                                    <button class="btn btn-secondary" type="button">Admin\</button>
                                                </div>
                                                <input type="text" class="form-control" placeholder="Controller"
                                                    id="controller" name="controller">
                                            </div>
                                        </div>
                                    </div>


                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label>Crud Key Word Plural</label>
                                            <input type="text" class="form-control w-75" placeholder="Crud Key Word Plural"
                                                id="crud_key_word_plural" name="crud_key_word_plural">
                                        </div>
                                    </div>

                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label>Crud Data Table</label>
                                            <input type="text" class="form-control w-75" placeholder="Data Table"
                                                id="data_table" name="data_table">
                                        </div>
                                    </div>


                                </div>
                            </div>

                            <input type="button" name="next" class="next btn btn-success mr-2" value="Next" />
                        </fieldset>
                        <fieldset>

                            <div class="card-body">
                                <div class="form-group row justify-content-center">

                                    <label class="col-md-2 col-form-label text-right" for="dynamic_migration">Dynamic
                                        Migration</label>
                                    <div class="col-md-3">

                                        <span class="switch switch-outline switch-icon switch-success">
                                            <label>
                                                <input type="hidden" value="0" name="dynamic_migration">
                                                <input type="checkbox" onchange="hideMigration()" value="1"
                                                    name="dynamic_migration" checked>
                                                <span></span>
                                            </label>
                                        </span>
                                    </div>
                                </div>

                                <table
                                    class=" table table-head-custom table-head-bg table-vertical-center table-borderless">
                                    <thead>
                                        <tr class="bg-gray-100 text-left">
                                            <th>Column</th>
                                            <th class="migration-hide">Type</th>
                                            <th class="migration-hide">Length</th>
                                            <th class="migration-hide">Is Primary</th>
                                            <th class="migration-hide">Is Uqiue</th>
                                            <th class="migration-hide">Is Null</th>
                                            <th>Input Template</th>
                                            <th>Column Template</th>
                                            <th>Addable</th>
                                            <th>Updatable</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody id="data_coloum_items">

                                    </tbody>
                                </table>

                                <div class="text-center ">
                                    <button type="button" class="btn btn-primary" onclick="AddColumn()">
                                        <i class="flaticon2-add-square"></i> Add Data Column
                                    </button>
                                </div>
                            </div>

                            <input type="button" name="previous" class="previous btn btn-warning mr-2" value="Previous" />
                            <input type="button" name="next" class="next btn btn-success mr-2" value="Next" />
                        </fieldset>
                        <fieldset>

                            <input type="button" name="previous" class="previous btn btn-warning mr-2" value="Previous" />
                            {{-- <button type="submit" class="submit btn btn-primary mr-2">Submit</button> --}}
                            <input type="submit" name="submit" class="submit btn btn-primary mr-2" value="Submit" />
                        </fieldset>
                    </div>
                    <div id="params-modal"></div>
                </form>
            </div>
        </div>
    </div>

    <div class="d-none" id="table_columns">
        <option selected>--Select--</option>
        <optgroup label="Numeric">
            <option value="integer">Int</option>
            <option value="tinyInteger">Tiny Int</option>
            <option value="boolean">Bool</option>
            <option value="float">Float</option>
            <option value="double">Double</option>
        </optgroup>
        <optgroup label="String">
            <option value="string">String</option>
            <option value="text">Text</option>
            <option value="longText">LongText</option>
        </optgroup>
        <optgroup label="Time">
            <option value="date">Date</option>
            <option value="time">Time</option>
            <option value="datetime">Datetime</option>
            <option value="timestamp">Timestamp</option>
        </optgroup>
        <option value="json">Json</option>
    </div>
    <div class="d-none" id="input_templates">
        <option selected value="none">--Select--</option>
        @foreach (\App\BaseInput::all() as $index => $item)
            <option value="{{ $item->id }}">{{ $index + 1 }} . {{ $item->title }}</option>
        @endforeach
    </div>

    <div class="d-none" id="column_templates">
        <option selected value="none">--Select--</option>
        @foreach (\App\BaseColumn::all() as $index => $item)
            <option value="{{ $item->id }}">{{ $index + 1 }} . {{ $item->title }}</option>
        @endforeach
    </div>


@endsection

@section('scripts')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pluralize/8.0.0/pluralize.min.js"></script>
    <script type="text/javascript">
        function AutoFillInputs(model) {
            var capital_model = model[0].toUpperCase() + model.substring(1);
            var plural_model = pluralize.plural(model);
            $('#model').val(capital_model);
            $('#title').val(capital_model);
            $('#crud_key_word').val(capital_model);
            $('#crud_key_word_plural').val(plural_model);
            $('#resource_path').val(plural_model.toLowerCase());
            $('#data_table').val(plural_model.toLowerCase());
            $('#controller').val(capital_model + "Controller");
            $('#permission').val(model.toLowerCase());
        }

        var count = 0;
        AddColumn();

        function InputDesignData() {
            console.log("Design Data..");
        }

        function AddColumn() {
            $('#data_coloum_items').append(newColumn(count))
            count++;
            if (count < 2) {
                $('.column-row .btn-icon-danger').hide();
            } else {
                $('.column-row .btn-icon-danger').show();
            }
        }

        function DeleteColumn(e) {
            $(e.target).closest('.column-row').remove();
        }

        function hideMigration() {
            $(".migration-hide").toggleClass('d-none');
        }


        function newColumn(count) {
            $("#params-modal").append(`
                <div class="modal fade" id="inputParams_${count}" tabindex="-1" role="dialog" aria-labelledby="inputParams_${count}" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Input Design Params</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <i aria-hidden="true" class="ki ki-close"></i>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group mb-1">
                                    <label for="inputParamsInput_${count}">Params</label>
                                    <textarea class="form-control" rows="6" name="input_params[]" id="inputParamsInput_${count}"></textarea>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-light-primary font-weight-bold" data-dismiss="modal">Save</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="columnParams_${count}" tabindex="-1" role="dialog" aria-labelledby="columnParams_${count}" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                            <h5 class="modal-title">column Design Params</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <i aria-hidden="true" class="ki ki-close"></i>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group mb-1">
                                    <label for="columnParamsInput_${count}">Params</label>
                                    <textarea class="form-control" rows="6" name="column_params[]" id="columnParamsInput_${count}"></textarea>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-light-primary font-weight-bold" data-dismiss="modal">Save</button>
                            </div>
                        </div>
                    </div>
                </div>
            `);
            return `<tr class="column-row">
                        <td><input type="text" class="form-control" name="column[]" style="max-width:160px"></td>
                        <td class="migration-hide">
                            <select class="form-control" name="type[]">
                                ` + $('#table_columns').html() + `
                            </select>

                        <td class="migration-hide"><input type="text" class="form-control" name="length[]" style="max-width:100px"></td>
                        <td class="migration-hide">
                            <span class="switch switch-outline switch-icon switch-success">
                                <label>
                                    <input type="hidden" value="0" name="primary[]">
                                    <input type="checkbox" value="1" name="primary[]">
                                    <span></span>
                                </label>
                            </span>
                        </td>
                        <td class="migration-hide">
                            <span class="switch switch-outline switch-icon switch-success">
                                <label>
                                    <input type="hidden" value="0" name="unique[]">
                                    <input type="checkbox" value="1" name="unique[]">
                                    <span></span>
                                </label>
                            </span>
                        </td>
                        <td class="migration-hide">
                            <span class="switch switch-outline switch-icon switch-success">
                                <label>
                                    <input type="hidden" value="0" name="null[]">
                                    <input type="checkbox" value="1" name="null[]">
                                    <span></span>
                                </label>
                            </span>
                        </td>
                        <td>
                            <select class="form-control w-60" name="input_template[]" onchange="showInputParamsModal(this.value, ${count})">
                            ` + $('#input_templates').html() + `
                            </select>

                        </td>
                        <td>
                            <select class="form-control w-60" name="column_template[]" onchange="showColumnParamsModal(this.value, ${count})">
                            ` + $('#column_templates').html() + `
                            </select>

                        </td>
                        <td>
                            <span class="switch switch-outline switch-icon switch-success">
                                <label>
                                    <input type="hidden" value="0" name="is_addable[]">
                                    <input type="checkbox" value="1" name="is_addable[]" checked>
                                    <span></span>
                                </label>
                            </span>
                        </td>
                        <td>
                            <span class="switch switch-outline switch-icon switch-success">
                                <label>
                                    <input type="hidden" value="0" name="is_updatable[]">
                                    <input type="checkbox" value="1" name="is_updatable[]" checked>
                                    <span></span>
                                </label>
                            </span>
                        </td>
                        <td>
                            <a onclick="InputDesignData()" class="ml-5 btn btn-sm btn-icon btn-bg-light btn-icon-success btn-hover-success">
                                <i class="flaticon2-analytics-2"></i>
                            </a>
                            <a onclick="DeleteColumn(event)" class="ml-5 btn btn-sm btn-icon btn-bg-light btn-icon-danger btn-hover-danger">
                                <i class="flaticon2-trash"></i>
                            </a>
                        </td>
                    </tr>`;
        }

        function showInputParamsModal(value, count) {
            $.ajax({
                url: "{{ url('admin/base-input') }}/" + value,
                type: "GET",
                success: function(response) {
                    $("#inputParamsInput_" + count).val(response);
                },
                error: function(errors) {
                    console.log(errors);
                }
            });

            $("#inputParams_" + count).modal('show');
        }

        function showColumnParamsModal(value, count) {
            $.ajax({
                url: "{{ url('admin/base-column') }}/" + value,
                type: "GET",
                success: function(response) {
                    $("#columnParamsInput_" + count).val(response);
                },
                error: function(errors) {
                    console.log(errors);
                }
            });
            $("#columnParams_" + count).modal('show');
        }

        $(document).ready(function() {

            var current_fs, next_fs, previous_fs; //fieldsets
            var opacity;
            var current = 1;
            var steps = $("fieldset").length;


            $(".next").click(function() {

                current_fs = $(this).parent();
                next_fs = $(this).parent().next();

                //Add Class Active
                $("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");

                //show the next fieldset
                next_fs.show();
                //hide the current fieldset with style
                current_fs.animate({
                    opacity: 0
                }, {
                    step: function(now) {
                        // for making fielset appear animation
                        opacity = 1 - now;

                        current_fs.css({
                            'display': 'none',
                            'position': 'relative'
                        });
                        next_fs.css({
                            'opacity': opacity
                        });
                    },
                    duration: 0
                });
            });

            $(".previous").click(function() {

                current_fs = $(this).parent();
                previous_fs = $(this).parent().prev();

                //Remove class active
                $("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");

                //show the previous fieldset
                previous_fs.show();

                //hide the current fieldset with style
                current_fs.animate({
                    opacity: 0
                }, {
                    step: function(now) {
                        // for making fielset appear animation
                        opacity = 1 - now;

                        current_fs.css({
                            'display': 'none',
                            'position': 'relative'
                        });
                        previous_fs.css({
                            'opacity': opacity
                        });
                    },
                    duration: 0
                });
            });


            // $(".submit").click(function () {
            //     return false;
            // })

        });
    </script>
    @parent
@endsection
