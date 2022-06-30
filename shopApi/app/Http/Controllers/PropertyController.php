<?php

namespace App\Http\Controllers;

use App\Models\Property;
use Illuminate\Http\Request;

class PropertyController extends Controller
{
    public function show()
    {
        $properties = Property::all();
        return response()->json([$properties],200);

    }

}
