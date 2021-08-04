<div class="card height-100p text-gray shadow-v1">
    <a href="{{route('course',$row->id)}}">
        <img class="card-img-top" src="{{asset($row->banner)}}" alt="">
    </a>
    <div class="card-body">

        @if($row->is_bestselling==1)

        <span class="badge position-absolute top-0 bg-success text-white" data-offset-top="-13">
            Best selling
        </span>

        @endif

        <a href="{{route('course',$row->id)}}" class="h6">
            {{$row->title}}
        </a>
        @if ($row->instructor!='')
        <p class="my-3">
            <i class="ti-user mr-2"></i>
            {{$row->instructor}}
        </p>
        @endif
        @php
        $rating=CourseRating($row->id);
        @endphp
        <p class="mb-0">

            @for ($i = 1; $i <= 5; $i++)
            
            @if ($rating->average>=$i)

            <i class="fas fa-star text-warning"></i>

            @elseif ($rating->average>($i-1))

            <i class="fas fa-star-half text-warning"></i>

            @else

            <i class="fas fa-star"></i>

            @endif


            @endfor

            <span class="text-dark">{{$rating->average>5 ? 5:round($rating->average,1)}}</span>
            <span>({{$rating->count>0? $rating->count:0}})</span>
        </p>
    </div>
    <div class="card-footer media align-items-center justify-content-between">
        <ul class="list-unstyled mb-0">

            @if ($row->lectures>0)

            <li class="mb-1">
                <i class="ti-headphone small mr-2"></i>
                {{$row->lectures}} lectures
            </li>

            @endif

            @if ($row->hours>0)

            <li class="mb-1">
                <i class="ti-time small mr-2"></i>
                {{$row->hours}} hours
            </li>
            @endif


        </ul>
        <h4 class="h5 text-right">
            <span class="text-primary">৳{{$row->price}}</span>
        </h4>
    </div>
</div>