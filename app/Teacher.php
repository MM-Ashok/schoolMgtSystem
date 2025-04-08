<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Casts\Attribute;

class Teacher extends Model
{
    protected $table = 'teachers';
    protected $fillable = [
        'user_id',
        'gender',
        'phone',
        'dateofbirth',
        'current_address',
        'permanent_address',
        'experience',
        'description',
        'slug',
    ];
    
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function subjects()
    {
        return $this->hasMany(Subject::class);
    }

    public function classes()
    {
        return $this->hasMany(Grade::class);
    }

    public function students() 
    {
        return $this->classes()->withCount('students');
    }
    
}
