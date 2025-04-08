@extends('layouts.frontend')

@section('content')
<section id="pagetitle">
      <div class="container">
          <div class="row">
              <div class="col-lg-12 col-md-12 col-sm-12 col-12">
      <h2>Login</h2>
      <h5>Home / <span>Login</span></h5>
              </div>
          </div>
      </div>
</section>
<section id="registrform" class="signin">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-12 col-12"></div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-12">
                <form method="POST" action="{{ route('login') }}" class="stdntreg">
                @csrf
                    <div class="stdntreginner full">
                        <input class="@error('password') border-red-500 @enderror " type="email" name="email" id="emailaddress" placeholder="email@example.com">
                        @error('email')
                            <p class="text-red-500 text-xs italic">{{ $message }}</p>
                        @enderror
                    </div>
                    <div class="stdntreginner full">
                        <input class="@error('password') border-red-500 @enderror" type="password" name="password" id="password" placeholder="******************">
                        @error('password')
                            <p class="text-red-500 text-xs italic">{{ $message }}</p>
                        @enderror
                    </div>
                    <div class="stdntreginner full chk">
                        <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}>
                        <span class="text-sm">
                            Remember Me
                        </span>
                    </div>
                    <div class="stdntreginner full">
                    <button class="sbmt" type="submit">
                        Log In
                    </button>
                    </div>
                </form>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-12"></div>
        </div>
    </div>
</section>


@endsection
