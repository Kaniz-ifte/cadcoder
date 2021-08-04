@php
$count = 0;
@endphp

@foreach ($notebooks as $item)

    @php
        $count++;
    @endphp

    <div class="alert border border-success text-success bg-success-0_1 px-4 py-3 alert-dismissible fade show"
        role="alert">
        <div class="media align-items-center">
            <i class="mr-2 ti-check font-size-20"></i>
            <div class="media-body">
                <strong> Note {{ $count }}!</strong> {{ $item->title }}
            </div>
        </div>
        <button type="button" class="close font-size-14 absolute-center-y"  onclick="deleteNotebook({{ $item->id }})">
            <i class="ti-close"></i>
        </button>
    </div>
@endforeach


