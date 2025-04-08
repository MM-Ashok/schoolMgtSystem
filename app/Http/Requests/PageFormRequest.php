<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PageFormRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
         $rules = [
            'name' => [
               'required',
               'string'
            ],
            'slug' => [
                'required',
                'string'
            ],
            'description' => [
                'required'
            ],
            'meta_title' => [
                'required',
                'string'
            ],
            'meta_description' => [
                'nullable',
                'string'
            ],
            'meta_key' => [
                'nullable',
                'string'
            ],
            'status' => [
                'nullable'
            ],
            'slider_id' => [
                'required',
                'integer'
            ]
         ];

        return $rules;
    }
}
