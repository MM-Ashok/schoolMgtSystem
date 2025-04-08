@extends('layouts.app')

@section('content')
    <div class="roles">

        <div class="flex items-center justify-between mb-6">
            <div>
                <h2 class="text-gray-700 uppercase font-bold">Edit</h2>
            </div>
            <div class="flex flex-wrap items-center">
                <a href="{{ url('add-page') }}" class="bg-green-500 text-white text-sm uppercase py-2 px-4 mr-2 flex items-center rounded">
                    <svg class="w-3 h-3 fill-current" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="plus" class="svg-inline--fa fa-plus fa-w-14" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path fill="currentColor" d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg>
                    <span class="ml-2 text-xs font-semibold">Add Page</span>
                </a>
                <a href="{{ url('pages') }}" class="bg-gray-700 mr-2 text-white text-sm uppercase py-2 px-4 flex items-center rounded">
                    <svg class="w-3 h-3 fill-current" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="long-arrow-alt-left" class="svg-inline--fa fa-long-arrow-alt-left fa-w-14" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path fill="currentColor" d="M134.059 296H436c6.627 0 12-5.373 12-12v-56c0-6.627-5.373-12-12-12H134.059v-46.059c0-21.382-25.851-32.09-40.971-16.971L7.029 239.029c-9.373 9.373-9.373 24.569 0 33.941l86.059 86.059c15.119 15.119 40.971 4.411 40.971-16.971V296z"></path></svg>
                    <span class="ml-2 text-xs font-semibold">Back</span>
                </a>
                <a href="{{ url('page/'.$page->slug) }}" target="_blank" class="bg-blue-500 text-white text-sm uppercase py-2 px-4 mr-2 flex items-center rounded">
                    <span class="ml-2 text-xs font-semibold">View Page</span>
                </a>
                
            </div>
        </div>
        <!-- Log on to codeastro.com for more projects -->
        <div class="table w-full mt-8 bg-white rounded">
            @if(session('status'))
               <h6 class="alert-success">{{ session('status') }}</h6>
            @endif
            @if ($errors->any())
            <div class="card-body">
                <div class="alert alert-danger">
                    @foreach ($errors->all() as $error)
                        <div>{{ $error}}</div>
                    @endforeach
                </div>
            </div>
            @endif
            <form action="{{ url('update-page/'.$page->id) }}" method="POST" class="w-full px-6 py-12">
                @csrf
                @method('PUT')
                <div class="md:flex md:items-center mb-12">
                    <div class="w-full">
                        <label class="block text-gray-500 font-bold md:text-left mb-1 md:mb-5 pr-4">
                           Banner:
                        </label>
                        
                        <select name="slider_id" id="sliderID" class="bg-gray-200 appearance-none border-2 border-gray-200 rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-blue-500">
                            <option selected="true" disabled="disabled">-- Show Banner --</option>
                            <option value="1" {{ $page->slider_id == '1' ? 'selected':''}}>Show</option>
                            <option value="0" {{ $page->slider_id == '0' ? 'selected':''}}>Hide</option>
                        </select>
                    </div>
                </div>
                <div class="md:flex md:items-center mb-12">
                    <div class="w-full">
                        <label class="block text-gray-500 font-bold md:text-left mb-1 md:mb-5 pr-4">
                           Title:
                        </label>
                        <input name="name" class="bg-gray-200 appearance-none border-2 border-gray-200 rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-blue-500" type="text" value="{{ $page->name }}">
                    </div>
                </div>
                <div class="md:flex md:items-center mb-12">
                    <div class="w-full">
                        <label class="block text-gray-500 font-bold md:text-left mb-1 md:mb-5 pr-4">
                           Slug:
                        </label>
                        <input name="slug" class="bg-gray-200 appearance-none border-2 border-gray-200 rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-blue-500" type="text" value="{{ $page->slug }}">
                    </div>
                </div>
                <div class="md:flex md:items-center mb-12">
                    <div class="w-full">
                        <label class="block text-gray-500 font-bold md:text-left mb-1 md:mb-5 pr-4">
                            Content:
                        </label>
                        <textarea name="description" id="summerNote" class="bg-gray-200 appearance-none border-2 border-gray-200 rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-blue-500" value="{{ $page->description }}">{{ $page->description }}</textarea>
                    </div>
                </div>
                <div class="md:flex md:items-center mb-12">
                    <div class="w-full">
                        <h1 class="block text-black-500 font-bold md:text-left mb-1 md:mb-5 pr-4">
                           SEO Tags:
                        </h1>
                    </div>
                </div>
                <div class="md:flex md:items-center mb-12">
                    <div class="w-full">
                        <label class="block text-gray-500 font-bold md:text-left mb-1 md:mb-5 pr-4">
                           Meta Title:
                        </label>
                        <input name="meta_title" class="bg-gray-200 appearance-none border-2 border-gray-200 rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-blue-500" type="text" value="{{ $page->meta_title }}">
                    </div>
                </div>
                <div class="md:flex md:items-center mb-12">
                    <div class="w-full">
                        <label class="block text-gray-500 font-bold md:text-left mb-1 md:mb-5 pr-4">
                           Meta Description:
                        </label>
                        <input name="meta_description" class="bg-gray-200 appearance-none border-2 border-gray-200 rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-blue-500" type="text" value="{{ $page->meta_description }}">
                    </div>
                </div>
                <div class="md:flex md:items-center mb-12">
                    <div class="w-full">
                        <label class="block text-gray-500 font-bold md:text-left mb-1 md:mb-5 pr-4">
                           Meta Key:
                        </label>
                        <input name="meta_key" class="bg-gray-200 appearance-none border-2 border-gray-200 rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-blue-500" type="text" value="{{ $page->meta_key }}">
                    </div>
                </div>
                <div class="md:flex md:items-center mb-12">
                    <div class="w-full">
                        <label class="block text-gray-500 font-bold md:text-left mb-1 md:mb-0 pr-4">
                           Status:
                        </label>
                        <input name="status" class="checkBox" type="checkbox" {{ $page->status == '1' ? 'checked':'' }} />
                    </div>
                </div>
                <!-- Log on to codeastro.com for more projects -->
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