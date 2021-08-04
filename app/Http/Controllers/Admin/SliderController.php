<?php


namespace App\Http\Controllers\Admin;


use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use DB;
use \stdClass;
use App\Classes\Tork\FileManager;


class SliderController extends Controller
{
     /**
      * Display a listing of the resource.
      *
      * @return \Illuminate\Http\Response
      */
     function __construct()
     {
          $this->middleware('permission:slider-view|slider-create|slider-update|slider-delete', ['only' => ['index']]);
          $this->middleware('permission:slider-create', ['only' => ['create', 'store']]);
          $this->middleware('permission:slider-update', ['only' => ['edit', 'update']]);
          $this->middleware('permission:slider-delete', ['only' => ['destroy']]);
          $this->model = 'App\Slider';
          $this->key_word = 'Slider';
          $this->key_word_plural = 'Sliders';
          $this->route_index = 'admin.sliders.index';
          $this->route_create = 'admin.sliders.create';
          $this->route_edit = 'admin.sliders.edit';
          $this->route_update = 'admin.sliders.update';
          $this->route_destroy = 'admin.sliders.destroy';
          $this->route_store = 'admin.sliders.store';

          $this->input_password = [];
          $this->update_input_password = [];
          $this->input_image = ['banner'];
          $this->update_input_image = ['banner'];
          $this->multiple_select = ['category'];
          $this->update_multiple_select = ['category'];
          $this->except_columns = ['_token', 'banner', 'category'];
          $this->update_except_columns = ['_token', 'banner', 'category'];

          $this->validation_rules = [
               'title' => 'required',
          ];
          $this->update_validation_rules = [
               'title' => 'required',
          ];
          $this->update_validation_rules_for_unique = [];

          $this->table_columns = [
               [
                    "title" => 'Serial',
                    "index" => 'serial',
                    "design" => '1'
               ],
               [
                    "title" => 'Banner',
                    "image" => 'banner',
                    "design" => '11'
               ],
               [
                    "title" => 'Title/Type',
                    "index" => 'title',
                    "index_1" => 'slider_type',
                    "max_char" => 30,
                    "max_char" => 30,
                    "design" => '3'
               ],
               [
                    "title" => 'Button Text/Url',
                    "index" => 'button_text',
                    "index_1" => 'url',
                    "max_char" => 30,
                    "max_char_1" => 30,
                    "design" => '3'
               ],
               [
                    "title" => 'Status/Order',
                    "index" => 'is_active',
                    "index_1" => 'order',
                    "design" => '5_2'
               ],
               [
                    "title" => 'Actions',
                    "show_route" => $this->route_index,
                    "edit_route" => $this->route_edit,
                    "destroy_route" => $this->route_destroy,
                    "design" => '2',
               ],
          ];

          $this->form_inputs = [
               [
                    "title" => 'Title:',
                    "placeholder" => 'Enter Title',
                    "name" => 'title',
                    "required" => '',
                    "design" => '1'
               ],
               [
                    "title" => 'Banner:',
                    "id" => 'banner',
                    "sample_image" => 'media/sample/slider.jpg',
                    "sample_image_width" => '160px',
                    "sample_image_height" => '120px',
                    "name" => 'banner',
                    "design" => '3'
               ],
               [
                    "title" => 'Type:',
                    "name" => 'slider_type_id',
                    "index" => 'title',
                    "data" => ModelData('App\SliderType'),
                    "required" => '',
                    "design" => '6',
               ],
               [
                    "title" => 'Category:',
                    "name" => 'category[]',
                    "index" => 'title',
                    "data" => ModelData('App\SliderType'),
                    "required" => '',
                    "design" => '10',
               ],
               [
                    "title" => 'Url:',
                    "placeholder" => 'Enter Url',
                    "name" => 'url',
                    "design" => '1'
               ],
               [
                    "title" => 'Button Text:',
                    "placeholder" => 'Enter Button Text',
                    "name" => 'button_text',
                    "design" => '1'
               ],
               [
                    "title" => 'Order:',
                    "placeholder" => 'Enter Order',
                    "name" => 'order',
                    "type" => 'number',
                    "design" => '1'
               ],
               [
                    "title" => 'Is Active:',
                    "name" => 'is_active',
                    "checked" => '',
                    "design" => '5'
               ],

          ];

          $this->update_form_inputs = [
               [
                    "title" => 'Title:',
                    "placeholder" => 'Enter Title',
                    "name" => 'title',
                    "required" => '',
                    "update" => '',
                    "design" => '1'
               ],
               [
                    "title" => 'Banner:',
                    "id" => 'banner',
                    "sample_image" => 'media/sample/slider.jpg',
                    "sample_image_width" => '120px',
                    "sample_image_height" => '120px',
                    "name" => 'banner',
                    "update" => '',
                    "design" => '3'
               ],
               [
                    "title" => 'Type:',
                    "name" => 'slider_type_id',
                    "index" => 'title',
                    "data" => ModelData('App\SliderType'),
                    "required" => '',
                    "update" => '',
                    "design" => '6',
               ],
               [
                    "title" => 'Category:',
                    "name" => 'category[]',
                    "index" => 'title',
                    "data" => ModelData('App\SliderType'),
                    "required" => '',
                    "update" => '',
                    "design" => '10',
               ],

               [
                    "title" => 'Url:',
                    "placeholder" => 'Enter Url',
                    "name" => 'url',
                    "update" => '',
                    "design" => '1'
               ],
               [
                    "title" => 'Button Text:',
                    "placeholder" => 'Enter Button Text',
                    "name" => 'button_text',
                    "update" => '',
                    "design" => '1'
               ],
               [
                    "title" => 'Order:',
                    "placeholder" => 'Enter Order',
                    "name" => 'order',
                    "type" => 'number',
                    "update" => '',
                    "design" => '1'
               ],
               [
                    "title" => 'Is Active:',
                    "name" => 'is_active',
                    "checked" => '',
                    "update" => '',
                    "design" => '5'
               ],

          ];
     }


