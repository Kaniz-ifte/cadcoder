@extends('admin._layouts._default')


@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card card-custom gutter-b">
            <!--begin::Header-->
            <div class="card-header border-0 py-5">
                <h3 class="card-title align-items-start flex-column">
                    <span class="card-label font-weight-bolder text-dark">{{$info->title}}</span>
                    <span class="text-muted mt-3 font-weight-bold font-size-sm">{{$info->description}}</span>
                </h3>
                <div class="card-toolbar">
                    <a href="{{route($info->first_button_route)}}" class="btn btn-light-success font-weight-bolder mr-2">

                        <i class="flaticon2-add"></i>

                        {{$info->first_button_title}}
                    </a>
                </div>
            </div>
            <!--end::Header-->
            <div class="card-body pt-0 pb-3">

                <div class="col-md-8 mx-auto my-20">

                     <div class="mb-5" id="nestable-menu">
                         <button type="button" class="btn btn-success" data-action="expand-all">Expand All</button>
                         <button type="button" class="btn btn-primary float-right" data-action="collapse-all">Collapse All</button>
                     </div>

                     <h2 class="card-title align-items-start flex-column text-center">
                         <span class="card-label font-weight-bolder text-dark"> Orientate Your Menus</span>

                    </h2>

                     <div class="dd" id="nestable">
                         <ol class="dd-list">

                             <li class="dd-item" data-id="1">
                                  <div class="nestable-toolbar d-flex">
                                  <span class="switch switch-sm switch-success mr-2">
                                      <label>
                                          <input type="checkbox" checked="checked" name="email_notification_1">
                                          <span></span>
                                      </label>
                                  </span>

                                  <a href="" class="btn btn-sm btn-icon btn-bg-warning btn-icon-white  mr-2">
                                      <i class="flaticon2-pen"></i>
                                  </a>
                                  <a class="btn btn-sm btn-icon btn-bg-danger btn-icon-white mr-2">
                                      <i class="flaticon2-trash"></i>
                                  </a>

                                  </div>


                                 <div class="dd-handle font-weight-bold d-flex align-items-center bg-light-primary rounded p-5  ">
                                     <!--begin::Icon-->
                                     <span class="svg-icon menu-icon svg-icon-danger mr-5">
                                         <span class="svg-icon svg-icon-lg">

                                             <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                 <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                     <rect x="0" y="0" width="24" height="24"></rect>
                                                     <path d="M16,15.6315789 L16,12 C16,10.3431458 14.6568542,9 13,9 L6.16183229,9 L6.16183229,5.52631579 C6.16183229,4.13107011 7.29290239,3 8.68814808,3 L20.4776218,3 C21.8728674,3 23.0039375,4.13107011 23.0039375,5.52631579 L23.0039375,13.1052632 L23.0206157,17.786793 C23.0215995,18.0629336 22.7985408,18.2875874 22.5224001,18.2885711 C22.3891754,18.2890457 22.2612702,18.2363324 22.1670655,18.1421277 L19.6565168,15.6315789 L16,15.6315789 Z"
                                                          fill="#000000"></path>
                                                     <path d="M1.98505595,18 L1.98505595,13 C1.98505595,11.8954305 2.88048645,11 3.98505595,11 L11.9850559,11 C13.0896254,11 13.9850559,11.8954305 13.9850559,13 L13.9850559,18 C13.9850559,19.1045695 13.0896254,20 11.9850559,20 L4.10078614,20 L2.85693427,21.1905292 C2.65744295,21.3814685 2.34093638,21.3745358 2.14999706,21.1750444 C2.06092565,21.0819836 2.01120804,20.958136 2.01120804,20.8293182 L2.01120804,18.32426 C1.99400175,18.2187196 1.98505595,18.1104045 1.98505595,18 Z M6.5,14 C6.22385763,14 6,14.2238576 6,14.5 C6,14.7761424 6.22385763,15 6.5,15 L11.5,15 C11.7761424,15 12,14.7761424 12,14.5 C12,14.2238576 11.7761424,14 11.5,14 L6.5,14 Z M9.5,16 C9.22385763,16 9,16.2238576 9,16.5 C9,16.7761424 9.22385763,17 9.5,17 L11.5,17 C11.7761424,17 12,16.7761424 12,16.5 C12,16.2238576 11.7761424,16 11.5,16 L9.5,16 Z"
                                                          fill="#000000" opacity="0.3"></path>
                                                 </g>
                                             </svg>
                                             <!--end::Svg Icon-->
                                         </span>
                                     </span>
                                     <!--end::Icon-->
                                     Menu 1



                                 </div>
                             </li>
                             <li class="dd-item" data-id="2">
                                  <div class="nestable-toolbar d-flex">
                                  <span class="switch switch-sm switch-success mr-2">
                                      <label>
                                          <input type="checkbox" checked="checked" name="email_notification_1">
                                          <span></span>
                                      </label>
                                  </span>

                                  <a href="" class="btn btn-sm btn-icon btn-bg-warning btn-icon-white  mr-2">
                                      <i class="flaticon2-pen"></i>
                                  </a>
                                  <a class="btn btn-sm btn-icon btn-bg-danger btn-icon-white mr-2">
                                      <i class="flaticon2-trash"></i>
                                  </a>

                                  </div>
                                 <div class="dd-handle font-weight-bold d-flex align-items-center bg-light-primary rounded p-5 ">
                                     <!--begin::Icon-->
                                     <span class="svg-icon menu-icon svg-icon-danger mr-5">
                                         <span class="svg-icon svg-icon-lg">

                                             <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                 <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                     <rect x="0" y="0" width="24" height="24"></rect>
                                                     <path d="M16,15.6315789 L16,12 C16,10.3431458 14.6568542,9 13,9 L6.16183229,9 L6.16183229,5.52631579 C6.16183229,4.13107011 7.29290239,3 8.68814808,3 L20.4776218,3 C21.8728674,3 23.0039375,4.13107011 23.0039375,5.52631579 L23.0039375,13.1052632 L23.0206157,17.786793 C23.0215995,18.0629336 22.7985408,18.2875874 22.5224001,18.2885711 C22.3891754,18.2890457 22.2612702,18.2363324 22.1670655,18.1421277 L19.6565168,15.6315789 L16,15.6315789 Z"
                                                          fill="#000000"></path>
                                                     <path d="M1.98505595,18 L1.98505595,13 C1.98505595,11.8954305 2.88048645,11 3.98505595,11 L11.9850559,11 C13.0896254,11 13.9850559,11.8954305 13.9850559,13 L13.9850559,18 C13.9850559,19.1045695 13.0896254,20 11.9850559,20 L4.10078614,20 L2.85693427,21.1905292 C2.65744295,21.3814685 2.34093638,21.3745358 2.14999706,21.1750444 C2.06092565,21.0819836 2.01120804,20.958136 2.01120804,20.8293182 L2.01120804,18.32426 C1.99400175,18.2187196 1.98505595,18.1104045 1.98505595,18 Z M6.5,14 C6.22385763,14 6,14.2238576 6,14.5 C6,14.7761424 6.22385763,15 6.5,15 L11.5,15 C11.7761424,15 12,14.7761424 12,14.5 C12,14.2238576 11.7761424,14 11.5,14 L6.5,14 Z M9.5,16 C9.22385763,16 9,16.2238576 9,16.5 C9,16.7761424 9.22385763,17 9.5,17 L11.5,17 C11.7761424,17 12,16.7761424 12,16.5 C12,16.2238576 11.7761424,16 11.5,16 L9.5,16 Z"
                                                          fill="#000000" opacity="0.3"></path>
                                                 </g>
                                             </svg>
                                             <!--end::Svg Icon-->
                                         </span>
                                     </span>
                                     <!--end::Icon-->
                                     Menu 2

                                 </div>
                                 <ol class="dd-list">
                                     <li class="dd-item" data-id="3">
                                          <div class="nestable-toolbar d-flex">
                                          <span class="switch switch-sm switch-success mr-2">
                                              <label>
                                                  <input type="checkbox" checked="checked" name="email_notification_1">
                                                  <span></span>
                                              </label>
                                          </span>

                                          <a href="" class="btn btn-sm btn-icon btn-bg-warning btn-icon-white  mr-2">
                                              <i class="flaticon2-pen"></i>
                                          </a>
                                          <a class="btn btn-sm btn-icon btn-bg-danger btn-icon-white mr-2">
                                              <i class="flaticon2-trash"></i>
                                          </a>

                                          </div>

                                         <div class="dd-handle font-weight-bold d-flex align-items-center bg-light-primary rounded p-5">
                                             <!--begin::Icon-->
                                             <span class="svg-icon menu-icon svg-icon-danger mr-5">
                                                 <span class="svg-icon svg-icon-lg">
                                                     <!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Group-chat.svg-->
                                                     <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                         <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                             <rect x="0" y="0" width="24" height="24"></rect>
                                                             <path d="M16,15.6315789 L16,12 C16,10.3431458 14.6568542,9 13,9 L6.16183229,9 L6.16183229,5.52631579 C6.16183229,4.13107011 7.29290239,3 8.68814808,3 L20.4776218,3 C21.8728674,3 23.0039375,4.13107011 23.0039375,5.52631579 L23.0039375,13.1052632 L23.0206157,17.786793 C23.0215995,18.0629336 22.7985408,18.2875874 22.5224001,18.2885711 C22.3891754,18.2890457 22.2612702,18.2363324 22.1670655,18.1421277 L19.6565168,15.6315789 L16,15.6315789 Z"
                                                                  fill="#000000"></path>
                                                             <path d="M1.98505595,18 L1.98505595,13 C1.98505595,11.8954305 2.88048645,11 3.98505595,11 L11.9850559,11 C13.0896254,11 13.9850559,11.8954305 13.9850559,13 L13.9850559,18 C13.9850559,19.1045695 13.0896254,20 11.9850559,20 L4.10078614,20 L2.85693427,21.1905292 C2.65744295,21.3814685 2.34093638,21.3745358 2.14999706,21.1750444 C2.06092565,21.0819836 2.01120804,20.958136 2.01120804,20.8293182 L2.01120804,18.32426 C1.99400175,18.2187196 1.98505595,18.1104045 1.98505595,18 Z M6.5,14 C6.22385763,14 6,14.2238576 6,14.5 C6,14.7761424 6.22385763,15 6.5,15 L11.5,15 C11.7761424,15 12,14.7761424 12,14.5 C12,14.2238576 11.7761424,14 11.5,14 L6.5,14 Z M9.5,16 C9.22385763,16 9,16.2238576 9,16.5 C9,16.7761424 9.22385763,17 9.5,17 L11.5,17 C11.7761424,17 12,16.7761424 12,16.5 C12,16.2238576 11.7761424,16 11.5,16 L9.5,16 Z"
                                                                  fill="#000000" opacity="0.3"></path>
                                                         </g>
                                                     </svg>
                                                     <!--end::Svg Icon-->
                                                 </span>
                                             </span>
                                             <!--end::Icon-->
                                             Menu 3

                                         </div>
                                     </li>

                                     <li class="dd-item" data-id="5">
                                          <div class="nestable-toolbar d-flex">



                                          <span class="switch switch-sm switch-success mr-2">
                                              <label>
                                                  <input type="checkbox" checked="checked" name="email_notification_1">
                                                  <span></span>
                                              </label>
                                          </span>

                                          <a href="" class="btn btn-sm btn-icon btn-bg-warning btn-icon-white  mr-2">
                                              <i class="flaticon2-pen"></i>
                                          </a>
                                          <a class="btn btn-sm btn-icon btn-bg-danger btn-icon-white mr-2">
                                              <i class="flaticon2-trash"></i>
                                          </a>

                                          </div>
                                         <div class="dd-handle font-weight-bold d-flex align-items-center bg-light-primary rounded p-5 ">
                                             <!--begin::Icon-->
                                             <span class="svg-icon menu-icon svg-icon-danger mr-5">
                                                 <span class="svg-icon svg-icon-lg">
                                                     <!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Group-chat.svg-->
                                                     <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                         <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                             <rect x="0" y="0" width="24" height="24"></rect>
                                                             <path d="M16,15.6315789 L16,12 C16,10.3431458 14.6568542,9 13,9 L6.16183229,9 L6.16183229,5.52631579 C6.16183229,4.13107011 7.29290239,3 8.68814808,3 L20.4776218,3 C21.8728674,3 23.0039375,4.13107011 23.0039375,5.52631579 L23.0039375,13.1052632 L23.0206157,17.786793 C23.0215995,18.0629336 22.7985408,18.2875874 22.5224001,18.2885711 C22.3891754,18.2890457 22.2612702,18.2363324 22.1670655,18.1421277 L19.6565168,15.6315789 L16,15.6315789 Z"
                                                                  fill="#000000"></path>
                                                             <path d="M1.98505595,18 L1.98505595,13 C1.98505595,11.8954305 2.88048645,11 3.98505595,11 L11.9850559,11 C13.0896254,11 13.9850559,11.8954305 13.9850559,13 L13.9850559,18 C13.9850559,19.1045695 13.0896254,20 11.9850559,20 L4.10078614,20 L2.85693427,21.1905292 C2.65744295,21.3814685 2.34093638,21.3745358 2.14999706,21.1750444 C2.06092565,21.0819836 2.01120804,20.958136 2.01120804,20.8293182 L2.01120804,18.32426 C1.99400175,18.2187196 1.98505595,18.1104045 1.98505595,18 Z M6.5,14 C6.22385763,14 6,14.2238576 6,14.5 C6,14.7761424 6.22385763,15 6.5,15 L11.5,15 C11.7761424,15 12,14.7761424 12,14.5 C12,14.2238576 11.7761424,14 11.5,14 L6.5,14 Z M9.5,16 C9.22385763,16 9,16.2238576 9,16.5 C9,16.7761424 9.22385763,17 9.5,17 L11.5,17 C11.7761424,17 12,16.7761424 12,16.5 C12,16.2238576 11.7761424,16 11.5,16 L9.5,16 Z"
                                                                  fill="#000000" opacity="0.3"></path>
                                                         </g>
                                                     </svg>
                                                     <!--end::Svg Icon-->
                                                 </span>
                                             </span>
                                             <!--end::Icon-->
                                             Menu 5

                                         </div>
                                         <ol class="dd-list">
                                             <li class="dd-item   " data-id="6">
                                                  <div class="nestable-toolbar d-flex">



                                                  <span class="switch switch-sm switch-success mr-2">
                                                      <label>
                                                          <input type="checkbox" checked="checked" name="email_notification_1">
                                                          <span></span>
                                                      </label>
                                                  </span>

                                                  <a href="" class="btn btn-sm btn-icon btn-bg-warning btn-icon-white  mr-2">
                                                      <i class="flaticon2-pen"></i>
                                                  </a>
                                                  <a class="btn btn-sm btn-icon btn-bg-danger btn-icon-white mr-2">
                                                      <i class="flaticon2-trash"></i>
                                                  </a>

                                                  </div>
                                                 <div class="dd-handle font-weight-bold d-flex align-items-center bg-light-primary rounded p-5 ">
                                                     <!--begin::Icon-->
                                                     <span class="svg-icon menu-icon svg-icon-danger mr-5">
                                                         <span class="svg-icon svg-icon-lg">
                                                             <!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Group-chat.svg-->
                                                             <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                 <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                     <rect x="0" y="0" width="24" height="24"></rect>
                                                                     <path d="M16,15.6315789 L16,12 C16,10.3431458 14.6568542,9 13,9 L6.16183229,9 L6.16183229,5.52631579 C6.16183229,4.13107011 7.29290239,3 8.68814808,3 L20.4776218,3 C21.8728674,3 23.0039375,4.13107011 23.0039375,5.52631579 L23.0039375,13.1052632 L23.0206157,17.786793 C23.0215995,18.0629336 22.7985408,18.2875874 22.5224001,18.2885711 C22.3891754,18.2890457 22.2612702,18.2363324 22.1670655,18.1421277 L19.6565168,15.6315789 L16,15.6315789 Z"
                                                                          fill="#000000"></path>
                                                                     <path d="M1.98505595,18 L1.98505595,13 C1.98505595,11.8954305 2.88048645,11 3.98505595,11 L11.9850559,11 C13.0896254,11 13.9850559,11.8954305 13.9850559,13 L13.9850559,18 C13.9850559,19.1045695 13.0896254,20 11.9850559,20 L4.10078614,20 L2.85693427,21.1905292 C2.65744295,21.3814685 2.34093638,21.3745358 2.14999706,21.1750444 C2.06092565,21.0819836 2.01120804,20.958136 2.01120804,20.8293182 L2.01120804,18.32426 C1.99400175,18.2187196 1.98505595,18.1104045 1.98505595,18 Z M6.5,14 C6.22385763,14 6,14.2238576 6,14.5 C6,14.7761424 6.22385763,15 6.5,15 L11.5,15 C11.7761424,15 12,14.7761424 12,14.5 C12,14.2238576 11.7761424,14 11.5,14 L6.5,14 Z M9.5,16 C9.22385763,16 9,16.2238576 9,16.5 C9,16.7761424 9.22385763,17 9.5,17 L11.5,17 C11.7761424,17 12,16.7761424 12,16.5 C12,16.2238576 11.7761424,16 11.5,16 L9.5,16 Z"
                                                                          fill="#000000" opacity="0.3"></path>
                                                                 </g>
                                                             </svg>
                                                             <!--end::Svg Icon-->
                                                         </span>
                                                     </span>
                                                     <!--end::Icon-->
                                                     Menu 6

                                                 </div>
                                             </li>
                                             <li class="dd-item   " data-id="7">
                                                 <div class="dd-handle font-weight-bold d-flex align-items-center bg-light-primary rounded p-5 ">
                                                     <!--begin::Icon-->
                                                     <span class="svg-icon menu-icon svg-icon-danger mr-5">
                                                         <span class="svg-icon svg-icon-lg">
                                                             <!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Group-chat.svg-->
                                                             <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                 <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                     <rect x="0" y="0" width="24" height="24"></rect>
                                                                     <path d="M16,15.6315789 L16,12 C16,10.3431458 14.6568542,9 13,9 L6.16183229,9 L6.16183229,5.52631579 C6.16183229,4.13107011 7.29290239,3 8.68814808,3 L20.4776218,3 C21.8728674,3 23.0039375,4.13107011 23.0039375,5.52631579 L23.0039375,13.1052632 L23.0206157,17.786793 C23.0215995,18.0629336 22.7985408,18.2875874 22.5224001,18.2885711 C22.3891754,18.2890457 22.2612702,18.2363324 22.1670655,18.1421277 L19.6565168,15.6315789 L16,15.6315789 Z"
                                                                          fill="#000000"></path>
                                                                     <path d="M1.98505595,18 L1.98505595,13 C1.98505595,11.8954305 2.88048645,11 3.98505595,11 L11.9850559,11 C13.0896254,11 13.9850559,11.8954305 13.9850559,13 L13.9850559,18 C13.9850559,19.1045695 13.0896254,20 11.9850559,20 L4.10078614,20 L2.85693427,21.1905292 C2.65744295,21.3814685 2.34093638,21.3745358 2.14999706,21.1750444 C2.06092565,21.0819836 2.01120804,20.958136 2.01120804,20.8293182 L2.01120804,18.32426 C1.99400175,18.2187196 1.98505595,18.1104045 1.98505595,18 Z M6.5,14 C6.22385763,14 6,14.2238576 6,14.5 C6,14.7761424 6.22385763,15 6.5,15 L11.5,15 C11.7761424,15 12,14.7761424 12,14.5 C12,14.2238576 11.7761424,14 11.5,14 L6.5,14 Z M9.5,16 C9.22385763,16 9,16.2238576 9,16.5 C9,16.7761424 9.22385763,17 9.5,17 L11.5,17 C11.7761424,17 12,16.7761424 12,16.5 C12,16.2238576 11.7761424,16 11.5,16 L9.5,16 Z"
                                                                          fill="#000000" opacity="0.3"></path>
                                                                 </g>
                                                             </svg>
                                                             <!--end::Svg Icon-->
                                                         </span>
                                                     </span>
                                                     <!--end::Icon-->
                                                     Menu 7

                                                 </div>
                                             </li>
                                             <li class="dd-item   " data-id="8">
                                                 <div class="dd-handle font-weight-bold d-flex align-items-center bg-light-primary rounded p-5 ">
                                                     <!--begin::Icon-->
                                                     <span class="svg-icon menu-icon svg-icon-danger mr-5">
                                                         <span class="svg-icon svg-icon-lg">
                                                             <!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Group-chat.svg-->
                                                             <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                                 <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                     <rect x="0" y="0" width="24" height="24"></rect>
                                                                     <path d="M16,15.6315789 L16,12 C16,10.3431458 14.6568542,9 13,9 L6.16183229,9 L6.16183229,5.52631579 C6.16183229,4.13107011 7.29290239,3 8.68814808,3 L20.4776218,3 C21.8728674,3 23.0039375,4.13107011 23.0039375,5.52631579 L23.0039375,13.1052632 L23.0206157,17.786793 C23.0215995,18.0629336 22.7985408,18.2875874 22.5224001,18.2885711 C22.3891754,18.2890457 22.2612702,18.2363324 22.1670655,18.1421277 L19.6565168,15.6315789 L16,15.6315789 Z"
                                                                          fill="#000000"></path>
                                                                     <path d="M1.98505595,18 L1.98505595,13 C1.98505595,11.8954305 2.88048645,11 3.98505595,11 L11.9850559,11 C13.0896254,11 13.9850559,11.8954305 13.9850559,13 L13.9850559,18 C13.9850559,19.1045695 13.0896254,20 11.9850559,20 L4.10078614,20 L2.85693427,21.1905292 C2.65744295,21.3814685 2.34093638,21.3745358 2.14999706,21.1750444 C2.06092565,21.0819836 2.01120804,20.958136 2.01120804,20.8293182 L2.01120804,18.32426 C1.99400175,18.2187196 1.98505595,18.1104045 1.98505595,18 Z M6.5,14 C6.22385763,14 6,14.2238576 6,14.5 C6,14.7761424 6.22385763,15 6.5,15 L11.5,15 C11.7761424,15 12,14.7761424 12,14.5 C12,14.2238576 11.7761424,14 11.5,14 L6.5,14 Z M9.5,16 C9.22385763,16 9,16.2238576 9,16.5 C9,16.7761424 9.22385763,17 9.5,17 L11.5,17 C11.7761424,17 12,16.7761424 12,16.5 C12,16.2238576 11.7761424,16 11.5,16 L9.5,16 Z"
                                                                          fill="#000000" opacity="0.3"></path>
                                                                 </g>
                                                             </svg>
                                                             <!--end::Svg Icon-->
                                                         </span>
                                                     </span>
                                                     <!--end::Icon-->
                                                     Menu 8

                                                 </div>
                                             </li>
                                         </ol>
                                     </li>
                                     <li class="dd-item   " data-id="9">
                                         <div class="dd-handle font-weight-bold d-flex align-items-center bg-light-primary rounded p-5 ">
                                             <!--begin::Icon-->
                                             <span class="svg-icon menu-icon svg-icon-danger mr-5">
                                                 <span class="svg-icon svg-icon-lg">
                                                     <!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Group-chat.svg-->
                                                     <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                         <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                             <rect x="0" y="0" width="24" height="24"></rect>
                                                             <path d="M16,15.6315789 L16,12 C16,10.3431458 14.6568542,9 13,9 L6.16183229,9 L6.16183229,5.52631579 C6.16183229,4.13107011 7.29290239,3 8.68814808,3 L20.4776218,3 C21.8728674,3 23.0039375,4.13107011 23.0039375,5.52631579 L23.0039375,13.1052632 L23.0206157,17.786793 C23.0215995,18.0629336 22.7985408,18.2875874 22.5224001,18.2885711 C22.3891754,18.2890457 22.2612702,18.2363324 22.1670655,18.1421277 L19.6565168,15.6315789 L16,15.6315789 Z"
                                                                  fill="#000000"></path>
                                                             <path d="M1.98505595,18 L1.98505595,13 C1.98505595,11.8954305 2.88048645,11 3.98505595,11 L11.9850559,11 C13.0896254,11 13.9850559,11.8954305 13.9850559,13 L13.9850559,18 C13.9850559,19.1045695 13.0896254,20 11.9850559,20 L4.10078614,20 L2.85693427,21.1905292 C2.65744295,21.3814685 2.34093638,21.3745358 2.14999706,21.1750444 C2.06092565,21.0819836 2.01120804,20.958136 2.01120804,20.8293182 L2.01120804,18.32426 C1.99400175,18.2187196 1.98505595,18.1104045 1.98505595,18 Z M6.5,14 C6.22385763,14 6,14.2238576 6,14.5 C6,14.7761424 6.22385763,15 6.5,15 L11.5,15 C11.7761424,15 12,14.7761424 12,14.5 C12,14.2238576 11.7761424,14 11.5,14 L6.5,14 Z M9.5,16 C9.22385763,16 9,16.2238576 9,16.5 C9,16.7761424 9.22385763,17 9.5,17 L11.5,17 C11.7761424,17 12,16.7761424 12,16.5 C12,16.2238576 11.7761424,16 11.5,16 L9.5,16 Z"
                                                                  fill="#000000" opacity="0.3"></path>
                                                         </g>
                                                     </svg>
                                                     <!--end::Svg Icon-->
                                                 </span>
                                             </span>
                                             <!--end::Icon-->
                                             Menu 9

                                         </div>
                                     </li>
                                     <li class="dd-item   " data-id="10">
                                         <div class="dd-handle font-weight-bold d-flex align-items-center bg-light-primary rounded p-5 ">
                                             <!--begin::Icon-->
                                             <span class="svg-icon menu-icon svg-icon-danger mr-5">
                                                 <span class="svg-icon svg-icon-lg">
                                                     <!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Group-chat.svg-->
                                                     <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                         <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                             <rect x="0" y="0" width="24" height="24"></rect>
                                                             <path d="M16,15.6315789 L16,12 C16,10.3431458 14.6568542,9 13,9 L6.16183229,9 L6.16183229,5.52631579 C6.16183229,4.13107011 7.29290239,3 8.68814808,3 L20.4776218,3 C21.8728674,3 23.0039375,4.13107011 23.0039375,5.52631579 L23.0039375,13.1052632 L23.0206157,17.786793 C23.0215995,18.0629336 22.7985408,18.2875874 22.5224001,18.2885711 C22.3891754,18.2890457 22.2612702,18.2363324 22.1670655,18.1421277 L19.6565168,15.6315789 L16,15.6315789 Z"
                                                                  fill="#000000"></path>
                                                             <path d="M1.98505595,18 L1.98505595,13 C1.98505595,11.8954305 2.88048645,11 3.98505595,11 L11.9850559,11 C13.0896254,11 13.9850559,11.8954305 13.9850559,13 L13.9850559,18 C13.9850559,19.1045695 13.0896254,20 11.9850559,20 L4.10078614,20 L2.85693427,21.1905292 C2.65744295,21.3814685 2.34093638,21.3745358 2.14999706,21.1750444 C2.06092565,21.0819836 2.01120804,20.958136 2.01120804,20.8293182 L2.01120804,18.32426 C1.99400175,18.2187196 1.98505595,18.1104045 1.98505595,18 Z M6.5,14 C6.22385763,14 6,14.2238576 6,14.5 C6,14.7761424 6.22385763,15 6.5,15 L11.5,15 C11.7761424,15 12,14.7761424 12,14.5 C12,14.2238576 11.7761424,14 11.5,14 L6.5,14 Z M9.5,16 C9.22385763,16 9,16.2238576 9,16.5 C9,16.7761424 9.22385763,17 9.5,17 L11.5,17 C11.7761424,17 12,16.7761424 12,16.5 C12,16.2238576 11.7761424,16 11.5,16 L9.5,16 Z"
                                                                  fill="#000000" opacity="0.3"></path>
                                                         </g>
                                                     </svg>
                                                     <!--end::Svg Icon-->
                                                 </span>
                                             </span>
                                             <!--end::Icon-->
                                             Menu 10

                                         </div>
                                     </li>
                                 </ol>
                             </li>
                             <li class="dd-item" data-id="11">
                                 <div class="dd-handle font-weight-bold d-flex align-items-center bg-light-primary rounded p-5 ">
                                     <!--begin::Icon-->
                                     <span class="svg-icon menu-icon svg-icon-danger mr-5">
                                         <span class="svg-icon svg-icon-lg">
                                             <!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Group-chat.svg-->
                                             <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                 <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                     <rect x="0" y="0" width="24" height="24"></rect>
                                                     <path d="M16,15.6315789 L16,12 C16,10.3431458 14.6568542,9 13,9 L6.16183229,9 L6.16183229,5.52631579 C6.16183229,4.13107011 7.29290239,3 8.68814808,3 L20.4776218,3 C21.8728674,3 23.0039375,4.13107011 23.0039375,5.52631579 L23.0039375,13.1052632 L23.0206157,17.786793 C23.0215995,18.0629336 22.7985408,18.2875874 22.5224001,18.2885711 C22.3891754,18.2890457 22.2612702,18.2363324 22.1670655,18.1421277 L19.6565168,15.6315789 L16,15.6315789 Z"
                                                          fill="#000000"></path>
                                                     <path d="M1.98505595,18 L1.98505595,13 C1.98505595,11.8954305 2.88048645,11 3.98505595,11 L11.9850559,11 C13.0896254,11 13.9850559,11.8954305 13.9850559,13 L13.9850559,18 C13.9850559,19.1045695 13.0896254,20 11.9850559,20 L4.10078614,20 L2.85693427,21.1905292 C2.65744295,21.3814685 2.34093638,21.3745358 2.14999706,21.1750444 C2.06092565,21.0819836 2.01120804,20.958136 2.01120804,20.8293182 L2.01120804,18.32426 C1.99400175,18.2187196 1.98505595,18.1104045 1.98505595,18 Z M6.5,14 C6.22385763,14 6,14.2238576 6,14.5 C6,14.7761424 6.22385763,15 6.5,15 L11.5,15 C11.7761424,15 12,14.7761424 12,14.5 C12,14.2238576 11.7761424,14 11.5,14 L6.5,14 Z M9.5,16 C9.22385763,16 9,16.2238576 9,16.5 C9,16.7761424 9.22385763,17 9.5,17 L11.5,17 C11.7761424,17 12,16.7761424 12,16.5 C12,16.2238576 11.7761424,16 11.5,16 L9.5,16 Z"
                                                          fill="#000000" opacity="0.3"></path>
                                                 </g>
                                             </svg>
                                             <!--end::Svg Icon-->
                                         </span>
                                     </span>
                                     <!--end::Icon-->
                                     Menu 11

                                 </div>
                             </li>
                             <li class="dd-item" data-id="12">
                                 <div class="dd-handle font-weight-bold d-flex align-items-center bg-light-primary rounded p-5 ">
                                     <!--begin::Icon-->
                                     <span class="svg-icon menu-icon svg-icon-danger mr-5">
                                         <span class="svg-icon svg-icon-lg">
                                             <!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Group-chat.svg-->
                                             <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                 <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                     <rect x="0" y="0" width="24" height="24"></rect>
                                                     <path d="M16,15.6315789 L16,12 C16,10.3431458 14.6568542,9 13,9 L6.16183229,9 L6.16183229,5.52631579 C6.16183229,4.13107011 7.29290239,3 8.68814808,3 L20.4776218,3 C21.8728674,3 23.0039375,4.13107011 23.0039375,5.52631579 L23.0039375,13.1052632 L23.0206157,17.786793 C23.0215995,18.0629336 22.7985408,18.2875874 22.5224001,18.2885711 C22.3891754,18.2890457 22.2612702,18.2363324 22.1670655,18.1421277 L19.6565168,15.6315789 L16,15.6315789 Z"
                                                          fill="#000000"></path>
                                                     <path d="M1.98505595,18 L1.98505595,13 C1.98505595,11.8954305 2.88048645,11 3.98505595,11 L11.9850559,11 C13.0896254,11 13.9850559,11.8954305 13.9850559,13 L13.9850559,18 C13.9850559,19.1045695 13.0896254,20 11.9850559,20 L4.10078614,20 L2.85693427,21.1905292 C2.65744295,21.3814685 2.34093638,21.3745358 2.14999706,21.1750444 C2.06092565,21.0819836 2.01120804,20.958136 2.01120804,20.8293182 L2.01120804,18.32426 C1.99400175,18.2187196 1.98505595,18.1104045 1.98505595,18 Z M6.5,14 C6.22385763,14 6,14.2238576 6,14.5 C6,14.7761424 6.22385763,15 6.5,15 L11.5,15 C11.7761424,15 12,14.7761424 12,14.5 C12,14.2238576 11.7761424,14 11.5,14 L6.5,14 Z M9.5,16 C9.22385763,16 9,16.2238576 9,16.5 C9,16.7761424 9.22385763,17 9.5,17 L11.5,17 C11.7761424,17 12,16.7761424 12,16.5 C12,16.2238576 11.7761424,16 11.5,16 L9.5,16 Z"
                                                          fill="#000000" opacity="0.3"></path>
                                                 </g>
                                             </svg>
                                             <!--end::Svg Icon-->
                                         </span>
                                     </span>
                                     <!--end::Icon-->
                                     Menu 12

                                 </div>
                             </li>
                         </ol>
                     </div>

                </div>
            </div>
            <!--end::Body-->


        </div>

    </div>
</div>

@endsection

@section('styles')


<link rel="stylesheet" href="{{asset('css/pages/menu/nestable-default.css')}}">
@parent
@endsection
@section('scripts')

<script type="text/javascript" src="{{asset('js/pages/menu/nestable.js')}}">

</script>

<script type="text/javascript">
    $(document).ready(function() {

        var updateOutput = function(e) {

            var list = e.length ? e : $(e.target);
            console.log(list.nestable('serialize'));

        };

        // activate Nestable for list 1
        $('#nestable').nestable({
                group: 1
            })
            .on('change', updateOutput);



        // output initial serialised data
        updateOutput($('#nestable').data('output', $('#nestable-output')));

        $('#nestable-menu').on('click', function(e) {
            var target = $(e.target),
                action = target.data('action');
            if (action === 'expand-all') {
                $('.dd').nestable('expandAll');
            }
            if (action === 'collapse-all') {
                $('.dd').nestable('collapseAll');
            }
        });



    });
</script>

@parent

@endsection
