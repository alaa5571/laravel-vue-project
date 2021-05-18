<?php

namespace App\Http\Controllers\Auth;

use App\User;
use Illuminate\Http\Request;
use App\Events\UserRegistered;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use App\Country;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/login';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

  
    protected function create(Request $request)
    {

        $rules = [
            'first_name' => 'required|min:3|max:20',
            'last_name'  => 'required|min:3|max:20',
            'email'      => 'required|email|unique:users',
            'password'   => 'required|min:6',
            'password_confirmation' => 'required|min:6|same:password'
            // 'phone'      => 'required|numeric',
            // 'role'       => 'required',
            // 'country'    => 'required',
        ]; 

        $validator = \Validator::make($request->all(), $rules);

        if ($validator->fails()) 
        {
          return response()->json(['errors'=>$validator->errors()], 422);
        }
        else 
        {         

            $user = User::create([
                'first_name' => $request['first_name'],
                'last_name'  => $request['last_name'],
                'email'      => $request['email'],
                'password'   => bcrypt($request['password']),
                // 'phone'      => $request['phone'],
                // 'role'       => $request['role'],
                // 'gender'     => $request['gender'],
                // 'country'    => $request['country'],
            ]);

            return response()->json("Success", 200);
        }
    }
}
