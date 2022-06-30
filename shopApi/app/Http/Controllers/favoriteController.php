<?php

namespace App\Http\Controllers;




use App\Models\favorite;
use App\Models\User;
use Illuminate\Http\Request;

class favoriteController extends Controller
{

    public function show(Request $request)
    {
        $user = User::query()->where('token','=',$request->get('token'))->first();
       $favorites = favorite::query()->where('user_id','=',$user->id)
           ->join('products','favorites.product_id','=','products.productID')
           ->join('users','favorites.user_id','=','users.id')
           ->get(['favorites.*','products.name as product_name','users.name as user_name']);

//        $favorite_item = favorite::join('users','favorites.user_id',$user->id)
//            ->get(['favorites.*']);
        return response()->json([$favorites],200);





    }

}
