<?php
namespace App\Controllers\Admin;

use App\Model\Category;

class CategoryController extends AdminController
{
	public function index()
	{
		$categories = Category::adminFilter(request()->all())->get();

		$count = Category::adminFilter(request()->all(), true)->count();
		$pagination = [
            'last' => ceil($count / 10)
        ];
		$filters = array_merge([
            'page' => 1,
            'direction' => 'asc',
            'order' => 'id'
        ], request()->all());
		return view('admin/categories', [
			'categories' => $categories,
			'pagination' => $pagination,
            'filters' => $filters
		]);
	}

	public function create()
	{
		$back = request()->getHttpReferer();
		return view('admin/category-create', [
			'back' => $back
		]);
	}

	public function store()
	{
		$validation = Validator::make(request()->all(), [
            'category_name' => 'required'
        ]);
        $validation->validate();
        
        if ($validation->fails()) {
            flash()->error($validation->errors()->all());
            return redirect()->back();
        }

		$category = Category::insert([
			'category_name' => request('category_name')
		])->execute();

		if($category){
			if(request()->get('back')){
				flash()->success('New category created successfully');
				return redirect()->back();
			}
			flash()->success('New category created successfully');
			return redirect()->toRoute('admin/categories');
		}
		flash()->error('Something went wrong');
		return redirect()->toRoute('admin/categories');
	}

	public function edit()
	{
		if(!request('id')){
			return redirect()->toRoute('admin/categories');
		}
		$category = Category::loadForEdit(request('id'));
		if(!$category){
			flash()->error('Category does not exist');
			return redirect()->toRoute('admin/categories');
		}
		$back = request()->getHttpReferer();
		return view('admin/category-edit', compact('category', 'back'));
	}

	public function update()
	{
		if(!request('id')){
			return redirect()->toRoute('admin/categories');
		}
		$updated = Category::update([
			'category_name' => request('category_name'),
		])->where('id', request('id'))
		->execute();
		if($updated){
			if(request()->get('back')){
				flash()->success('Category updated successfully');
				return redirect()->back();
			}
			flash()->success('Category updated successfully');
			return redirect()->toRoute('admin/categories');
		}
		flash()->error('Something went wrong');
		return redirect()->toRoute('admin/categories');
	}

	public function delete()
	{
		$id = request('id');
		if($id){
			$deleted = Category::destroy($id);
			if($deleted){
				flash()->success("The category with id: $id has been deleted");
        		return redirect()->toRoute('admin/categories');
			}
			flash()->error('You cannot delete the category');
        	return redirect()->toRoute('admin/categories');
		}
		flash()->error('Something went wrong');
        return redirect()->toRoute('admin/categories');
	}
}