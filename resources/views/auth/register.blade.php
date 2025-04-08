@extends('layouts.frontend')

@section('content')
<section id="pagetitle">
      <div class="container">
          <div class="row">
              <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                    <h2>Registration</h2>
                    <h5>Home / <span>Register</span></h5>
              </div>
          </div>
      </div>
</section>
<section id="registrform">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-12 col-12"></div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                <form method="POST" action="{{ route('register') }}" class="stdntreg">
                    @csrf
                    <div class="stdntreginner full">
                       <input placeholder="Full Name" id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>
                        @error('name')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="stdntreginner full">
                       <input placeholder="Email" id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">
                        @error('email')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="stdntreginner full">
                        <input placeholder="Password" id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">
                            @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                    </div>
                    <div class="stdntreginner full">
                       <input placeholder="Confirmation Password" id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                    </div>
                    <div class="stdntreginner full">
                       <button type="submit" class="btn btn-primary sbmt">
                            {{ __('Register') }}
                        </button>
                    </div>
                </form>
                <div class="signacntbt">
                    <ul>
                        <li>Already have an account? <a href="{{ url('login')}}">Log in</a></li>
                        <li>By signing up, you agree to our <a href="#">Terms of Use</a> and <a href="#">Privacy Policy</a>.</li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-12 col-12"></div>
        </div>
    </div>
</section>

@endsection
