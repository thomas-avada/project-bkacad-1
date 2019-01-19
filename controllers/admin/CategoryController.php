<?php
namespace App\Controllers\Admin;

use App\Model\Category;

class CategoryController extends AdminController
{
	public function index()
	{
		$categories = Category::adminFilter(request()->all())->get();

		$count = Category::adminFilter(request()->all())->count();
		$pagination = [
            'last' => ceil($count / 10)
        ];
		// dd($categories);
		return view('admin/categories', [
			'categories' => $categories,
			'page' => request('page'),
			'pagination' => $pagination,
            'order' => request('order'),
            'direction' => request('direction')
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
		Category::insert([
			'category_name' => request('category_name')
		])->execute();

		if(request()->get('back')){
			return redirect()->back();
		}
		return redirect()->toRoute('admin/categories');
	}

	public function edit()
	{
		
		// dd($product);
		if(!request('id')){
			return redirect()->toRoute('admin/categories');
		}
		$category = Category::loadForEdit(request('id'));

		$back = request()->getHttpReferer();
		return view('admin/category-edit', compact('category', 'back'));
	}

	public function update()
	{
		if(!request('id')){
			return redirect()->toRoute('admin/categories');
		}

		Category::update([
			'category_name' => request('category_name'),
		])
		->where('id', request('id'))
		->execute();

		if(request()->get('back')){
			return redirect()->back();
		}
		return redirect()->toRoute('admin/categories');

	}

	public function delete()
	{
		$id = request('id');
		if($id){
			Category::destroy($id);
			flash()->success("The category with id: $id has been deleted");
        	return redirect()->toRoute('admin/categories');
		}
		flash()->error('Something went wrong');
        return redirect()->toRoute('admin/categories');
	}
}