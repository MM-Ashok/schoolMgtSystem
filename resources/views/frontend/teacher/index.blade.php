@extends('layouts.frontend')
@section('title', "$page->meta_title")
@section('meta_description', "$page->meta_description")
@section('meta_key', "$page->meta_key")
@section('content')
<section id="pagetitle">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                <h2>{{ $teacher->user->name }}</h2>
                <h5>Home / <span>{{ $teacher->user->name }}</span></h5>
            </div>
        </div>
    </div>
</section>
<section id="abt" class="tcrdtl">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 col-12"> 
                <div class="sectitle">
                    <h2>{{ $teacher->user->name }}</h2>
                </div>
                <div class="micldt">
                    <ul>
                        <li>
                            <a href="tel:{{ $teacher->phone }}"><i class="fa fa-phone" aria-hidden="true"></i> {{ $teacher->phone }}</a>
                        </li>
                        <li>
                            <a href="mailto:{{ $teacher->user->email }}"><i class="fa fa-envelope-open-o" aria-hidden="true"></i> {{ $teacher->user->email }}</a>
                        </li>
                    </ul>
                </div>
                {!! html_entity_decode($teacher->description) !!}
                <div class="vlbtn abbs"><a href="#">Become an Instructor</a></div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-12"> 
                <div class="abtimg">
                    <img src="{{ asset('images/profile/' .$teacher->user->profile_picture) }}" class="img-fluid" alt="">
                </div>
            </div>
</div>
</div>
</section>


@endsection