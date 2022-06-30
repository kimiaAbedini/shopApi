<?php

namespace App\Http\Controllers;

use App\Models\Address;
use App\Models\User;
use Illuminate\Http\Request;

class AddressController extends Controller
{
    public function show(Request $request)
    {
        $users = User::query()->where('token','=',$request->get('token'))->first();
        $address_user = Address::query()->where('user_id','=',$users->id)
            ->join('users','addresses.user_id','=','users.id')
            ->get(['addresses.*','users.name as user_name ','users.lastname as user_lastname']);


        return response()->json([$address_user],200);


    }
}
