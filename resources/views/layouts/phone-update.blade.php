@if(Auth::User())

@if(Auth::User()->phone=='')
    <div class="card no-border">
        <div class="card-body">
            <form method="POST" action="{{route('update-phone')}}">
                @csrf


                <div class="form-group row no-padding">
                    <label for="phone" class="col-md-4 col-form-label text-md-right">Phone</label>

                    <div class="col-md-6">
                        <input id="phone" type="text" class="form-control @if(Auth::User()->phone=='')is-invalid @endif" name="phone" value="{{Auth::User()->phone}}" required>

                        @if(Auth::User()->phone=='')
                            <span class="invalid-feedback" role="alert" style="padding-left: 10px;">
                                <strong>Update Your Phone..</strong>
                            </span>
                            @endif

                    </div>
                </div>



                <div class="form-group mb-0 row no-padding">
                    <div class="col-md-6 offset-md-4">
                        <br>
                        <button type="submit" class="btn btn-danger btn-block border-2px">
                            <strong>Update</strong>
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
@endif
@endif
