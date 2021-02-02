<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function index( Request $request ){
        return view( 'login', [] );
    }

    public function verify( Request $request ){
        
        // dd( $request->all() );

        $query =  [
            'email' => $request->email,
            'password' => $request->password,
        ];

        $is_autheticated = false;
        if( Auth::guard( 'web' )->attempt( $query ) ){
            $is_autheticated = true;
            Auth::shouldUse( 'web' );
        }
        
        if( Auth::guard('admin')->attempt( $query ) ){
            $is_autheticated = true;
            Auth::shouldUse( 'admin' );
        }

        if( $is_autheticated ){
            // dd( Auth::user(), Auth::id() ); 

            $request->session()->regenerate();

            return redirect()->intended( route('dashboard') );
        }


        return redirect( route( 'login') );

        // if( Auth::attempt( [
            // 'email' => $request->email,
            // 'password' => $request->password,
        // ] ) ){

        // //    dd( Auth::user(), Auth::user()->id, Auth::id() );
            // $request->session()->regenerate();

            // return redirect()->intended( route('dashboard') );

        // } else {
        //     echo "User credentials are not valid.";
        // }

    }

    public function logout( Request $request ){
        Auth::logout();

        $request->session()->invalidate();

        $request->session()->regenerate();

        return redirect( route( 'login' ) );
    }
}
