
              @if(isset($video) && $video!='')

              @if(isset($video->is_youtube) && $video->is_youtube==1)

                   <div class="plyr__video-embed" id="player"style="position: inherit!important;">


                       <iframe src="{{'https://www.youtube.com/embed/'.$video->video_url_id.'?iv_load_policy=3&modestbranding=1&playsinline=1&showinfo=0&rel=0&enablejsapi=1'}}" allowfullscreen
                            allowtransparency allow="autoplay">

                       </iframe>


                   </div>


              @elseif ($video->is_youtube==0)



                   <div class="plyr__video-embed vimeo_player" style="position: inherit!important;">


                        <iframe  src="https://player.vimeo.com/video/{{$video->video_url_id}}"   frameborder="0" allowfullscreen>

                       </iframe>


                   </div>

              @else
                   <div class="plyr__video-embed" style="position: inherit!important;">
                        <iframe width="1600" height="900" src="https://www.youtube.com/embed/{{$video->video_url_id}}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
              @endif


              @else
              <div class="video-error">
                   <h2>No Video Found..</h2>

              </div>

              @endif
