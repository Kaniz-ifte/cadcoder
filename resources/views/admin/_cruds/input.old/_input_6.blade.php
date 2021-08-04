<label class="{{isset($input['label-class']) ? $input['label-class'] : 'col-md-2'}} col-form-label text-right" for="{{$input['name']}}">{{$input['title']}}</label>
<div class="{{isset($input['div-class']) ? $input['div-class'] : 'col-md-3'}}">

   <select class="form-control selectpicker @error($input['name']) is-invalid @enderror" data-live-search="true" name="{{$input['name']}}" {{isset($input['required']) ? 'required' : ''}} {{isset($input['disabled']) ? 'disabled' : ''}}>
        <option value="">--Select One--</option>

        @foreach ($input['data'] as $row)

        <option value="{{$row->{isset($input['value-index']) ? $input['value-index'] : 'id'} }}" @if (isset($input['update'])) {{$data->{$input['name']}==$row->id ? 'selected' : '' }} @endif>{{$row->{isset($input['view-index']) ? $input['view-index'] : 'title'} }}</option>

        @endforeach

   </select>

   @error($input['name'])
   <div class="invalid-feedback">{{ $message }}</div>
   @enderror
</div>
