<?php

namespace App\Http\Controllers;


use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function show()
    {
        $user = User::all();
        return response()->json([$user],200);

    }

    public function login(Request $request)
    {
        $users = array();
        $users = User::all();
        //if user wanted login with mobile ans sms code
        if ($request->type == 'mobile' && $request->get(''))

    }
}
