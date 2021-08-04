<label class="{{isset($input['label-class']) ? $input['label-class'] : 'col-md-2'}} col-form-label text-right" for="{{$input['name']}}">{{$input['title']}}</label>
<div class="{{isset($input['div-class']) ? $input['div-class'] : 'col-md-3'}}">

    <div class="input-group date">

        <input type="text" class="form-control @error($input['name']) is-invalid @enderror" readonly="readonly" value="{{isset($input['update']) ? $data->{$input['name']} : $input['value']}}" id="{{$input['id']}}" name="{{$input['name']}}" {{isset($input['required']) ? 'required' : ''}} {{isset($input['disabled']) ? 'disabled' : ''}} />

        <div class="input-group-append">
            <span class="input-group-text">
                <i class="la la-calendar glyphicon-th"></i>
            </span>
        </div>

    </div>

    @error($input['name'])
    <div class="invalid-feedback">{{ $message }}</div>
    @enderror
</div>

@section('scripts')

     <script type="text/javascript">

     $('#{{$input['id']}}').datetimepicker({
      todayHighlight: true,
      autoclose: true,
      pickerPosition: 'bottom-left',
      todayBtn: true,
      format: 'yyyy-mm-dd hh:ii',
      assumeNearbyYear: true
     });

     </script>

     @parent

@endsection
