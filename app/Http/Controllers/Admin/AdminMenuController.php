<?php

namespace App\Http\Controllers\Admin;

use DB;
use \stdClass;
use Illuminate\Http\Request;
use App\Classes\Tork\FileManager;
use App\CrudColumn;
use App\CrudInput;
use App\Http\Controllers\Controller;

class AdminMenuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    function __construct()
    {
        $this->model = 'App\AdminMenu';
        $this->key_word = 'Admin Menu';
        $this->key_word_plural = 'Admin Menus';
        $this->route_index = 'admin.admin-menus.index';
        $this->route_create = 'admin.admin-menus.create';
        $this->route_edit = 'admin.admin-menus.edit';
        $this->route_update = 'admin.admin-menus.update';
        $this->route_destroy = 'admin.admin-menus.destroy';
        $this->route_store = 'admin.admin-menus.store';

        $this->validation_rules = [];
        $this->except_columns = [];
        $this->input_password = [];
        $this->input_image = [];
        $this->multiple_select = [];

        $this->form_inputs = [
            [
                "title" => 'Title:',
                "placeholder" => 'Enter Title',
                "name" => 'title',
                "required" => '',
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
    }

    public function index(Request $request)
    {

        $page_title = $this->key_word;
        $info = new stdClass();
        $info->title = $this->key_word_plural;
        $info->first_button_title = 'Add ' . $this->key_word;
        $info->first_button_route = $this->route_create;
        $info->description = 'These  all are ' . $this->key_word_plural;
        $info->menus = app($this->model)->orderBy('order', 'ASC')->get()->groupBy('parent_id');
        // return dd($info->menus[""]);


        return view('admin.admin-menus.index', compact('page_title', 'info'));
    }

    public function saveNestedMenus(Request $request)
    {
        $simplified_list = [];
        $this->recur1($request->nested_menus_array, $simplified_list);

        foreach ($simplified_list as $k => $v) {
            $menu = app($this->model)->find($v['menu_id']);
            $menu->fill([
                "parent_id" => $v['parent_id'],
                "order" => $v['order'],
            ]);

            $menu->save();
        }
        return "success";
    }

    public function recur1($nested_array = [], &$simplified_list = [])
    {

        static $counter = 0;

        foreach ($nested_array as $k => $v) {

            $order = $k + 1;
            $simplified_list[] = [
                "menu_id" => $v['id'],
                "parent_id" => 0,
                "order" => $order
            ];

            if (!empty($v["children"])) {
                $counter += 1;
                $this->recur2($v['children'], $simplified_list, $v['id']);
            }
        }
    }

    public function recur2($sub_nested_array = [], &$simplified_list = [], $parent_id = NULL)
    {

        static $counter = 0;

        foreach ($sub_nested_array as $k => $v) {

            $order = $k + 1;
            $simplified_list[] = [
                "menu_id" => $v['id'],
                "parent_id" => $parent_id,
                "order" => $order
            ];

            if (!empty($v["children"])) {
                $counter += 1;
                return $this->recur2($v['children'], $simplified_list, $v['id']);
            }
        }
    }

    public function create()
    {

        $page_title = $this->key_word;
        $info = new stdClass();
        $info->title = $this->key_word_plural;
        $info->first_button_title = 'All ' . $this->key_word;
        $info->first_button_route = $this->route_index;
        $info->form_route = $this->route_store;

        $info->form_inputs = $this->form_inputs;

        return view('admin.admin-menus.create', compact('page_title', 'info'));
    }


    public function store(Request $request)
    {
        $this->validate($request, $this->validation_rules);

        $crud = new \App\Crud();
        $crud->resource_path = $request->resource_path;
        $crud->resource_path = $request->resource_path;
        $crud->controller = $request->controller;
        $crud->model = $request->model;
        $crud->data_table = $request->data_table;
        $crud->permission = $request->permission;
        $crud->crud_key_word = $request->crud_key_word;
        $crud->crud_key_word_plural = $request->crud_key_word_plural;
        $crud->save();
        $this->createCrudDesign($request, $crud);
        $row = new \App\AdminMenu();
        $row->crud_id = $crud->id;
        $row->title = $request->title;
        $row->url = $request->resource_path;
        $row->icon = $request->icon;
        $row->is_newtab = $request->is_newtab;
        $row->bullet = $request->bullet;
        $row->save();
        app(\App\Http\Controllers\Admin\CrudController::class)->create($row->crud_id);

        if ($request->dynamic_migration == "1") {
            $this->createTable($request);
        }

        return redirect()->route($this->route_index)
            ->with('success', $this->key_word . ' created successfully');
    }

    public function show()
    {
        //
    }

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

        $data = app($this->model)->leftJoin('cruds', 'admin_menus.crud_id', 'cruds.id')->where('admin_menus.id', $id)->first();

        //  if ($data->crud_id!='') {
        //      return redirect()->route('admin.create-crud',$data->crud_id);
        //  }

        return view('admin.admin-menus.edit', compact('page_title', 'info', 'data'))->with('id', $id);
    }

    public function update(Request $request, $id)
    {
        dd($request->all());
        $row = app($this->model)->find($id);
        $row->title = $request->title;
        $row->url = $request->resource_path;
        $row->icon = $request->icon;
        $row->is_newtab = $request->is_newtab;
        $row->bullet = $request->bullet;
        $row->save();

        $crud = app('App\Crud')->find($row->crud_id);
        $crud->resource_path = $request->resource_path;
        $crud->resource_path = $request->resource_path;
        $crud->controller = $request->controller;
        $crud->model = $request->model;
        $crud->data_table = $request->data_table;
        $crud->permission = $request->permission;
        $crud->crud_key_word = $request->crud_key_word;
        $crud->crud_key_word_plural = $request->crud_key_word_plural;
        $crud->save();

        app(\App\Http\Controllers\Admin\CrudController::class)->create($row->crud_id);

        if ($request->dynamic_migration == "1") {
            \Illuminate\Support\Facades\Schema::dropIfExists($request->data_table);
            $this->createTable($request);
        }

        return redirect()->route($this->route_index)
            ->with('success', $this->key_word . ' updated successfully');
    }

    public function destroy($id)
    {
        //
    }

    /**
     * this method make dynamic table
     *
     * @param  \Illuminate\Http\Request $request
     * @return bool true|false
     */
    public function createTable(Request $request): bool
    {
        try {
            $data = [];
            $data_count = [
                'primary' => 0,
                'unique' => 0,
                'null' => 0,
            ];
            foreach ($request->primary as $primary) {
                $primary == 0 ? $data['primary'][$data_count['primary']] = 0 : $data['primary'][$data_count['primary'] - 1] = 1;
                $data_count['primary'] += $primary == 0 ? 1 : 0;
            }
            foreach ($request->unique as $unique) {
                $unique == 0 ? $data['unique'][$data_count['unique']] = 0 : $data['unique'][$data_count['unique'] - 1] = 1;
                $data_count['unique'] += $unique == 0 ? 1 : 0;
            }
            foreach ($request->null as $null) {
                $null == 0 ? $data['null'][$data_count['null']] = 0 : $data['null'][$data_count['null'] - 1] = 1;
                $data_count['null'] += $null == 0 ? 1 : 0;
            }
            \Illuminate\Support\Facades\Schema::create($request->data_table, function (\Illuminate\Database\Schema\Blueprint $table) use ($request, $data) {
                $cnt = 0;
                if (!in_array(1, $data["primary"])) {
                    $table->increments('id');
                    $cnt = 1;
                }
                if (count($request->column) > 0) {
                    foreach ($request->column as $index => $column) {
                        if (!empty($request->length[$index])) {
                            $table->{$request->type[$index]}($column, $request->length[$index]);
                        } else {
                            $table->{$request->type[$index]}($column);
                        }
                        if ($data['null'][$index] > 0) {
                            $table->getColumns()[$cnt]->nullable();
                        }
                        if ($data['unique'][$index] > 0) {
                            $table->getColumns()[$cnt]->unique();
                        }
                        if ($data['primary'][$index] > 0) {
                            $table->getColumns()[$cnt]->primary();
                        }
                        $cnt++;
                    }
                }
                $table->integer("order")->default(0);
                $table->boolean("is_active")->default(true);
                $table->unsignedBigInteger("created_by")->nullable();
                $table->unsignedBigInteger("updated_by")->nullable();
                $table->timestamps();
                $table->softDeletes();
            });
            // $temp_files = glob('../database/migrations/*');
            // foreach ($temp_files as $file) {
            //     unlink(realpath($file));
            // }
            // \Illuminate\Support\Facades\Artisan::call("migrate:generate --no-interaction");
            // \DB::table('migrations')->truncate();
            // $temp_files = glob('../database/migrations/*');
            // foreach ($temp_files as $file) {
            //     \DB::table('migrations')->insert([
            //         "migration" => basename($file),
            //         'batch' => 1
            //     ]);
            // }
        } catch (\Exception $e) {
            return false;
        }
        return true;
    }

    /**
     * createCrudDesign
     *
     * @param  \Illuminate\Http\Request $request
     * @param  \App\Crud $crud
     * @return bool
     */
    public function createCrudDesign(Request $request, \App\Crud $crud): bool
    {
        try {

            $is_addable_data = [];
            $data_count_add = 0;

            foreach ($request->is_addable as $is_addable) {
                $is_addable == 0 ? $is_addable_data[$data_count_add] = 0 : $is_addable_data[$data_count_add - 1] = 1;
                $data_count_add += $is_addable == 0 ? 1 : 0;
            }

            $is_updatable_data = [];
            $data_count = 0;

            foreach ($request->is_updatable as $is_updatable) {
                $is_updatable == 0 ? $is_updatable_data[$data_count] = 0 : $is_updatable_data[$data_count - 1] = 1;
                $data_count += $is_updatable == 0 ? 1 : 0;
            }

            foreach ($request->column_template as $index => $column) {
                $dataColumn = [];
                if ($column != "none") {
                    $dataColumn = [
                        "crud_id" => $crud->id,
                        "base_column_id" => $column,
                        "name" => $request->column[$index],
                        "params" => $request->column_params[$index]
                    ];
                } else {
                    $dataColumn = [
                        "crud_id" => $crud->id,
                        "base_column_id" => null,
                        "name" => $request->column[$index],
                        "params" => null
                    ];
                }
                $crudColumn = CrudColumn::create($dataColumn);
                $dataInput = [
                    "crud_id" => $crud->id,
                    "crud_column_id" => $crudColumn->id,
                    "base_input_id" => $request->input_template[$index],
                    "name" => $request->column[$index],
                    "params" => $request->input_params[$index],
                    "is_updatable" => $is_updatable_data[$index],
                    "is_addable" => $is_addable_data[$index],
                ];
                CrudInput::create($dataInput);
            }
        } catch (\Exception $e) {
            return false;
        }
        return true;
    }
}
