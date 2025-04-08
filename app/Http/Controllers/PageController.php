<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use App\Page;
use App\Slider;
use App\Teacher;
use App\Http\Requests\PageFormRequest;
use Redirect;
class PageController extends Controller
{
    public function index(){
        $user = Auth::user();
        
        $teachers = Teacher::latest()->get();
        $page = Page::all();
        return view('backend.page.index', compact('page', 'teachers'));
    }
    public function create()
    {
        $slider = Slider::get();
        return view('backend.page.create', compact('slider'));
    }
    public function store(PageFormRequest $request)
    {
        $data = $request->validated();
        $page = new Page;
        $page->slider_id = $data['slider_id'];
        $page->name = $data['name'];
        $page->slug = Str::slug($data['slug']);
        $page->description = $data['description'];
        $page->meta_title = $data['meta_title'];
        $page->meta_description = $data['meta_description'];
        $page->meta_key = $data['meta_key'];
        $page->status = $request->status == true ? '1':'0';
        $page->created_by = Auth::user()->id;
        $page->save();

        return redirect()->back()->with('status','Page created successfully');
    }
    public function edit($id)
    {
        $page = Page::find($id);
        $slider = Slider::get();
        return view('backend.page.edit', compact('page', 'slider'));
    }
    public function update(PageFormRequest $request, $id)
    {
        $data = $request->validated();
        $page = Page::find($id);
        $page->slider_id = $data['slider_id'];
        $page->name = $data['name'];
        $page->slug = Str::slug($data['slug']);
        $page->description = $data['description'];
        $page->meta_title = $data['meta_title'];
        $page->meta_description = $data['meta_description'];
        $page->meta_key = $data['meta_key'];
        $page->status = $request->status == true ? '1':'0';
        $page->created_by = Auth::user()->id;
        $page->update();

        return redirect()->back()->with('status','Page updated successfully');
    }
    public function destroy($id)
    {
        $page = Page::find($id);
        $page->delete();
        return redirect('pages')->with('status','Page deleted successfully');
    }
}
