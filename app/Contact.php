<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    protected $table = 'contacts';
    //protected $primarykey = 'id';
    protected $fillable = [
        'contact_id',
        'contact_fname',
        'contact_lname',
        'contact_phone',
        'contact_email',
        'contact_message',
    ];
    public function contact()
    {
        return $this->belongsTo(Contact::class);
    }

}
