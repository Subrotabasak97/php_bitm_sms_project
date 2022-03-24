@extends('master.admin.master')

@section('body')



    <div class="row">
        <div class="col-lg-10 mx-auto">
            <div class="card ">
                <div class="card-body">
                    <h4 class="card-title mb-4">ADD Teacher Form</h4>

                    <form action="{{route('update-teacher', ['id' => $teacher->id])}}" method="POST"   enctype="multipart/form-data">
                        @csrf
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Full Name</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="horizontal-firstname-input" name="name" value="{{$teacher->name}}">
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-email-input" class="col-sm-3 col-form-label">Email</label>
                            <div class="col-sm-9">
                                <input type="email" class="form-control" id="horizontal-email-input" name="email" value="{{$teacher->email}}">
                            </div>
                        </div>

                        <div class="form-group row mb-4">
                            <label for="horizontal-mobile-input" class="col-sm-3 col-form-label">Mobile</label>
                            <div class="col-sm-9">
                                <input type="number" class="form-control" id="horizontal-password-input" name="mobile" value="{{$teacher->mobile}}">
                            </div>
                        </div>

                        <div class="form-group row mb-4">
                            <label for="horizontal-address-input" class="col-sm-3 col-form-label">Address</label>
                            <div class="col-sm-9">

                                <textarea name="address" class="form-control">{{$teacher->address}}</textarea>
                            </div>
                        </div>

                        <div class="form-group row mb-4">
                            <label for="horizontal-image-input" class="col-sm-3 col-form-label">Image</label>
                            <div class="col-sm-9">
                                <input type="file" name="image"  class="form-control-file" accept="image/*">
                                <img src="{{asset($teacher->image)}}" alt="" height="150" width="150">
                            </div>
                        </div>

                        <div class="form-group row mb-4">
                            <label for="horizontal-image-input" class="col-sm-3 col-form-label">Status</label>
                            <div class="col-sm-9">
                                <label><input type="radio" {{$teacher->status == 1 ? 'checked' : ''}} name="status" value="1"> Active </label>
                                <label><input type="radio" {{$teacher->status == 0 ? 'checked' : ''}} name="status" value="0"> Inactive </label>
                            </div>
                        </div>


                        <div class="form-group row justify-content-end">
                            <div class="col-sm-9">

                                <div>
                                    <button type="submit" class="btn btn-primary w-md">Update Teacher Info</button>
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