{{-- Extends layout --}}
@extends('admin._layouts._default')

{{-- Content --}}
@section('content')


    <div class="row">
        <div class="col-md-12">
            <div class="card card-custom gutter-b">
                <!--begin::Header-->
                <div class="card-header border-0 py-5">
                    <h3 class="card-title align-items-start flex-column">
                        <span class="card-label font-weight-bolder text-dark">Base Column</span>
                        <span class="text-muted mt-3 font-weight-bold font-size-sm"></span>
                    </h3>
                    <div class="card-toolbar">
                        <a href="{{ url('admin/base-columns/create') }}"
                            class="btn btn-light-success font-weight-bolder mr-2">

                            <i class="flaticon2-add"></i>

                            Add New Column
                        </a>
                    </div>
                </div>
                <!--end::Header-->
            </div>

            @foreach ($info->table_columns as $item)

                @php
                    $serial = 1;
                    $column = json_decode($item->params);
                @endphp



                <div class="card card-custom gutter-b col-md-12">
                    <div class="card-header">
                        <h3 class="card-title">{{ $item->title }}=>&nbsp;&nbsp;<span
                                class="label label-lg label-inline label-success">{{ $column->design }} </span>
                            @if (isset($column->type)) &nbsp;&nbsp; && Type: &nbsp;&nbsp;
                                <span class="label label-lg label-inline label-warning">{{ $column->type }} </span>
                            @endif
                        </h3>
                        <div class="card-toolbar">
                            <div class="example-tools justify-content-center">

                                <a href="{{ route('admin.base-columns.edit', $item->id) }}"
                                    class="btn btn-sm btn-icon btn-bg-light btn-icon-warning btn-hover-warning">
                                    <i class="flaticon2-pen"></i>
                                </a>


                                <a onclick="Delete('{{ route('admin.base-columns.destroy', $item->id) }}')"
                                    class="btn btn-sm btn-icon btn-bg-light btn-icon-danger btn-hover-danger">
                                    <i class="flaticon2-trash"></i>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="card-body">

                        <div class="row">
                            <div class="col-md-6">

                                @if (isset($row) && $row != '')

                                    <!--begin::Table-->
                                    <div class="table-responsive">
                                        <table
                                            class="table table-head-custom table-head-bg table-vertical-center table-borderless">
                                            <thead>
                                                <tr class="bg-gray-100 text-left">

                                                    <th>
                                                        {{ $column->title }}
                                                    </th>


                                                </tr>
                                            </thead>
                                            <tbody>




                                                <tr>

                                                    @if (isset($column->design) && $column->design != '')


                                                        @include('admin._cruds.column._column_'.$column->design)

                                                    @endif



                                                </tr>




                                            </tbody>
                                        </table>
                                    </div>
                                    <!--end::Table-->



                                @else

                                    <div class="alert alert-custom alert-notice alert-light-success fade show mb-5 text-center"
                                        role="alert">
                                        <div class="alert-icon">
                                            <i class="flaticon-questions-circular-button"></i>
                                        </div>
                                        <div class="alert-text text-dark">
                                            No Data Found..!
                                        </div>


                                    </div>


                                @endif


                            </div>
                            <!--end::Body-->


                            <div class="col-md-6">

                                <div class="example mb-10">


                                    <div class="example-code">
                                        <span class="example-copy" data-toggle="tooltip" title="Copy code"></span>
                                        <div class="example-highlight">
                                            <pre>
                                     <code class="language-html">
                                          [
                                          @foreach ($column as $key => $value)     "{{ $key }}"=> '{{ $value }}',
                                          @endforeach]

                                     </code>
                                 </pre>
                                        </div>
                                    </div>
                                </div>

                            </div>


                        </div>
                    </div>

                </div>
            @endforeach
        </div>
        <div class="modal fade" id="deleteModal">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">

                    <form id="deleteForm" class="form" method="POST">
                        @method('DELETE')
                        @csrf


                        <div class="modal-content">

                            <div class="modal-body">
                                <div class="delete-icon text-center mb-10 mt-5">
                                    <div class="bg-gray-200 rounded-circle demo-square demo-square-lg m-auto">

                                        <i class="flaticon2-trash icon-5x text-danger"></i>

                                    </div>


                                </div>

                                <div class="modal-text text-center mb-10">

                                    <h4 class="text-dark font-weight-bolder d-block mb-5"> You are about to delete an item!
                                    </h4>
                                    <div class="text-muted font-weight-bold font-size-lg">
                                        This will delete you item permanently.
                                        <br>
                                        Are you sure?
                                    </div>

                                </div>



                                <div class="modal-bottom text-right">
                                    <button type="button"
                                        class="btn btn-light-success font-weight-bold btn-sm mr-3 font-size-lg"
                                        data-dismiss="modal">Cancel</button>
                                    <button type="submit"
                                        class="btn btn-danger font-weight-bold btn-sm mr-10 font-size-lg">Delete</button>
                                </div>


                            </div>


                    </form>
                </div>

            </div>
        </div>
    </div>


@endsection

@section('scripts')
    <script type="text/javascript">
        function Delete(route) {
            var form = document.getElementById('deleteForm');
            var attribute = document.createAttribute("action");
            attribute.value = route;
            form.setAttributeNode(attribute);

            $('#deleteModal').modal('show');
        }

        function Search() {

            var search = document.getElementById('search').value;

            var url = window.location.pathname + '?search=' + search;
            console.log(url);
            window.location.replace(url);

        }

        function Export(format) {
            var url = window.location.pathname + '?export=' + format;
            window.location.replace(url);

        }
    </script>
    @parent
@endsection
