@extends('layouts.app')

@section('content')
    <div class="roles">

        <div class="flex items-center justify-between mb-6">
            <div>
                <h2 class="text-gray-700 uppercase font-bold">Settings</h2>
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
            <form action="{{ route('settings.save') }}" method="POST" class="w-full px-6 py-12">
                @csrf
                <div class="md:flex md:items-center mb-12">
                    <div class="w-full">
                        <label class="block text-gray-500 font-bold md:text-left mb-1 md:mb-5 pr-4">
                            Select teacher page:
                        </label>
                        <select name="page_id" id="pageID" class="bg-gray-200 appearance-none border-2 border-gray-200 rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-blue-500">
                            <option selected="true" disabled="disabled">-- Select page --</option>
                            @foreach($page as $item)
                              <option value="{{ $item->id }}" {{ $item->id == "6" ? 'selected':''}}>{{ $item->name }}</option>
                            @endforeach
                        </select>
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