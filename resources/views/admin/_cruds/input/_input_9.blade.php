<div class="card card-custom {{ isset($input->div_class) ? $input->div_class : 'col-md-6' }}">
    <div class="card-header" style="min-height:auto;">
        <label class="col-form-label" for="{{ $input->name }}">{{ $input->title }}</label>
    </div>
    <div class="card-body">
        <textarea class="form-control @error($input->name) is-invalid @enderror" id="{{ $input->id }}"
            name="{{ $input->name }}" {{ isset($input->required) ? 'required' : '' }}
            {{ isset($input->disabled) ? 'disabled' : '' }}>
              {{ isset($input->update) ? $data->{$input->name} : '' }}
         </textarea>

        @error($input->name)
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror

    </div>
</div>

@section('scripts')

    <script type="text/javascript">
        tinymce.init({
            selector: '#{{ $input->id }}',
            plugins: [
                'advlist',
                'autolink',
                'lists',
                'link',
                'image',
                'charmap',
                'print',
                'preview',
                'anchor',
                'searchreplace',
                'visualblocks',
                'code',
                'fullscreen',
                'insertdatetime',
                'media',
                'table',
                'contextmenu',
                'paste',
                'imagetools'

            ],
            toolbar: 'undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist | link image',
            content_css: [
                'https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i',
                'https://www.tiny.cloud/css/codepen.min.css'
            ],

            @if (isset($input->math))
                external_plugins: {
                'tiny_mce_wiris' : 'https://cdn.jsdelivr.net/npm/@wiris/mathtype-tinymce4@7.24.0/plugin.min.js'
                },
            @endif

            @if (isset($input->math))
                toolbar: 'tiny_mce_wiris_formulaEditor tiny_mce_wiris_formulaEditorChemistry',
            @endif
            forced_root_block: false,

        });
    </script>

    @parent

@endsection