     /**
      * Display a listing of the resource.
      *
      * @return \Illuminate\Http\Response
      */
     public function index(Request $request)
     {

          $page_title = $this->key_word;
          $info = new stdClass();
          $info->title = $this->key_word_plural;
          $info->first_button_title = 'Add ' . $this->key_word;
          $info->first_button_route = $this->route_create;
          $info->description = 'These  all are ' . $this->key_word_plural;

          $perPage = request('perPage', 20);

          $data = app($this->model)->join('slider_types', 'sliders.slider_type_id', 'slider_types.id')->select('sliders.*', 'slider_types.title as slider_type')->orderBy('id', 'DESC')->paginate($perPage);


          $info->table_columns = $this->table_columns;

          return view('admin._cruds._index', compact('page_title', 'data', 'info'))->with('i', ($request->input('page', 1) - 1) * $perPage);
     }


     /**
      * Show the form for creating a new resource.
      *
      * @return \Illuminate\Http\Response
      */
     public function create()
     {

          $page_title = $this->key_word;
          $info = new stdClass();
          $info->title = $this->key_word_plural;
          $info->first_button_title = 'All ' . $this->key_word;
          $info->first_button_route = $this->route_index;
          $info->form_route = $this->route_store;

          $info->form_inputs = $this->form_inputs;
          return view('admin._cruds._create', compact('page_title', 'info'));
     }


     /**
      * Store a newly created resource in storage.
      *
      * @param  \Illuminate\Http\Request  $request
      * @return \Illuminate\Http\Response
      */
     public function store(Request $request)
     {


          $this->validate($request, $this->validation_rules);

          $row = app($this->model)->create($request->except($this->except_columns));

          foreach ($this->input_password as $input) {
               $row->{$input} = Hash::make($request->{$input});
          }

          foreach ($this->input_image as $input) {

               $file_input = $input;
               $id = app($this->model)->max('id') + 1;
               $file = $request->file($file_input);
               $file_name = $file_input . '_' . $id;
               $directory = $this->key_word_plural;


               if ($file != '') {
                    $row->{$file_input} = FileManager::SaveFile($file, $file_name, $directory);
               } else {
                    if ($request->{'old_' . $file_input} != '') {
                         $row->{$file_input} = $request->{'old_' . $file_input};
                    }
               }
          }



          foreach ($this->multiple_select as $input) {
               $row->{$input} = serialize($request->{$input});
          }

          $row->save();

          return redirect()->route($this->route_index)
               ->with('success', $this->key_word . ' created successfully');
     }
     /**
      * Display the specified resource.
      *
      * @param  int  $id
      * @return \Illuminate\Http\Response
      */
     public function show($id)
     {
          return redirect()->route($this->route_index);
     }


     /**
      * Show the form for editing the specified resource.
      *
      * @param  int  $id
      * @return \Illuminate\Http\Response
      */
     public function edit($id)
     {

          $page_title = $this->key_word;
          $info = new stdClass();
          $info->title = $this->key_word_plural;
          $info->first_button_title = 'Add ' . $this->key_word;
          $info->first_button_route = $this->route_create;
          $info->second_button_title = 'All ' . $this->key_word;
          $info->second_button_route = $this->route_index;
          $info->form_route = $this->route_update;

          $data = app($this->model)->where('id', $id)->first();

          $info->form_inputs = $this->update_form_inputs;

          return view('admin._cruds._edit', compact('page_title', 'info', 'data'))->with('id', $id);
     }


     /**
      * Update the specified resource in storage.
      *
      * @param  \Illuminate\Http\Request  $request
      * @param  int  $id
      * @return \Illuminate\Http\Response
      */
     public function update(Request $request, $id)
     {

          $update_validation_rules = $this->update_validation_rules;

          foreach ($this->update_validation_rules_for_unique as $key => $value) {
               array_merge($update_validation_rules, array($key => $value . ',' . $id));
          }


          $this->validate($request, $update_validation_rules);


          $row = app($this->model)->find($id);
          $row->fill($request->except($this->update_except_columns));


          foreach ($this->update_input_password as $input) {
               $row->{$input} = Hash::make($request->{$input});
          }

          foreach ($this->update_input_image as $input) {

               $file_input = $input;
               $file = $request->file($file_input);
               $file_name = $file_input . '_' . $id;
               $directory = $this->key_word_plural;


               if ($file != '') {
                    $row->{$file_input} = FileManager::SaveFile($file, $file_name, $directory);
               } else {
                    if ($request->{'old_' . $file_input} != '') {
                         $row->{$file_input} = $request->{'old_' . $file_input};
                    }
               }
          }

          foreach ($this->update_multiple_select as $input) {
               $row->{$input} = serialize($request->{$input});
          }

          $row->save();


          return redirect()->route($this->route_index)
               ->with('success', $this->key_word . ' updated successfully');
     }
     /**
      * Remove the specified resource from storage.
      *
      * @param  int  $id
      * @return \Illuminate\Http\Response
      */
     public function destroy($id)
     {

          app($this->model)->where('id', $id)->delete();
          return redirect()->route($this->route_index)
               ->with('success', $this->key_word . ' deleted successfully');
     }
}