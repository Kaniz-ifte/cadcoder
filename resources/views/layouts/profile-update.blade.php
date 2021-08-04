@if(Auth::User())

     <style media="screen">

     .avatar-upload {
       position: relative;
       max-width: 205px;
       margin: 50px auto;
     }
     .avatar-upload .avatar-edit {
       position: absolute;
       right: 12px;
       z-index: 1;
       top: 10px;
     }
     .avatar-upload .avatar-edit input {
       display: none;
     }
     .avatar-upload .avatar-edit input + label {
       display: inline-block;
       width: 34px;
       height: 34px;
       margin-bottom: 0;
       border-radius: 100%;
       background: #FFFFFF;
       border: 1px solid transparent;
       box-shadow: 0px 2px 4px 0px rgba(0, 0, 0, 0.12);
       cursor: pointer;
       font-weight: normal;
       transition: all 0.2s ease-in-out;
     }
     .avatar-upload .avatar-edit input + label:hover {
       background: #f1f1f1;
       border-color: #d6d6d6;
     }
     .avatar-upload .avatar-edit input + label i {

       color: #757575;
       position: absolute;
       top: 10px;
       left: 0;
       right: 0;
       text-align: center;
       margin: auto;
     }
     .avatar-upload .avatar-preview {
       width: 192px;
       height: 192px;
       position: relative;
       border-radius: 100%;
       border: 6px solid #F8F8F8;
       box-shadow: 0px 2px 4px 0px rgba(0, 0, 0, 0.1);
     }
     .avatar-upload .avatar-preview > div {
       width: 100%;
       height: 100%;
       border-radius: 100%;
       background-size: cover;
       background-repeat: no-repeat;
       background-position: center;
     }

     </style>

     <div class="card no-border">


   <div class="card-body">
       <form method="POST" action="{{route('update-profile')}}" enctype="multipart/form-data">
           @csrf
           <div class="form-group row">
               <label for="name" class="col-md-4 col-form-label text-md-right"></label>

               <div class="col-md-6">
                    <div class="avatar-upload">
                       <div class="avatar-edit">
                           <input type='file' name="image" id="imageUpload" accept=".png, .jpg, .jpeg" />
                           <label for="imageUpload">
                                <i class="fas fa-pen"></i>
                           </label>
                       </div>
                       <div class="avatar-preview">
                           <div id="imagePreview" style="background-image: url(@if(Auth::User()->avatar==''){{asset('storage/profile/profile.png')}}@else{{asset(Auth::User()->avatar)}}@endif);">
                           </div>
                       </div>
                   </div>
               </div>

               <label for="name" class="col-md-4 col-form-label text-md-right"></label>

               <div class="col-md-6">
                    <button type="button" class="form-control border-radius border-2px">

                         {{Auth::User()->phone}}
                    </button>
                    <br>
                    <br>
                    <button type="button" class="form-control border-radius border-2px btn-info">

                         User Id: {{Auth::User()->id}}
                    </button>
               </div>
           </div>

           <div class="form-group row">


           </div>
           <br>
           <br>



           <div class="form-group row">
               <label for="name" class="col-md-4 col-form-label text-md-right">Name</label>

               <div class="col-md-6">
                    <input id="name" type="text" class="form-control" name="name" value="{{Auth::User()->name}}" required>

                                                </div>
           </div>




           <div class="form-group row">
               <label for="email" class="col-md-4 col-form-label text-md-right">Email</label>

               <div class="col-md-6">
                    <input id="email" type="email" class="form-control @if(Auth::User()->email=='')is-invalid @endif" name="email" value="{{Auth::User()->email}}" required>

                    @if(Auth::User()->email=='')
                       <span class="invalid-feedback" role="alert" style="padding-left: 10px;">
                            <strong>Update Your Email..</strong>
                       </span>
                    @endif

                                                </div>
           </div>



           <div class="form-group row mb-0">
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
