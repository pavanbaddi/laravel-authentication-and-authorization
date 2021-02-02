<?php

namespace App\Http\Middleware;

use Illuminate\Auth\Middleware\Authenticate as Middleware;
use Closure;
use Illuminate\Support\Facades\Auth;

class GuardAuth extends Middleware
{ 
    
    public function handle($request, Closure $next, ...$guards)
    {

        $guards = config( 'auth.guards' );

        foreach( $guards as $guard => $guard_arr ){
            if( Auth::guard( $guard )->check() ){
                Auth::shouldUse( $guard );
            }
        }

        if( !Auth::check() ){
            return redirect( route('login') );
        }
        
        return $next($request);
    }

}
