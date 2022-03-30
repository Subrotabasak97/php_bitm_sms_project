@extends('master.admin.master')

@section('body')

    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Manage Student</h4>
                    <p class="card-title-desc">

                    </p>

                    <div class="table-responsive">
                        <table class="table mb-0">
                            <thead>
                            <tr >
                                <th>#</th>
                                <th>Full Name</th>
                                <th>Studnet Id</th>
                                <th>Email</th>
                                <th>Mobile</th>
                                <th>Status</th>
                                <th colspan="2">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($students as $student)
                                <tr>
                                    <th scope="row">{{$loop->iteration}}</th>
                                    <td>{{$student->name}}</td>
                                    <td>{{$student->id}}</td>
                                    <td>{{$student->email}}</td>
                                    <td>{{$student->mobile}}</td>
                                    <td>{{$student->status == 1 ? 'Active' : 'Inactive'}}</td>

                                    <td>

                                        <a href="{{route('student-status', ['id' => $student->id])}}" class="btn {{$student->status == 1 ? 'btn-success' : 'btn-warning' }} btn-sm">  <i class="fa fa-upload"></i>  </a>
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
