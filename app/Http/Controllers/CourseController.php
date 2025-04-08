<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use App\Course;
use Redirect;

class CourseController extends Controller
{
    public function index()
    {
        $course = Course::all();
        return view('backend.course.index', compact('course'));
    }
    public function create()
    {
        //$slideshow = Slideshow::all();
        return view('backend.course.create');
    }
    public function store(Request $request)
    {
        $course = new Course;
        $course->course_name = $request->input('course_name');
        $course->course_desc = $request->input('course_desc');
        $course->save();

        return redirect()->back()->with('status','Course created successfully');
    }
    public function edit($id)
    {
        $course = Course::find($id);
        return view('backend.course.edit', compact('course'));
    }
    public function update(Request $request, $id)
    {
        $course = Course::find($id);
        $course->course_name = $request->input('course_name');
        $course->course_desc = $request->input('course_desc');
        $course->update();

        return redirect()->back()->with('status','Course updated successfully');
    }
    public function destroy($id)
    {
        $course = Course::find($id);
        $course->delete();
        return redirect()->back()->with('status','Course deleted successfully');
    }
}
