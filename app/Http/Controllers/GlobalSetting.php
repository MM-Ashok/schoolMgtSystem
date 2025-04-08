<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Page;
use App\Setting;

class GlobalSetting extends Controller
{
    public function index(){
        $page = Page::all();
        $setting = Setting::all();
        return view('backend.setting.setting', compact('page', 'setting'));
    }
    public function save(Request $request)
    {
       
        $request->validate([
            'page_id' => 'required',
        ]);

        if($request){
           $settings = Setting::find(1);
           if($settings == null){
            $settings = new Setting;
            $settings->page_id = $request->page_id;
            $settings->save();
           }
           else{
            $settings->page_id = $request->page_id;
            $settings->save();
           }
           return redirect()->back()->with('status','Slider created successfully');
        }
        else{
            return response()->json([
               'status' => 0,
               'errors' => $validator->errors()
            ]);
        }
      

        //return redirect()->back()->with('status','Setting updated successfully');
    }
}
