<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use App\Contact;
use Redirect;

class ContactController extends Controller
{
    public function index()
    {
        
        // $skill = Skill::with('course')->latest()->paginate(10);
        //$skill = Skill::get();
        return view('page.contact.index');
        //return Skill::get();
    }
    public function create()
    {
        //$slideshow = Slideshow::all();
        return view('page.contact.index');
    }
    public function store(Request $request)
    {
        $contact = new Contact;
            $contact->contact_fname = $request->input('contact_fname');
            $contact->contact_lname = $request->input('contact_lname');
            $contact->contact_phone = $request->input('contact_phone');
            $contact->contact_email = $request->input('contact_email');
            $contact->contact_message = $request->input('contact_message');
        $course->save();

        return redirect()->back()->with('status','Form Submit Successfully');
    }
}
