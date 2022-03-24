@extends('master.teacher.master')

@section('body')

    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Subjects tables</h4>
                    <p class="card-title-desc">

                    </p>

                    <div class="table-responsive">
                        <table class="table mb-0">
                            <thead>
                            <tr >
                                <th>#</th>
                                <th>ID</th>
                                <th>Teacher ID</th>
                                <th>Teacher Name</th>
                                <th>Title</th>
                                <th>Code</th>
                                <th>Fees</th>
                                <th>Image</th>
                                <th>Status</th>
                                <th colspan="2">Actions</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($subjects as $subject)
                                <tr>
                                    <th scope="row">{{$loop->iteration}}</th>
                                    <td>{{$subject->id}}</td>
                                    <td>{{$subject->teacher_id}}</td>
                                    <td>{{$subject->teacher->name}}</td>
                                    <td>{{$subject->title}}</td>
                                    <td>{{$subject->code}}</td>
                                    <td>{{number_format($subject->fee)}}</td>

                                    <td><img src="{{asset('/').$subject->image}}" alt="" height="50" width="50"></td>
                                    <td>{{$subject->status == 1 ? 'Active' : 'Inactive'}}</td>

                                    <td>
                                        <a href="" class="btn btn-success mx-2">  <i class="fa fa-edit"></i>  </a>
                                        <a href="" class="btn btn-danger ">  <i class="fa fa-trash"></i>  </a>
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
