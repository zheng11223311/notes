<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ShowProfile extends Controller
{
 
    public function __invoke($id)
    {
        dd($id);
    }
}
