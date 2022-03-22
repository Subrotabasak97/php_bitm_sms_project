@extends('master.admin.master')

@section('body')

    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Teachers tables</h4>
                    <p class="card-title-desc">

                    </p>

                    <div class="table-responsive">
                        <table class="table mb-0">
                            <thead>
                            <tr >
                                <th>#</th>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Code</th>
                                <th>Mobile</th>
                                <th>Address</th>
                                <th>Image</th>
                                <th>Status</th>
                                <th colspan="2">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($teachers as $teacher)
                            <tr>
                                <th scope="row">{{$loop->iteration}}</th>
                                <td>{{$teacher->id}}</td>
                                <td>{{$teacher->name}}</td>
                                <td>{{$teacher->email}}</td>
                                <td>{{$teacher->code}}</td>
                                <td>{{$teacher->mobile}}</td>
                                <td>{{$teacher->address}}</td>
                                <td><img src="{{asset('/').$teacher->image}}" alt="" height="50" width="50"></td>
                                <td>{{$teacher->status}}</td>

                                <td>
                                    <a href="{{route('edit-teacher', ['id' => $teacher->id])}}" class="btn btn-success mx-2">  <i class="fa fa-edit"></i>  </a>
                                    <a href="{{route('delete-teacher', ['id' => $teacher->id])}}" class="btn btn-danger ">  <i class="fa fa-trash"></i>  </a>
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
