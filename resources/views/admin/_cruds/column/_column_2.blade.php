<td>
    @if (isset($column->show_route))


        <a href="{{ route($column->show_route, $row->id) }}"
            class="btn btn-sm btn-icon btn-bg-light btn-icon-success btn-hover-success">
            <i class="flaticon2-analytics-2"></i>
        </a>

    @endif


    @if (isset($column->edit_route))


        <a href="{{ route($column->edit_route, $row->id) }}"
            class="btn btn-sm btn-icon btn-bg-light btn-icon-warning btn-hover-warning">
            <i class="flaticon2-pen"></i>
        </a>

    @endif

    @if (isset($column->destroy_route))


        <a onclick="Delete('{{ route($column->destroy_route, $row->id) }}')"
            class="btn btn-sm btn-icon btn-bg-light btn-icon-danger btn-hover-danger">
            <i class="flaticon2-trash"></i>
        </a>

    @endif


</td>
