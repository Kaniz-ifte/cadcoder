<label class="{{ isset($input->label_class) ? $input->label_class : 'col-md-2' }} col-form-label text-right"
    for="{{ $input->name }}">{{ $input->title }}</label>
<div class="{{ isset($input->div_class) ? $input->div_class : 'col-md-3' }}">
    <textarea name="{{ $input->name }}" id="{{ isset($input->id) ? $input->id : 'textarea_id' }}"
        class="form-control @error($input->name) is-invalid @enderror"
        rows="{{ isset($input->rows) ? $input->rows : '3' }}" cols="{{ isset($input->rows) ? $input->rows : '80' }}"
        {{ isset($input->required) ? 'required' : '' }}
        {{ isset($input->disabled) ? 'disabled' : '' }}> {{ isset($input->update) ? $data->{$input->name} : '' }}  </textarea>

    @error($input->name)
        <div class="invalid-feedback">{{ $message }}</div>
    @enderror
</div>

@section('scripts')

    <script type="text/javascript">
        @if (isset($input->autosize))
            autosize($('#{{ isset($input->id) ? $input->id : 'textarea_id' }}'));
            autosize.update($('#{{ isset($input->id) ? $input->id : 'textarea_id' }}'));
        @endif
    </script>

    @parent

@endsection
