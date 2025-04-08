<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\Course;
use App\Skill;
use App\Teacher;
use App\Student;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use DB;

class TeacherRegister extends Controller
{
    
    
    public function teacherRegister(){
        $course = Course::get();
        $skill = Skill::get();
        return view('auth.teacherregister', compact('course', 'skill'));
    }
    public function studentRegister(){
        $course = Course::get();
        $skill = Skill::get();
        return view('auth.studentregister', compact('course', 'skill'));
    }
    public function teacherCreate(Request $request)
    {
       //dd($request->all());
        // echo "<pre>";
        // print_r($request->all());
        // echo "</pre>";
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:8',
            'gender' => 'required',
            'phone' => 'required',
            'experience' => 'required',
            'address' => 'required'
        ]);
        // die("<br>".__FILE__." => ".__LINE__);

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password)
        ]);

        $user_id = $user->id;
        $teacher = Teacher::create([
            'user_id' => $user_id,
            'gender ' => $request->gender,
            'phone' => $request->phone,
            'dateofbirth' => $request->dateofbirth,
            'current_address' => "".$request->address."",
            'permanent_address' => "".$request->address."",
            'experience' => $request->experience
        ]);
        // assign role to model, DB table=>model_has_roles
        $role_assign = DB::table('model_has_roles')->insert(['role_id' => 2, 'model_type' => 'App\User' ,'model_id' => $user_id]);
        if(\Auth::attempt($request->only('email','password'))){
            return redirect('/page/home');
        }
        return redirect('teacher-register')->withErrors('Error');
    }


    public function studentCreate(Request $request)
    {
        // echo "<pre>";
        // print_r($request->all());
        // echo "</pre>";
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:8',
            'gender' => 'required',
            'phone' => 'required',
            'dateofbirth' => 'required',
            'address' => 'required'
        ]);
        //die("<br>".__FILE__." => ".__LINE__);
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password)
        ]);
        $user_id = $user->id;
        $Student = Student::create([
            'user_id' => $user_id,
            'gender ' => $request->gender,
            'phone' => $request->phone,
            'dateofbirth' => $request->dateofbirth,
            'current_address' => "".$request->address."",
            'permanent_address' => "".$request->address.""
        ]);
        // assign role to model, DB table=>model_has_roles
        $role_assign = DB::table('model_has_roles')->insert(['role_id' => 4, 'model_type' => 'App\User' ,'model_id' => $user_id]);

        if(\Auth::attempt($request->only('email','password'))){
            return redirect('/page/home');
        }
        return redirect('student-register')->withErrors('Error');
    }
}
   
