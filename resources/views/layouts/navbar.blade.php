<div class="bg-blue-700 px-4 sm:px-6 py-3 flex items-center justify-between shadow h-16 fixed top-0 left-0 right-0 z-50">
    <div class="flex items-center text-white">
        <span class="font-semibold text-sm sm:text-xl tracking-tight">SCHOOL MANAGEMENT SYSTEM</span>
    </div>
    <div class="relative">
        @auth
            <div class="flex items-center cursor-pointer" id="opennavdropdown">
                <img class="w-8 h-8 rounded-full mr-2" src="{{ asset('images/profile/' . auth()->user()->profile_picture) }}" alt="Avatar">
                <p class="text-sm text-white font-semibold leading-none">{{ auth()->user()->name }}</p>
                <svg class="w-4 h-4 stroke-current text-gray-200 ml-1 feather feather-chevron-down" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><polyline points="6 9 12 15 18 9"></polyline></svg>
            </div>
            <div class="bg-blue-700 absolute top-0 right-0 mt-12 -mr-6 shadow rounded-bl rounded-br">
                <div class="hidden h-24 w-48" id="navdropdown">
                    <div class="px-8 py-4 border-t border-blue-800">
                        @role('Admin')
                            <a href="{{ route('profile') }}" class="flex items-center pb-3 text-sm text-gray-200 font-semibold">
                            <svg class="h-4 w-4 mr-2 fill-current text-gray-200" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"><path d="M64 32C28.7 32 0 60.7 0 96V416c0 35.3 28.7 64 64 64H512c35.3 0 64-28.7 64-64V96c0-35.3-28.7-64-64-64H64zm80 256h64c44.2 0 80 35.8 80 80c0 8.8-7.2 16-16 16H80c-8.8 0-16-7.2-16-16c0-44.2 35.8-80 80-80zm96-96c0 35.3-28.7 64-64 64s-64-28.7-64-64s28.7-64 64-64s64 28.7 64 64zm128-32H496c8.8 0 16 7.2 16 16s-7.2 16-16 16H368c-8.8 0-16-7.2-16-16s7.2-16 16-16zm0 64H496c8.8 0 16 7.2 16 16s-7.2 16-16 16H368c-8.8 0-16-7.2-16-16s7.2-16 16-16zm0 64H496c8.8 0 16 7.2 16 16s-7.2 16-16 16H368c-8.8 0-16-7.2-16-16s7.2-16 16-16z"/></svg>
                            <span>Profile</span>
                        </a>
                        @endrole
                        @role('Teacher')
                            <a href="{{ route('tprofile') }}" class="flex items-center pb-3 text-sm text-gray-200 font-semibold">
                            <svg class="h-4 w-4 mr-2 fill-current text-gray-200" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"><path d="M64 32C28.7 32 0 60.7 0 96V416c0 35.3 28.7 64 64 64H512c35.3 0 64-28.7 64-64V96c0-35.3-28.7-64-64-64H64zm80 256h64c44.2 0 80 35.8 80 80c0 8.8-7.2 16-16 16H80c-8.8 0-16-7.2-16-16c0-44.2 35.8-80 80-80zm96-96c0 35.3-28.7 64-64 64s-64-28.7-64-64s28.7-64 64-64s64 28.7 64 64zm128-32H496c8.8 0 16 7.2 16 16s-7.2 16-16 16H368c-8.8 0-16-7.2-16-16s7.2-16 16-16zm0 64H496c8.8 0 16 7.2 16 16s-7.2 16-16 16H368c-8.8 0-16-7.2-16-16s7.2-16 16-16zm0 64H496c8.8 0 16 7.2 16 16s-7.2 16-16 16H368c-8.8 0-16-7.2-16-16s7.2-16 16-16z"/></svg>
                            <span>Profile</span>
                        </a>
                        @endrole
                        @role('Student')
                            <a href="{{ route('sprofile') }}" class="flex items-center pb-3 text-sm text-gray-200 font-semibold">
                            <svg class="h-4 w-4 mr-2 fill-current text-gray-200" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"><path d="M64 32C28.7 32 0 60.7 0 96V416c0 35.3 28.7 64 64 64H512c35.3 0 64-28.7 64-64V96c0-35.3-28.7-64-64-64H64zm80 256h64c44.2 0 80 35.8 80 80c0 8.8-7.2 16-16 16H80c-8.8 0-16-7.2-16-16c0-44.2 35.8-80 80-80zm96-96c0 35.3-28.7 64-64 64s-64-28.7-64-64s28.7-64 64-64s64 28.7 64 64zm128-32H496c8.8 0 16 7.2 16 16s-7.2 16-16 16H368c-8.8 0-16-7.2-16-16s7.2-16 16-16zm0 64H496c8.8 0 16 7.2 16 16s-7.2 16-16 16H368c-8.8 0-16-7.2-16-16s7.2-16 16-16zm0 64H496c8.8 0 16 7.2 16 16s-7.2 16-16 16H368c-8.8 0-16-7.2-16-16s7.2-16 16-16z"/></svg>
                            <span>Profile</span>
                        </a>
                        @endrole
                        <form action="{{ route('logout') }}" method="POST" class="pb-2">
                            @csrf
                            <button class="flex items-center text-sm text-gray-200 font-semibold focus:outline-none" type="submit">
                                <span>{{ __('Logout') }}</span>
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        @else 
            <div class="flex items-center">
                @if (Route::has('login'))
                    <div>
                        <a class="flex items-center mr-4 text-sm text-gray-200 font-semibold" href="{{ route('login') }}">
                            <span>Login</span>
                        </a>
                    </div>
                @endif
            </div>
        @endauth
    </div>
</div>
<!-- Log on to codeastro.com for more projects -->