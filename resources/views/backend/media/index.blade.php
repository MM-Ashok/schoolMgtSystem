@extends('layouts.app')

@section('content')
    <div class="roles-permissions">
        <div class="flex items-center justify-between mb-6">
            <div>
                <h2 class="text-gray-700 uppercase font-bold">All Media</h2>
            </div>
            <div class="flex flex-wrap items-center">
                <a href="{{ url('add-image') }}" class="bg-green-500 text-white text-sm uppercase py-2 px-4 flex items-center rounded">
                    <svg class="w-3 h-3 fill-current" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="plus" class="svg-inline--fa fa-plus fa-w-14" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path fill="currentColor" d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"></path></svg>
                    <span class="ml-2 text-xs font-semibold">Add New Image</span>
                </a>
            </div>
        </div>
        <!-- Log on to codeastro.com for more projects -->
        @if(session('status'))
            <h6 class="alert-success">{{ session('status') }}</h6>
         @endif
        <div class="mainWrapper">
            @foreach ($image as $item)
                <div class="mediaWrapper">
                    <div class="pdf-thumb-box">
                        <div class="thumbOver">
                            <div class="pdf-thumb-box-overlay">
                                <span class="fa-stack fa-lg copyUrl">
                                    <a href=" {{ url('show-image/'.$item->id)}}"><i class="fa fa-eye" aria-hidden="true"></i></a>
                                    <form method="POST" action="{{ url('delete-image/'.$item->id)}}">
                                        @csrf
                                        <input name="_method" type="hidden" value="DELETE">
                                        <button type="submit" class="btn btn-xs btn-danger btn-flat media_show_confirm" data-toggle="tooltip" title='Delete'>
                                        <i class="fa fa-trash"></i>                           
                                        </button>
                                    </form>
                                </span>
                            </div>
                            <img class="img-responsive" src="{{ asset('images/media/'.$item->media) }}"/>
                        </div>
                    </div>
                    <div class="vertical-social-box"></div>
                </div>
            @endforeach
        </div>
    </div>
@endsection