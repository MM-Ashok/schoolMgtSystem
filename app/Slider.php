<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    //
    protected $table = 'sliders';
    protected $fillable = [
        'title',
        'description',
        'baneer_image',
        'video_url',
    ];
}
