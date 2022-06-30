<?php

namespace App\Http\Controllers;

use App\Models\Property_product;
use Illuminate\Http\Request;

class Property_ProductController extends Controller
{
    public function show()
    {
//        $properties = Property_product::all();

        $property_products = Property_product::join('properties','property_products.properties_id','=','properties.id')
            ->where('property_products.product_id','1')
            ->get(['property_products.*','properties.name']);

        return response()->json([$property_products],200);


    }
}
