<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Property;
use App\Models\Property_product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function show()
    {
        $productArr = array();
        $data=array();
        $products = Product::join('colors','products.colors_id','=','colors.id')
            ->join('subcategories','products.subcategory_id','=','subcategories.id')
            ->join('brands','products.brands_id','=','brands.id')
            ->join('product_status','products.status_id','=','product_status.id')
             ->get(['products.*','colors.name as color','subcategories.name as subcategory(zirdaste)',
             'brands.name as brand','product_status.name as status'
        ]);
        $productArr=$products;
        $i = 0;
        foreach ($products as $pro){

            $property_products = Property_product::query()->where('product_id','=',$pro->property_id)
                ->get();

                $productArr[$i]['$property_products'] = $property_products;

            $i++;
        }


        $data = $productArr;
        return response()->json([$data],200);



    }

}
