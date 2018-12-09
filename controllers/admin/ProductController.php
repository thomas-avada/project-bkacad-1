<?php
namespace App\Controllers\Admin;

use App\Model\Product;
use App\Model\Brand;
use App\Model\Category;

class ProductController extends AdminController
{
	public function index()
	{
		$page = 0;
		if(request()->has('page')){
			$page = request('page') -1 ;
		}
		$products = Product::getTenPerPage($page);
		// dd($products);
		return view('admin/products', compact('products'));
	}

	public function create()
	{
		$categories = Category::select()->get();
		$brands = Brand::select()->get();
		$back = request()->getHttpReferer();
		return view('admin/product-create', [
			'categories' => $categories,
			'brands' => $brands,
			'back' => $back
		]);
	}

	public function store()
	{
		// request()->store('product_img');
		// dd(request()->all());
		Product::insert([
			'product_name' => request('product_name'),
			'description' => request('description'),
			'category_id' => request('category'),
			'brand_id' => request('brand'),
			'price' => request('price'),
			'status' => request('status'),
			'img' => request()->store('product_img') ?: 'resoures/assets/img/default.jpg'
		])->execute();

		if(request()->get('back')){
			return redirect()->back();
		}
		return redirect()->toRoute('admin/products');
	}

	public function edit()
	{
		
		// dd($product);
		if(!request('id')){
			return redirect()->toRoute('admin/products');
		}
		// dd(request('id'));
		$categories = Category::select()->get();
		$brands = Brand::select()->get();
		$product = Product::loadForEdit(request('id'));

		$back = request()->getHttpReferer();
		return view('admin/product-edit', compact('product', 'categories', 'brands', 'back'));
	}

	public function update()
	{
		if(!request('id')){
			return redirect()->toRoute('admin/products');
		}
		$data = [
			'product_name' => request('product_name'),
			'description' => request('description'),
			'category_id' => request('category'),
			'brand_id' => request('brand'),
			'price' => request('price'),
			'status' => request('status'),
			'quantity' => request('quantity')
		];
		if(request()->hasFile('product_img')){
			$data['img'] = request()->store('product_img');
		}

		Product::update($data)
		->where('id', request('id'))
		->execute();

		if(request()->get('back')){
			return redirect()->back();
		}
		return redirect()->toRoute('admin/products');

	}

	public function delete()
	{
		$id = request('id');
		if($id){
			Product::destroy($id);
			flash()->success("The product with id: $id has been deleted");
        	return redirect()->toRoute('admin/products');
		}
		flash()->error('Something went wrong');
        return redirect()->toRoute('admin/products');
	}
}