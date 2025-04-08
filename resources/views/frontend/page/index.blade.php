@extends('layouts.frontend')
@section('title', "$page->meta_title")
@section('meta_description', "$page->meta_description")
@section('meta_key', "$page->meta_key")
@section('content')
@php
    $slider = App\Slider::get();
    $settings = App\Setting::get();
    $teacher = App\User::whereHas(
    'roles', function($q){
        $q->where('name', 'Teacher');
    }
)->get();
@endphp
@if($page->slider_id =='1')         
<section id="banner">
        <div class="container">
            <div class="mainBanner">
                @foreach ($slider as $item)
                    <div class="row rcntr">
                        <div class="col-lg-6 col-md-12 col-sm-12 col-12">
                            <div class="bantext">
                                <h2>{{ $item->title  }}</h2>
                                {!! html_entity_decode($item->description) !!}
                                <div class="bnbtn">
                                    <ul>
                                        <li class="hbtn1">
                                            <a href="{{ $item->video_url }}">Hire Tutor</a>
                                        </li>
                                        <li class="hbtn2">
                                            <a href="#">Learn More</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12 col-sm-12 col-12">
                            <div class="bnimg">
                                <img src="{{ asset('images/'.$item->baneer_image) }}" class="ing-fluid" alt="{{ $item->title  }}"/>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
</section>
@else
<section id="pagetitle">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                <h2>{{ $page->name }}</h2>
                <h5>Home / <span>{{ $page->name }}</span></h5>
            </div>
        </div>
    </div>
</section>
@endif
{!! html_entity_decode($page->description) !!}
@foreach($settings as $item)
    @if( $item->page_id == $page->id )  
        <section id="reachrsct">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-12"> 
                        <div class="michisct">
                        @foreach ($teacher as $item)
                                <div class="michinner">
                                    <div class="mcgsct">
                                       <div class="michimg">
                                        <a href="teacher/{{ $item->slug }}">
                                           <img src="{{ asset('images/profile/'.$item->profile_picture) }}" class="img-fluid" alt="">
                                        </a>
                                        </div>
                                        <div class="micnt">
                                            <a href="teacher/{{ $item->slug }}">
                                                <h5>{{ $item->name }}</h5>
                                                <p>Math Teacher</p>
                                            </a>
                                                <p class="revw"><i class="fa fa-star" aria-hidden="true"></i> <strong>5(120k)</strong> Reviews</p>
                                                <div class="scl">
                                                    <ul>
                                                        <li>
                                                            <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li>
                                                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li>
                                                            <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                           
                                        </div> 
                                    </div>
                                </div>
                        @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </section>
    @endif
    @if( $item->page_id == $page->id )  
        
<section id="pagetitle">
      <div class="container">
          <div class="row">
              <div class="col-lg-12 col-md-12 col-sm-12 col-12">
      <h2>Contact Us</h2>
      <h5>Home / <span>Contact Us</span></h5>
              </div>
          </div>
      </div>
      
      </section>

<section id="registrform">
<div class="container">
    <div class="row">
      <div class="col-lg-2 col-md-2 col-sm-12 col-12"></div>
        <div class="col-lg-8 col-md-8 col-sm-12 col-12">

<form method="POST" action="{{ url('add-contact') }}" class="stdntreg">
@csrf
@method('post')
  <div class="stdntreginner full"><h2>Get In Touch!</h2>
  </div>
  <div class="stdntreginner half">
    <input name="name" type="text" value="{{ old('name') }}" placeholder="Name" required>
     @error('name')
       <p class="text-red-500 text-xs italic">{{ $message }}</p>
     @enderror
  </div>
  <div class="stdntreginner half">
    <input name="email" type="email" value="{{ old('Email') }}" placeholder="Email" required>
  </div>
  <div class="stdntreginner half">
    <input name="password" type="password" placeholder="Password" required>
  </div>
  <div class="stdntreginner half">
    <input name="phone" type="text" placeholder="Phone" required>
  </div>
  <div class="stdntreginner half">
    <div class="chooseGender">
      <label class="block text-gray-500 font-bold">
          <input name="gender" class="mr-2 leading-tight" type="radio" value="male">
          <span class="text-sm">Male</span>
      </label>
      <label class="ml-4 block text-gray-500 font-bold">
          <input name="gender" class="mr-2 leading-tight" type="radio" value="female">
          <span class="text-sm">Female</span>
      </label>
      <label class="ml-4 block text-gray-500 font-bold">
          <input name="gender" class="mr-2 leading-tight" type="radio" value="other">
          <span class="text-sm">Other</span>
      </label>
    </div>
  </div>
  <div class="stdntreginner half">
     <input name="dateofbirth" id="datepicker-te" placeholder="YY-MM-DD" autocomplete="off" type="text">
  </div>
  <div class="stdntreginner half">
    <input name="experience" type="text" placeholder="Experience" required>
  </div>
  <div class="stdntreginner half">
    <input name="address" type="text" placeholder="Address" required>
  </div>
  <div class="stdntreginner full">
    <button class="sbmt" type="submit">Signup</button>
  </div>


</form>

          
            </div>
            <div class="col-lg-2 col-md-2 col-sm-12 col-12"></div>
        </div>
    </div>
</section>
<script>
  // let selectCourse = document.getElementById('select-course');
  // selectCourse.addEventListener('change', (e) => {
  //   if (e.target.value == 'add_new_course') {
  //     document.getElementById('openCustomCourse').style.display = 'block';
  //   } else {
  //     document.getElementById('openCustomCourse').style.display = 'none';
  //   }
  // });
  // let selectSkill = document.getElementById('select-skill');
  // selectSkill.addEventListener('change', (e) => {
  //   if (e.target.value == 'add_new_skill') {
  //     document.getElementById('openCustomSkill').style.display = 'block';
  //   } else {
  //     document.getElementById('openCustomSkill').style.display = 'none';
  //   }
  // });
</script>
    @endif
@endforeach

@endsection