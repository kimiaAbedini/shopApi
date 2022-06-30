<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Subcategory;
use Illuminate\Http\Request;

class SubcategoryController extends Controller
{
    public function show()
    {
        $subcategory = Subcategory::join('categories','subcategories.category_id','=','categories.id')
        ->get(['subcategories.*','categories.title as category_name']);
        return response()->json([$subcategory],200);


    }
}
