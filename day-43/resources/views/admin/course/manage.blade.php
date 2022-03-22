@extends('master.admin.master')

@section('body')

    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body ">
                    <h4 class="card-title">Manage Teachers Courses</h4>
                    <p class="card-title-desc">

                    </p>

                    <div class="table-responsive table-bordered table-hover">
                        <table class="table mb-0">
                            <thead>
                            <tr >
                                <th>#</th>
                                <th>ID</th>
                                <th>Course Title</th>
                                <th>Course Fee</th>
                                <th>Trainer Name</th>
                                <th>Status</th>
                                <th colspan="2">Action</th>

                            </tr>
                            </thead>
                            <tbody>
                            @foreach($subjects as $subject)
                                <tr>
                                    <th scope="row">{{$loop->iteration}}</th>
                                    <td>{{$subject->id}}</td>
                                    <td>{{$subject->title}}</td>
                                    <td>{{$subject->fee}}</td>
                                    <td>{{$subject->teacher->name}}</td>
                                    <td>{{$subject->status == 1 ? 'Active' : 'Inactive'}}</td>

                                    <td>
                                        <a href="{{route('view-detail', ['id' => $subject->id])}}" class="btn btn-success mx-2">  <i class="fa fa-book-open"></i>  </a>
                                        <a href="{{route('update-status', ['id' => $subject->id])}}" class="btn {{$subject->status ==1 ? 'btn-info' : 'btn-warning'}} ">
                                            <i class=" {{$subject->status ==1 ? 'fa fa-arrow-up' : 'fa fa-arrow-down'}} "></i>
                                        </a>
                                    </td>
                                </tr>
                            @endforeach


                            </tbody>
                        </table>

                        <p class="text-center text-success font-weight-bold">{{Session::get('message')}}</p>
                    </div>

                </div>
            </div>
        </div>
    </div>


@endsection
