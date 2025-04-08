@extends('layouts.app')

@section('content')
    <div class="roles">

        <div class="flex items-center justify-between mb-6">
            <div>
                <h2 class="text-gray-700 uppercase font-bold">Edit Slider</h2>
            </div>
            <div class="flex flex-wrap items-center">
                <a href="{{ url('sliders') }}" class="bg-gray-700 text-white text-sm uppercase py-2 px-4 flex items-center rounded">
                    <svg class="w-3 h-3 fill-current" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="long-arrow-alt-left" class="svg-inline--fa fa-long-arrow-alt-left fa-w-14" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path fill="currentColor" d="M134.059 296H436c6.627 0 12-5.373 12-12v-56c0-6.627-5.373-12-12-12H134.059v-46.059c0-21.382-25.851-32.09-40.971-16.971L7.029 239.029c-9.373 9.373-9.373 24.569 0 33.941l86.059 86.059c15.119 15.119 40.971 4.411 40.971-16.971V296z"></path></svg>
                    <span class="ml-2 text-xs font-semibold">Back</span>
                </a>
            </div>
        </div>
        <!-- Log on to codeastro.com for more projects -->
        <div class="table w-full mt-8 bg-white rounded">
            @if(session('status'))
               <h6 class="alert-success">{{ session('status') }}</h6>
            @endif
            <form action="{{ url('update-slider/'.$slider->id) }}" method="POST" enctype="multipart/form-data" class="w-full px-6 py-12">
                @csrf
                @method('PUT')
                <div class="md:flex md:items-center mb-12">
                    <div class="w-full">
                        <label class="block text-gray-500 font-bold md:text-left mb-1 md:mb-5 pr-4">
                            Slider Name:
                        </label>
                        <input name="title" class="bg-gray-200 appearance-none border-2 border-gray-200 rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-blue-500" type="text" value="{{$slider->title}}">
                      
                    </div>
                </div>
                <div class="md:flex md:items-center mb-12">
                    <div class="w-full">
                        <label class="block text-gray-500 font-bold md:text-left mb-1 md:mb-5 pr-4">
                           Description:
                        </label>
                        <textarea name="description" id="summerNote" class="bg-gray-200 appearance-none border-2 border-gray-200 rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-blue-500" value="{{$slider->description}}">{{$slider->description}}</textarea>
                       
                    </div>
                </div>
                <!-- Log on to codeastro.com for more projects -->
                <div class="md:flex md:items-center mb-12">
                        <div class="w-full">
                            <label class="block text-gray-500 font-bold md:text-left mb-1 md:mb-5 pr-4">
                                Image:
                            </label>
                            <input name="baneer_image" class="bg-gray-200 appearance-none border-2 border-gray-200 rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-blue-500" type="file">
                            <img src="{{ asset('images/'.$slider->baneer_image) }}" width="200px" height="200px" style="margin-top: 10px;border: 1px solid #cbcbcb;"/>
                        </div>
                </div>
                <div class="md:flex md:items-center mb-12">
                    <div class="w-full">
                       <label class="block text-gray-500 font-bold md:text-left mb-1 md:mb-5 pr-4">
                            Video URL:
                        </label>
                        <input name="video_url" class="bg-gray-200 appearance-none border-2 border-gray-200 rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-blue-500" type="text" value="{{$slider->video_url}}">
                    </div>
                </div>
                <div class="md:flex md:items-left">
                    <div class="md:w-2/3">
                        <button class="shadow bg-blue-500 hover:bg-blue-400 focus:shadow-outline focus:outline-none text-white font-bold py-2 px-4 rounded" type="submit">
                            Update
                        </button>
                    </div>
                </div>
            </form>        
        </div>
        <!-- Log on to codeastro.com for more projects -->
    </div>
@endsection