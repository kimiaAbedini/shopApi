<?php

namespace App\Http\Controllers;

use App\Models\State;
use Illuminate\Http\Request;

class StateController extends Controller
{
    public function show()
    {
        $states = State::all();
        return response()->json([$states],200);

    }
}
