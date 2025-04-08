<header>
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container">
              <a class="navbar-brand" href="#"><img src="{{ asset('theme/img/logo.png') }}" class="img-fluid" alt="" /></a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto">
                  @php
                     $pages = App\Page::where('status','0')->get();
                  @endphp
                  @foreach ($pages as $page)
                    <li class="nav-item">
                      <a class="nav-link {{ Request::is('page/'.$page->slug) ? 'active':'' }}" aria-current="page" href="{{ url('page/'.$page->slug) }}">{{ $page->name }}</a>
                    </li>
                  @endforeach
                  @auth
                  <li class="profldrpdn">
                      <div class="dropdown prflinr">
                          <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                            <img class="img-fluid dmimg" style="border-radius: 20px;" src="{{ asset('images/profile/' . auth()->user()->profile_picture) }}" alt="Avatar">
                            {{ auth()->user()->name }}
                          </button>
                          <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                              <li>
                                <a href="{{ route('dashboard') }}" class="dropdown-item">
                                  <span>Dashboard</span>
                                </a>
                              </li>
                              <li>
                                <a href="{{ route('profile') }}" class="dropdown-item">
                                  <span>Profile</span>
                                </a>
                              </li>
                              <form action="{{ route('logout') }}" method="POST" class="pb-2">
                                @csrf
                                <button class="flex items-center text-sm text-gray-200 font-semibold focus:outline-none" type="submit">
                                    <span>{{ __('Logout') }}</span>
                                </button>
                              </form>
                          </ul>
                      </div>
                  </li>
                  @else 
                  @if (Route::has('login'))
                    <li class="nav-item login">
                      <a class="nav-link" href="{{ url('login')}}">Login</a>
                    </li>
                    <li class="nav-item dropdown register">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                       Register
                      </a>
                      <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="{{ url('teacher-register')}}">Teachers</a></li>
                        <li><a class="dropdown-item" href="{{ url('student-register')}}">Students</a></li>
                      </ul>
                    </li>
                  @endif
                  @endauth
                </ul>

              </div>
            </div>
          </nav>
</header>
