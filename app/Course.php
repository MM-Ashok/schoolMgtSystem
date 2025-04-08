<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    protected $table = 'courses';
    //protected $primarykey = 'id';
    protected $fillable = [
        'course_name',
        'course_desc',
    ];
}
