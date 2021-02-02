<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    public function index( Request $request ){

        // dd( Auth::user() ); 

        echo "You'r in Dashboard : ".Auth::user()->name."<br>";
        echo "<a href='".route('logout')."'>Logout</a>";

    }
}
