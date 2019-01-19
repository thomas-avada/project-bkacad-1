<?php
namespace App\Controllers\Admin;

use App\Model\Brand;

class BrandController extends AdminController
{
	public function index()
	{
	    $brands = Brand::adminFilter(request()->all())->get();
		$count = Brand::adminFilter(request()->all())->count();
		$pagination = [
            'last' => ceil($count / 10)
        ];
		// dd($brands);
		return view('admin/brands', [
			'brands' => $brands,
			'pagination' => $pagination,
			'page' => request('page'),
            'order' => request('order'),
            'direction' => request('direction')
		]);
	}

	public function create()
	{
		$back = request()->getHttpReferer();
		return view('admin/brand-create', [
			'back' => $back
		]);
	}

	public function store()
	{

		Brand::insert([
			'brand_name' => request('brand_name')
		])->execute();

		if(request()->get('back')){
			return redirect()->back();
		}
		return redirect()->toRoute('admin/brands');
	}

	public function edit()
	{
		
		// dd($product);
		if(!request('id')){
			return redirect()->toRoute('admin/brands');
		}
		$brand = Brand::loadForEdit(request('id'));

		$back = request()->getHttpReferer();
		return view('admin/brand-edit', compact('brand', 'back'));
	}

	public function update()
	{
		if(!request('id')){
			return redirect()->toRoute('admin/brands');
		}

		Brand::update([
			'Brand_name' => request('brand_name'),
		])
		->where('id', request('id'))
		->execute();

		if(request()->get('back')){
			return redirect()->back();
		}
		return redirect()->toRoute('admin/brands');

	}

	public function delete()
	{
		$id = request('id');
		if($id){
			Brand::destroy($id);
			flash()->success("The brand with id: $id has been deleted");
        	return redirect()->toRoute('admin/brands');
		}
		flash()->error('Something went wrong');
        return redirect()->toRoute('admin/brands');
	}
}