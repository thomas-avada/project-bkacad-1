<?php
namespace App\Controllers\Admin;

use App\Model\Brand;
use App\Core\Facade\Validator;

class BrandController extends AdminController
{
	public function index()
	{
	    $brands = Brand::adminFilter(request()->all())->get();
		$count = Brand::adminFilter(request()->all(), true)->count();
		$pagination = [
            'last' => ceil($count / 10)
        ];
		$filters = array_merge([
            'page' => 1,
            'direction' => 'asc',
            'order' => 'id'
        ], request()->all());
		return view('admin/brands', [
			'brands' => $brands,
			'pagination' => $pagination,
			'filters' => $filters
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
		$validation = Validator::make(request()->all(), [
            'brand_name' => 'required'
        ]);
        $validation->validate();
        
        if ($validation->fails()) {
            flash()->error($validation->errors()->all());
            return redirect()->back();
        }

		$brand = Brand::insert([
			'brand_name' => request('brand_name')
		])->execute();

		if($brand){
			if(request()->get('back')){
				flash()->success('New brand created successfully');
				return redirect()->back();
			}
			flash()->success('New brand created successfully');
			return redirect()->toRoute('admin/brands');
		}
		flash()->error('Something went wrong');
		return redirect()->toRoute('admin/brands');
	}

	public function edit()
	{
		if(!request('id')){
			return redirect()->toRoute('admin/brands');
		}
		$brand = Brand::loadForEdit(request('id'));
		if(!$brand){
			flash()->error('Brand does not exist');
			return redirect()->toRoute('admin/brands');
		}
		$back = request()->getHttpReferer();
		return view('admin/brand-edit', compact('brand', 'back'));
	}

	public function update()
	{
		if(!request('id')){
			return redirect()->toRoute('admin/brands');
		}

		$validation = Validator::make(request()->all(), [
            'brand_name' => 'required'
        ]);
        $validation->validate();
        
        if ($validation->fails()) {
            flash()->error($validation->errors()->all());
            return redirect()->back();
        }

		$updated = Brand::update([
			'Brand_name' => request('brand_name'),
		])
		->where('id', request('id'))
		->execute();

		if($updated){
			if(request()->get('back')){
				flash()->success('Brand updated successfully');
				return redirect()->back();
			}
			flash()->success('Brand updated successfully');
			return redirect()->toRoute('admin/brands');
		}
		flash()->error('Something went wrong');
		return redirect()->toRoute('admin/brands');
	}

	public function delete()
	{
		$id = request('id');
		if($id){
			$deleted = Brand::destroy($id);
			if($deleted){
				flash()->success("The brand with id: $id has been deleted");
        		return redirect()->toRoute('admin/brands');
			}
			flash()->error('You cannot delete the brand');
        	return redirect()->toRoute('admin/brands');
		}
		flash()->error('Something went wrong');
        return redirect()->toRoute('admin/brands');
	}
}