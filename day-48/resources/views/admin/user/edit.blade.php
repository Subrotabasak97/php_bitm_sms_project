@extends('master.admin.master')

@section('body')



    <div class="row">
        <div class="col-lg-10 mx-auto">
            <div class="card ">
                <div class="card-body">
                    <h4 class="card-title mb-4">Update User Form</h4>

                    <form action="{{route('update-user', ['id' => $user->id])}}" method="POST">
                        @csrf
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Full Name</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="horizontal-firstname-input" name="name" value="{{$user->name}}">
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-email-input" class="col-sm-3 col-form-label">Email</label>
                            <div class="col-sm-9">
                                <input type="email" class="form-control" id="horizontal-email-input" name="email" value="{{$user->email}}">
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-password-input" class="col-sm-3 col-form-label">Password</label>
                            <div class="col-sm-9">
                                <input type="password" class="form-control" id="horizontal-password-input" name="password">
                            </div>
                        </div>

                        <div class="form-group row justify-content-end">
                            <div class="col-sm-9">


                                <div>
                                    <button type="submit" class="btn btn-primary w-md">Update User Info</button>
                                </div>
                            </div>
                        </div>
                    </form>
                    <p class="text-center text-success font-weight-bold">{{Session::get('message')}}</p>
                </div>
            </div>
        </div>
    </div>




@endsection
