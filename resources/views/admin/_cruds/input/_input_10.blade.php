<label class="{{ isset($input->label_class) ? $input->label_class : 'col-md-2' }} col-form-label text-right"
    for="{{ $input->name }}">{{ $input->title }}</label>
<div class="{{ isset($input->div_class) ? $input->div_class : 'col-md-3' }}">


    @php
        
        $unserialize_array = [];
        if (isset($input->update)) {
            $unserialize_array = unserialize($data->{str_replace('[]', '', $input->name)});
        }
        
    @endphp


    <select class="form-control @error($input->name) is-invalid @enderror" id="kt_select2_3" name="{{ $input->name }}"
        {{ isset($input->required) ? 'required' : '' }} {{ isset($input->disabled) ? 'disabled' : '' }} multiple>
        <option value="">--Select One--</option>

        @foreach ($input->data as $row)

            <option value="{{ $row->{isset($input->value_index) ? $input->value_index : 'id'} }}" @if (isset($input->update)) {{ in_array($row->{isset($input->value_index) ? $input->value_index : 'id'}, $unserialize_array) ? 'selected' : '' }} @endif>{{ $row->{isset($input->view_index) ? $input->view_index : 'title'} }}</option>

        @endforeach



    </select>

    @error($input->name)
        <div class="invalid-feedback">{{ $message }}</div>
    @enderror
</div>

@section('scripts')

    <script src="{{ asset('js/pages/crud/forms/widgets/select2.js?v=7.0.5') }}"></script>
    @parent

@endsection
