<?php


namespace App\Http\Controllers\Admin;


use DB;
use \stdClass;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use App\Classes\Tork\FileManager;

class TableColumnController extends Controller
{

    function __construct()
    {
        $this->middleware('permission:tablecolumn-view|tablecolumn-create|tablecolumn-update|tablecolumn-delete', ['only' => ['index']]);
        $this->middleware('permission:tablecolumn-create', ['only' => ['create', 'store']]);
        $this->middleware('permission:tablecolumn-update', ['only' => ['edit', 'update']]);
        $this->middleware('permission:tablecolumn-delete', ['only' => ['destroy']]);
        $this->model = 'App\TableColumn';
        $this->key_word = 'TableColumn';
        $this->key_word_plural = 'TableColumns';
        $this->route_index = 'admin.tablecolumns.index';
        $this->route_create = 'admin.tablecolumns.create';
        $this->route_edit = 'admin.tablecolumns.edit';
        $this->route_update = 'admin.tablecolumns.update';
        $this->route_destroy = 'admin.tablecolumns.destroy';
        $this->route_store = 'admin.tablecolumns.store';

        $this->input_password = [];
        $this->update_input_password = [];
        $this->input_image = ['banner'];
        $this->update_input_image = [];
        $this->except_columns = ['_token'];
        $this->multiple_select = [];
        $this->update_multiple_select = [];
        $this->update_except_columns = ['_token'];

        $this->validation_rules = [];
        $this->update_validation_rules = [];
        $this->update_validation_rules_for_unique = [];

        $this->table_columns = [];

        $this->form_inputs = [];

        $this->update_form_inputs = [];
    }


    public function index(Request $request)
    {
        $data = app($this->model)->orderBy('id', 'DESC');
        $page_title = $this->key_word;
        $info = new stdClass();
        $info->title = $this->key_word_plural;
        $info->first_button_title = 'Add ' . $this->key_word;
        $info->first_button_route = $this->route_create;
        $info->description = 'These  all are ' . $this->key_word_plural;

        $perPage = request('perPage', 20);
        $data = $data->paginate($perPage);

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
