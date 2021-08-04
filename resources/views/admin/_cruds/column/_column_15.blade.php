<td class="pl-0 py-8">
    <div class="d-flex align-items-center">
        <div class="symbol symbol-75 flex-shrink-0 mr-4">
            @if (isset($column->type) && $column->type == 'iframe')
                <iframe src="{{ isset($column->value) ? $column->value : $row->{$column->index} }}" frameborder="0"
                    height="{{ isset($column->height) ? $column->height : 75 }}"
                    width="{{ isset($column->width) ? $column->width : 120 }}" frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen></iframe>
            @else
                <video controls autoplay name="media" height="{{ isset($column->height) ? $column->height : 75 }}"
                    width="{{ isset($column->width) ? $column->width : 120 }}"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen>
                    <source
                        src="{{ isset($column->value) ? Storage::url($column->value) : Storage::url($row->{$column->index}) }}"
                        type="video/mp4">
                </video>
            @endif
        </div>

    </div>
</td>
