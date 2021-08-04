@extends('layouts.app')

@section('content')

    <section class="padding-y-100 bg-light-v2">
    <div class="container">
      <div class="row">
       <div class="col-12 text-center mb-5">
          <h2>
            Send Message
          </h2>
          <div class="width-4rem height-4 bg-primary my-2 mx-auto rounded"></div>
        </div>
        <div class="col-12 text-center">
          <form action="#" method="POST" class="card p-4 p-md-5 shadow-v1">
            <p class="lead mt-2">
              Investig tiones demons travge wunt ectores legere lkurus quod legunt saepiu clear <br> tasest consectetur adipi sicing elitsed eusmod tempor cididunt.
            </p>
            <div class="row mt-5 mx-0">
              <div class="col-md-4 mb-4">
                <input type="text" class="form-control" placeholder="Name" required>
              </div>
              <div class="col-md-4 mb-4">
                <input type="email" class="form-control" placeholder="Email" required>
              </div>
              <div class="col-md-4 mb-4">
                <input type="email" class="form-control" placeholder="Phone(Optional)">
              </div>
              <div class="col-12">
                <textarea type="email" class="form-control" placeholder="Message" rows="7"></textarea>
                <button type="submit" class="btn btn-primary mt-4">Send Message</button>
              </div>
            </div>
          </form>
        </div>

      </div> <!-- END row-->
    </div> <!-- END container-->
  </section>


@endsection
