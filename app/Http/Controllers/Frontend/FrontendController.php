<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use App\Page;
use App\Teacher;
use App\Slider;
use Redirect;
class FrontendController extends Controller
{
    public function index(){
        return view('frontend.index');
    }
    public function viewPageData($page_slug){
        $page = Page::where('slug',$page_slug)->where('status','0')->first();
        if($page){
            return view('frontend.page.index', compact('page'));
        }
        else{
           return redirect('/');
        }
        
    }
    public function viewTeacherData($teacher_slug){
        $teachers = Teacher::with('user')->latest()->paginate(10);
        $teacher = Teacher::where('slug',$teacher_slug)->first();
        if($teacher){
            return view('frontend.teacher.index', compact('teacher','teachers'));
        }
        else{
           return redirect('/');
        }
        
    }
}
