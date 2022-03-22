@extends('master.front.master')

@section('title')
    Enroll Form
@endsection




@section('body')

    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-8 mx-auto">
                    <div class="card">
                        <div class="card-header">Enroll Form</div>

                        <div class="card-body">
                            <form action="" method="POST">
                                @csrf

                                <div class="row ">
                                    <label for="" class="col-md-3">Student Name</label>
                                    <div class="col-md-9">
                                        <input type="text" name="name" class="form-control">
                                    </div>
                                </div>

                                <div class="row mt-3">
                                    <label for="" class="col-md-3">Email Address</label>
                                    <div class="col-md-9">
                                        <input type="email" name="email" class="form-control">
                                    </div>
                                </div>

                                <div class="row my-3">
                                    <label for="" class="col-md-3">Phone Number</label>
                                    <div class="col-md-9">
                                        <input type="number" name="number" class="form-control">
                                    </div>
                                </div>

                                <div class="row">
                                    <label for="" class="col-md-3"></label>
                                    <div class="col-md-9">
                                        <input type="submit"  class="btn btn-outline-info" value="Confirm Enroll">
                                    </div>
                                </div>



                            </form>
                        </div>



                    </div>
                </div>
            </div>
        </div>
    </section>





@endsection
