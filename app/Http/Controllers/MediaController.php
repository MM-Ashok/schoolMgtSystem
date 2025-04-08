<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\File;
use App\Media;
use Illuminate\Http\Request;

class MediaController extends Controller
{
    public function index()
    {
        $image = Media::all();
        return view('backend.media.index', compact('image'));
    }
    public function create()
    {
        //$slideshow = Slideshow::all();
        return view('backend.media.create');
    }
    public function store(Request $request)
    {
        $image = new Media;
        if($request->hasfile('media'))
        {
            $file = $request->file('media');
            $extension = $file->getClientOriginalExtension();
            $filename = time().'.'.$extension;
            $file->move('images/media/', $filename);
            $image->media = $filename;
        }
        $image->save();

        //return redirect()->route('media.index');
        return redirect('media')->with('status','Image Uplaoded');
    }
    public function show($id)
    {
        //$image = Media::where('media')->first();
        $image = Media::find($id);
        return view('backend.media.show', compact('image'));
    }
    public function destroy($id)
    {
        $image = Media::find($id);
        $destination = 'images/media/'.$image->media;
        if(File::exists($destination))
        {
            File::delete($destination);
        }
        $image->delete();
        return redirect('media')->with('status','Image deleted successfully');
    }
    // public function edit($id)
    // {
    //     $media = Media::find($id);
    //     return view('backend.slider.edit', compact('media'));
    // }
}
