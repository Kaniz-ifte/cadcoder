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
                                class="btn btn-light-success font-weight-bolder mr-2">
                                <i class="flaticon2-add"></i>
                                {{ $info->first_button_title }}
                            </a>
                            <a href="{{ route($info->second_button_route) }}"
                                class="btn btn-light-warning font-weight-bolder mr-2">
                                <i class="flaticon2-list"></i>
                                {{ $info->second_button_title }}
                            </a>
                        </div>
                    </div>
                </div>
                <form class="form" action="{{ route($info->form_route, $id) }}" method="post"
                    enctype="multipart/form-data">
                    @method('PUT')
                    @csrf
                    <div class="card-body">
                        <div class="form-group row">

                            <div class="col-lg-3">
                                <div class="form-group">
                                    <label>Model Path</label>
                                    <div class="input-group w-75">
                                        <div class="input-group-prepend">
                                            <button class="btn btn-secondary" type="button">App\</button>
                                        </div>
                                        <input type="text" class="form-control" placeholder="Model Path" name="model"
                                            id="model" onkeyup="AutoFillInputs(this.value)" value="{{ $data->model }}">
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3">
                                <div class="form-group">
                                    <label>Menu Icon Class</label>
                                    <input type="text" class="form-control w-75" placeholder="Icon Class" name="icon"
                                        value="{{ $data->icon }}">
                                </div>
                            </div>

                            <div class="col-lg-3">
                                <div class="form-group">
                                    <label>Menu NewTab</label>
                                    <span class="switch switch-outline switch-icon switch-success">
                                        <label>
                                            <input type="hidden" value="0" name="is_newtab">
                                            <input type="checkbox" value="1" {{ $data->is_newtab == 1 ? 'checked' : '' }}
                                                name="is_newtab">
                                            <span></span>
                                        </label>
                                    </span>
                                </div>
                            </div>

                            <div class="col-lg-3">
                                <div class="form-group">
                                    <label>Menu Bullet</label>
                                    <select class="form-control w-75" name="bullet">
                                        <option value="dot" {{ $data->bullet == 'dot' ? 'selected' : '' }}>Dot</option>
                                    </select>
                                </div>
                            </div>






                            <div class="col-lg-3">
                                <div class="form-group">
                                    <label>Menu Title</label>
                                    <input type="text" class="form-control w-75" placeholder="Title" id="title" name="title"
                                        value="{{ $data->title }}">
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
                                            id="resource_path" name="resource_path" value="{{ $data->resource_path }}">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="form-group">
                                    <label>Crud Key Word</label>
                                    <input type="text" class="form-control w-75" placeholder="Crud Key Word"
                                        id="crud_key_word" name="crud_key_word" value="{{ $data->crud_key_word }}">
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="form-group">
                                    <label>Menu Permission</label>
                                    <input type="text" class="form-control w-75" placeholder="Permission" id="permission"
                                        name="permission" value="{{ $data->permission }}">
                                </div>
                            </div>

                            <div class="col-lg-3">
                                <div class="form-group">
                                    <label>Crud Controller</label>
                                    <div class="input-group w-75">
                                        <div class="input-group-prepend">
                                            <button class="btn btn-secondary" type="button">Admin\</button>
                                        </div>
                                        <input type="text" class="form-control" placeholder="Controller" id="controller"
                                            name="controller" value="{{ $data->controller }}">
                                    </div>
                                </div>
                            </div>


                            <div class="col-lg-3">
                                <div class="form-group">
                                    <label>Crud Key Word Plural</label>
                                    <input type="text" class="form-control w-75" placeholder="Crud Key Word Plural"
                                        id="crud_key_word_plural" name="crud_key_word_plural"
                                        value="{{ $data->crud_key_word_plural }}">
                                </div>
                            </div>

                            <div class="col-lg-3">
                                <div class="form-group">
                                    <label>Crud Data Table</label>
                                    <input type="text" class="form-control w-75" placeholder="Data Table" id="data_table"
                                        name="data_table" value="{{ $data->data_table }}">
                                </div>
                            </div>


                        </div>
                    </div>
                    <div class="card card-custom">
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

                            <table class=" table table-head-custom table-head-bg table-vertical-center table-borderless">
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
                        <div class="card-footer">
                            <div class="row">
                                <div class="col-lg-2"></div>
                                <div class="col-lg-10">
                                    <button type="submit" class="btn btn-success mr-2">Submit</button>
                                    <button type="reset" class="btn btn-secondary">Reset</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
@section('styles')
    <style media="screen">
        .form-text.text-muted {
            display: none;
        }

    </style>
    @parent
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
            console.log("DEsign Data..");
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


        function newColumn(count) {

            return `<tr class="column-row">
             <td><input type="text" class="form-control" name="column[]"></td>
             <td><input type="text" class="form-control" name="type[]"></td>
             <td><input type="text" class="form-control" name="length[]"></td>
             <td>
                <span class="switch switch-outline switch-icon switch-success">
                     <label>
                        <input type="hidden" value="0" name="primary[]">
                        <input type="checkbox" value="1" name="primary[]">
                        <span></span>
                     </label>
                </span>
             </td>
             <td>
                <span class="switch switch-outline switch-icon switch-success">
                     <label>
                        <input type="hidden" value="0" name="unique[]">
                        <input type="checkbox" value="1" name="unique[]">
                        <span></span>
                     </label>
                </span>
             </td>
             <td>
                <span class="switch switch-outline switch-icon switch-success">
                     <label>
                        <input type="hidden" value="0" name="null[]">
                        <input type="checkbox" value="1" name="null[]">
                        <span></span>
                     </label>
                </span>
             </td>
             <td>

                <div class="input-group">
                     <select class="form-control w-60" name="input_design[]">
                        <option value="0">Huge Widthen Value Has This</option>
                     </select>
                     <a onclick="InputDesignData()" class="ml-5 btn btn-sm btn-icon btn-bg-light btn-icon-success btn-hover-success">
                         <i class="flaticon2-analytics-2"></i>
                     </a>
                     <a onclick="DeleteColumn(event)" class="ml-5 btn btn-sm btn-icon btn-bg-light btn-icon-danger btn-hover-danger">
                        <i class="flaticon2-trash"></i>
                     </a>
                </div>

             </td>
         </tr> `;
        }
    </script>
    @parent
@endsection
