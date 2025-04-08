<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use App\Slider;
use Redirect;
class SliderController extends Controller
{
    public function index()
    {
        $slider = Slider::all();
        return view('backend.slider.index', compact('slider'));
    }
    public function create()
    {
        //$slideshow = Slideshow::all();
        return view('backend.slider.create');
    }
    public function store(Request $request)
    {
        $slider = new Slider;
        $slider->title = $request->input('title');
        $slider->description = $request->input('description');
        if($request->hasfile('baneer_image'))
        {
            $file = $request->file('baneer_image');
            $extension = $file->getClientOriginalExtension();
            $filename = time().'.'.$extension;
            $file->move('images/', $filename);
            $slider->baneer_image = $filename;
        }
        $slider->video_url = $request->input('video_url');
        $slider->save();

        return redirect()->back()->with('status','Slider created successfully');
    }
    public function edit($id)
    {
        $slider = Slider::find($id);
        return view('backend.slider.edit', compact('slider'));
    }
    public function update(Request $request, $id)
    {
        $slider = Slider::find($id);
        $slider->title = $request->input('title');
        $slider->description = $request->input('description');
        if($request->hasfile('baneer_image'))
        {
            $destination = 'images/'.$slider->baneer_image;
            if(File::exists($destination))
            {
                File::delete($destination);
            }
            $file = $request->file('baneer_image');
            $extension = $file->getClientOriginalExtension();
            $filename = time().'.'.$extension;
            $file->move('images/', $filename);
            $slider->baneer_image = $filename;
        }
        $slider->video_url = $request->input('video_url');
        $slider->update();

        return redirect()->back()->with('status','Slider updated successfully');
    }
    public function destroy($id)
    {
        $slider = Slider::find($id);
        $destination = 'images/'.$slider->baneer_image;
        if(File::exists($destination))
        {
            File::delete($destination);
        }
        $slider->delete();
        return redirect()->back()->with('status','Slider deleted successfully');
    }
}
