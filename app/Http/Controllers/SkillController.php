<?php

namespace App\Http\Controllers;
use App\Skill;
use App\Course;
use Illuminate\Http\Request;

class SkillController extends Controller
{
    public function index()
    {
        
        // $skill = Skill::with('course')->latest()->paginate(10);
        $skill = Skill::get();
        return view('backend.skill.index', compact('skill'));
        //return Skill::get();
    }
    public function create()
    {
        return view('backend.skill.create');
    }
    public function store(Request $request)
    {
        $skill = new Skill;
        $skill->skill_name = $request->input('skill_name');
        $skill->skill_desc = $request->input('skill_desc');
        $skill->save();

        return redirect()->back()->with('status','Skill created successfully');
    }
    public function edit($id)
    {
        $skill = Skill::find($id);
        return view('backend.skill.edit', compact('skill'));
    }
    public function update(Request $request, $id)
    {
        $skill = Skill::find($id);
        $skill->skill_name = $request->input('skill_name');
        $skill->skill_desc = $request->input('skill_desc');
        $skill->update();

        return redirect()->back()->with('status','Skill updated successfully');
    }
    public function destroy($id)
    {
        $skill = Skill::find($id);
        $skill->delete();
        return redirect()->back()->with('status','Skill deleted successfully');
    }
}
