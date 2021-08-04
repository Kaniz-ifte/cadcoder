<td class="pl-0 py-8">
    <div class="d-flex align-items-center">
        <div class="symbol symbol-75 flex-shrink-0 mr-4">
            <audio controls="" autoplay="" name="media">
                <source
                    src="{{ isset($column->value) ? Storage::url($column->value) : Storage::url($row->{$column->audio}) }}"
                    type="audio/mpeg">
            </audio>
        </div>

    </div>
</td>
