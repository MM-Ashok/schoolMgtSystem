<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Skill extends Model
{
    protected $table = 'skills';
    //protected $primarykey = 'id';
    protected $fillable = [
        'course_id',
        'skill_name',
        'skill_desc',
    ];
    public function course()
    {
        return $this->belongsTo(Course::class);
    }

}
