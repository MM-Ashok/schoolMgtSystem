@extends('layouts.frontend')

@section('content')

<section id="pagetitle">
      <div class="container">
          <div class="row">
              <div class="col-lg-12 col-md-12 col-sm-12 col-12">
      <h2>Student Signup</h2>
      <h5>Home / <span>Student Signup</span></h5>
              </div>
          </div>
      </div>
      
      </section>

<section id="registrform">
<div class="container">
    <div class="row">
      <div class="col-lg-2 col-md-2 col-sm-12 col-12"></div>
        <div class="col-lg-8 col-md-8 col-sm-12 col-12">

<form method="POST" action="{{ url('student-register') }}" class="stdntreg">
@csrf
  <div class="stdntreginner full"><h2>New student registration</h2>
  </div>
  <div class="stdntreginner half">
    <input name="name" type="text" placeholder="Full Name">
  </div>
  <div class="stdntreginner half">
    <input name="email" type="email" placeholder="Email">
  </div>
  <div class="stdntreginner half">
    <input name="password" type="password" placeholder="Password">
  </div>
  <div class="stdntreginner half">
    <input name="phone" type="text" placeholder="Phone">
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
  <div class="stdntreginner full">
    <input name="address" type="text" placeholder="Address">
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

@endsection