<?php
namespace App\Controllers\Admin;

use App\Model\Product;
use App\Model\Brand;
use App\Model\Category;
use Ausi\SlugGenerator\SlugGenerator;
use App\Core\Facade\Validator;

class ProductController extends AdminController
{
	public function index()
	{
		$products = Product::adminFilter(request()->all())->get();
		$count = Product::adminFilter(request()->all(), true)->count();
		$pagination = [
            'last' => ceil($count / 10)
        ];
        $filters = array_merge([
        	'page' => 1,
        	'direction' => 'asc',
        	'order' => 'product_id'
        ], request()->all());
		return view('admin/products', [
			'products' => $products, 
			'pagination' => $pagination,
			'filters' => $filters
		]);
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
		$validation = Validator::make(request()->all(), [
            'product_name' => 'required',
			'price' => 'required|numeric',
			'quantity' => 'required|numeric'
        ]);
        $validation->validate();
        
        if ($validation->fails()) {
            flash()->error($validation->errors()->all());
            return redirect()->back();
        }

		$generator = new SlugGenerator;

		$data = [
			'product_name' => request('product_name'),
			'slug' => $generator->generate(request('product_name')),
			'description' => request('description'),
			'rich_description' => request('rich_description'),
			'category_id' => request('category'),
			'brand_id' => request('brand'),
			'price' => request('price'),
			'status' => request('status'),
			'quantity' => request('quantity'),
			'gender' => request('gender'),
			'featured' => request('featured')
		];

		if(request()->hasFile('product_img')){
			$data['img'] = request()->store('product_img');
		}

		if(request()->hasFile('product_images')){
			$images = [];
			foreach (request()->file('product_images')['name'] as $index => $value) {
				$images[] = request()->store('product_images', $index);
			}
			$data['images'] = json_encode($images);
		}


		$product = Product::insert($data)->execute();

		if(request()->get('back')){
			return redirect()->toRoute("admin/product/edit?id=$product");
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
		$product = Product::loadForEdit(request('id'));
		if(!$product){
			flash()->error('Product does not exist');
			return redirect()->toRoute('admin/products');
		}
		$categories = Category::select()->get();
		$brands = Brand::select()->get();
		

		$back = request()->getHttpReferer();
		return view('admin/product-edit', compact('product', 'categories', 'brands', 'back'));
	}

	public function update()
	{
		if(!request('id')){
			return redirect()->toRoute('admin/products');
		}

		$validation = Validator::make(request()->all(), [
            'product_name' => 'required',
			'price' => 'required|numeric',
			'quantity' => 'required|numeric'
        ]);
        $validation->validate();
        
        if ($validation->fails()) {
            flash()->error($validation->errors()->all());
            return redirect()->back();
        }

		$currentProduct = Product::select()->find(request('id'));
		$data = [
			'product_name' => request('product_name'),
			'description' => request('description'),
			'rich_description' => request('rich_description'),
			'category_id' => request('category'),
			'brand_id' => request('brand'),
			'price' => request('price'),
			'status' => request('status'),
			'quantity' => request('quantity')
		];
		if(request()->hasFile('product_img')){

			if(file_exists($currentProduct['img'])){
				unlink($currentProduct['img']);
			}
			
			$data['img'] = request()->store('product_img');
		}
		// dd($_FILES['product_images']['size'][0]);
		if(request()->hasFile('product_images')){
			foreach (json_decode($currentProduct['images']) as $image) {
				if(file_exists($image)){
					unlink($image);
				}
			}
			$images = [];
			foreach (request()->file('product_images')['name'] as $index => $value) {
				$images[] = request()->store('product_images', $index);
			}
			$data['images'] = json_encode($images);
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
			$deleted = Product::delete()->where('id', $id)->execute();
			if($deleted){
				flash()->success("The product with id: $id has been deleted");
        		return redirect()->toRoute('admin/products');
			}
			flash()->error('Something went wrong');
    		return redirect()->toRoute('admin/products');
		}
		flash()->error('Something went wrong');
        return redirect()->toRoute('admin/products');
	}
}