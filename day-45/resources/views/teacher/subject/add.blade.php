@extends('master.teacher.master')

@section('body')


    <div class="row">
        <div class="col-lg-10 mx-auto">
            <div class="card ">
                <div class="card-body">
                    <h4 class="card-title mb-4">ADD Subject Form</h4>

                    <form action="{{route('new-subject')}}" method="POST"   enctype="multipart/form-data">
                        @csrf
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Subject Title</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="horizontal-firstname-input" name="title">
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-email-input" class="col-sm-3 col-form-label">Subject Code</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="horizontal-email-input" name="code">
                            </div>
                        </div>

                        <div class="form-group row mb-4">
                            <label for="horizontal-mobile-input" class="col-sm-3 col-form-label">Subject Fee</label>
                            <div class="col-sm-9">
                                <input type="number" class="form-control" id="horizontal-password-input" name="fee">
                            </div>
                        </div>

                        <div class="form-group row mb-4">
                            <label for="horizontal-address-input" class="col-sm-3 col-form-label">Short Description</label>
                            <div class="col-sm-9">

                                <textarea name="short_description" class="form-control summernote"></textarea>
                            </div>
                        </div>

                        <div class="form-group row mb-4">
                            <label for="horizontal-address-input" class="col-sm-3 col-form-label">Long Description</label>
                            <div class="col-sm-9">

                                <textarea name="long_description" class="form-control summernote"></textarea>
                            </div>
                        </div>

                        <div class="form-group row mb-4">
                            <label for="horizontal-image-input" class="col-sm-3 col-form-label">Image</label>
                            <div class="col-sm-9">
                                <input type="file" name="image"  class="form-control-file" accept="image/*">
                            </div>
                        </div>

                        <div class="form-group row justify-content-end">
                            <div class="col-sm-9">

                                <div>
                                    <button type="submit" class="btn btn-primary w-md">Create New Subject</button>
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
