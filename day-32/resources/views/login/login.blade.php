@extends('master.front.master')

@section('title')
    Login Form
@endsection




@section('body')

    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-8 mx-auto">
                    <div class="card">
                        <div class="card-header">Login Form</div>

                        <div class="card-body">
                            <form action="" method="POST">
                                @csrf
                                <div class="row ">
                                    <label for="" class="col-md-3">Email Address</label>
                                    <div class="col-md-9">
                                        <input type="email" name="email" class="form-control">
                                    </div>
                                </div>

                                <div class="row my-3">
                                    <label for="" class="col-md-3">Enter Password</label>
                                    <div class="col-md-9">
                                        <input type="password" name="password" class="form-control">
                                    </div>
                                </div>

                                <div class="row">
                                    <label for="" class="col-md-3"></label>
                                    <div class="col-md-9">
                                        <input type="submit"  class="btn btn-outline-primary" value="Login">
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
