<?php

namespace App\Http\Controllers;

use App\Apply;
use App\Country;
use App\job;
use App\skills;
use App\User;
use App\User_skills;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rule;

class profile extends Controller
{

    public function __construct()
    {
        // $this->middleware('auth');
        // $user_skills = User::with('skills')->find(Auth::id());
        // foreach ($user_skills->skills as $user_skills) {
        //    $user_skills = $user->skills->name;
        // }
    }

    public function view($id)
    {
        $user = user::with('skills')->find($id);
        return $user;
    }

    public function view_jobs()
    {

        $jobs = Job::withCount('apply')->with('user')->where('user_id', Auth('api')->id())->get();
        return $jobs;
    }

    public function edit()
    {
        $user = User::with('skills')->find(Auth('api')->id());
        $countries = Country::all();
        $skills = skills::all();
        // return compact('user', 'countries', 'skills');
        return ['user' => $user, 'countries' => $countries, 'skills' => $skills];

    }

    public function update(Request $request, User $user)
    {

        // return $request
        $rules = [
            'first_name' => 'required|min:3|max:20',
            'last_name' => 'required|min:3|max:20',
            'email' => ['required', Rule::unique('users')->ignore($request->id)],
            'phone' => 'required',
            'country' => 'required',
            'job' => 'required',
            'about' => 'required',
            'skills' => 'required',
        ];

        $validator = \Validator::make($request->all(), $rules);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        } else {

            $user_id = Auth('api')->id();
            // picture
            $user = User::find($user_id);
            $user->first_name = $request->first_name;
            $user->last_name = $request->last_name;
            $user->email = $request->email;
            $user->phone = $request->phone;
            $user->about = $request->about;
            $user->gender = $request->gender;
            $user->job = $request->job;
            $user->country = $request->country;
            // $user->save();
            // save skills
            // if (!empty($request->skills)) {
            //     $data = [];
            //     foreach($request->skills as $skill){
            //       $data[] = [
            //         'skill_id' => $skill,
            //         'user_id'  => Auth('api')->id(),
            //       ];
            //     }
            //     user_skills::insert($data);
            // }

            // $data = [];
            // foreach ($user->skills as $skill) {
            //   $data[] = $skill->id;
            // }
            // return $request->skills;

            // save skills
            if ($request->skills && !empty($request->skills)) {
                User_skills::where('user_id', $user_id)->delete(); // delete old skills first
                $data = [];
                $x = explode(',', $request->skills);
                foreach ($x as $skill) {
                    $data[] = [
                        'skill_id' => $skill,
                        'user_id' => Auth('api')->id(),
                    ];
                }
                user_skills::insert($data); // insert new skills
            }

            // picture
            if (!empty($request->file('avatar'))) {
                $path = $request->file('avatar')->store('/public/users');
                $path = str_replace('public', '/storage', $path);
                $user->avatar = $path;
            }

            if (Hash::check($request->confirm_password, Auth('api')->user()->password)) {
                $user->save();
                return response()->json(['msg' => 'user updated successfuly'], 200);
            } else {
                return response()->json(['errors' => 'Check Your Password Again!'], 422);
            }
        }
    }

    public function updatepic(Request $request, $id)
    {
        $this->validate($request, [
            'avatar' => 'required|file|image|mimes:jpeg,png,gif,webp,jpg|max:2048',
        ]);

        // picture
        $user = User::find(Auth('api')->id());
        $path = $request->file('avatar')->store('public/users');
        $path = str_replace('public', '/storage', $path);
        $user->avatar = $path;

        $user->save();
        return redirect()->back()->with('msg', 'Picture <b>Updated</b> Successfuly');
    }

    public function changepasswordview()
    {
        return view('profile.change_password');
    }

    public function changePasswordProcess(Request $request)
    {
        $this->validate($request, [
            'password' => 'required',
            'newpassword' => 'required',
            'confirm_password' => 'same:newpassword',
        ]);
        $user = User::find(Auth::id());
        $user->password = bcrypt($request->newpassword);

        if (Hash::check($request->password, Auth::user()->password)) {
            $user->save();
            session()->flash('msg', 'Password Changed Successfuly');
        } else {
            session()->flash('pass', 'Current password is wrong');
        }

        return redirect()->back()->with('msg', 'Password Changed Successfuly');
    }

    public function applyments($id)
    {

        // $job   = Job::with('apply')->with('user')->where('id', $id)->first();

        $apply = Apply::with('user')->with('job')->where('job_id', $id)->get();
        return $apply;
    }

    public function download($id)
    {
        $avatar = User::find($id)->avatar;
        // return Storage::download($avatar);
        return response()->download(public_path($avatar), 'image.jpg');
    }
}