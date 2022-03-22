@extends('master.front.master')

@section('title')
    Course Detail Page
@endsection


@section('body')


    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="card-card-body">
                        <img src="{{asset($subject->image)}}" alt="" class="img-fluid w-100 h-auto">
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card card-body">
                        <h1>{{$subject->title}}</h1>
                        <p>Course Fee: {{$subject->fee}}/-</p>
                        <hr>
                        <h3>{{$subject->teacher->name}}</h3>
                        <img src="{{asset($subject->teacher->image)}}" alt="" height="150" width="150">
                        <hr>
                        <div>{!! $subject->short_description !!}</div>

                        <a href="{{route('enroll-now', ['id' => $subject->id])}}" class="btn btn-outline-success">Enroll Now</a>

                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="card card-body">
                        <h1>Course Module Details</h1>
                        <hr>
                        <div>{!! $subject->long_description !!}</div>
                        <a href="{{route('enroll-now', ['id' => $subject->id])}}" class="btn btn-outline-success">Enroll Now</a>
                    </div>
                </div>
            </div>
        </div>
    </section>









@endsection
