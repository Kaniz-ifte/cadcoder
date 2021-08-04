@foreach ($discussions[0] as $item)

    <li>

        <div class="media mb-5">
            <img class="iconbox iconbox-lg mr-3" src="{{ asset($item->user_avatar) }}" alt="">
            <div class="media-body">
                <div class="mr-4">
                    <a  class="float-right btn btn-outline-danger btn-pill btn-sm border-0"  onclick="deleteComment({{ $item->id }})">
                        <i class="ti-trash"></i>
                    </a>
                    <a href="#" class="float-right btn btn-outline-primary btn-pill btn-sm border-0">
                        <i class="ti-pencil-alt"></i>
                    </a>
                </div>
                <h4 class="h5 mb-0">
                    {{ $item->user_name }}
                </h4>
                <p class="text-gray">
                    {{ date('M d, Y', strtotime($item->created_at)) }}
                </p>
                <p>
                    {{ $item->text }}
                </p>
                <a class="float-right btn btn-outline-primary btn-pill btn-sm mr-5"
                    onclick="reply({{ $item->id }})">
                    <i class="ti-back-right"></i> REPLY
                </a>
            </div>
        </div>

        @if (isset($discussions[$item->id]))

            <ul>

                @foreach ($discussions[$item->id] as $reply)
                    <li>
                        <div class="media mb-5">
                            <img class="iconbox iconbox-lg mr-3" src="{{ asset($reply->user_avatar) }}" alt="">
                            <div class="media-body">
                                <div class="mr-4">
                                    <a href="#" class="float-right btn btn-outline-danger btn-pill btn-sm border-0">
                                        <i class="ti-trash"></i>
                                    </a>
                                    <a href="#" class="float-right btn btn-outline-primary btn-pill btn-sm border-0">
                                        <i class="ti-pencil-alt"></i>
                                    </a>
                                </div>
                                <h4 class="h5 mb-0">
                                    {{ $reply->user_name }}
                                </h4>
                                <p class="text-gray">
                                    {{ date('M d, Y', strtotime($reply->created_at)) }}
                                </p>
                                <p>
                                    {{ $reply->text }}
                                </p>
                                <a class="float-right btn btn-outline-primary btn-pill btn-sm mr-5"
                                    onclick="reply({{ $item->id }})">
                                    <i class="ti-back-right"></i> REPLY
                                </a>
                            </div>
                        </div>
                    </li>
                @endforeach

            </ul>
        @endif

    </li>
    <div class="display_none" id="reply_form{{ $item->id }}" class="mb-4 ml-5 mr-5">

    </div>

@endforeach
