@extends('master.admin.master')

@section('body')

    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Manage Users</h4>
                    <p class="card-title-desc">

                    </p>

                    <div class="table-responsive bg-info ">
                        <table class="table table-bordered table-hover mb-0 ">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>ID</th>
                                <th>Full Name</th>
                                <th>Email</th>
                                <th>Actions</th>

                            </tr>
                            </thead>
                            <tbody>
                            @foreach($users as $user)
                            <tr>
                                <th scope="row">{{$loop->iteration}}</th>
                                <td>{{$user->id}}</td>
                                <td>{{$user->name}}</td>
                                <td>{{$user->email}}</td>
                                <td>
                                    <a href="{{route('edit-user', ['id' => $user->id])}}" class="btn btn-success mx-2">  <i class="fa fa-edit"></i>  </a>
                                    <a href="{{route('delete-user', ['id' => $user->id])}}" class="btn btn-danger mx-2 {{$user->id == 1 ? 'disabled' : ''}}">  <i class="fa fa-trash"></i>  </a>
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
