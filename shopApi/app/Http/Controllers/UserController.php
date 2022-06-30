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
        //if user wanted login with mobile and sms code OR with mobile and password
        if ($request->type == 'mobile' and $request->get('mobile')!=null){
            $users = User::query()->where('mobile',$request->get('mobile'))->first();
            if (($users->code_confirme!=null and $users->code_confirme == $request->get('code_confirme')) ||
                 $users->password == $request->get('password'))
            {
                echo "welcome";
            }
            else{
                echo "error";
            }

        }
        //if user wanted to login with email and password
        elseif ($request->type == 'email' and $request->get('email') !=null){
            $users = User::query()->where('email',$request->get('email'))->first();
            if ($users->password == $request->get('password')){
                echo "welcome";
            }
            else{
                echo "error";
            }

        }




    }


    public function register()
    {


    }
}
