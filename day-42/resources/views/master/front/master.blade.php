<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title')</title>

    <link rel="stylesheet" href="{{asset('/css/bootstrap.css')}}">
    <link rel="stylesheet" href="{{asset('/css/all.css')}}">
    <link rel="stylesheet" href="{{asset('/css/style.css')}}">
</head>
<body>


    <nav class="navbar navbar-expand-md navbar-dark bg-success border-bottom shadow-lg sticky-top">
        <div class="container">
            <a href="" class="navbar-brand">| LOGO |</a>

            <ul class="navbar-nav ml-auto">
                <li><a href="{{route('home')}}" class="nav-link text-white">Home</a></li>
                <li><a href="" class="nav-link text-white">All Course</a></li>
                <li><a href="{{route('user-login')}}" class="nav-link text-white">Login</a></li>
                <li><a href="{{route('user-register')}}" class="nav-link text-white">Registration</a></li>
            </ul>
        </div>
    </nav>

    @yield('body')








    <footer class="pt-5 pb-4 bg-dark">
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div class="card card-body">
                        <h3>About Institute</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab aliquam quasi quis quod voluptas. Amet assumenda consequuntur dolorem esse expedita laboriosam maxime molestiae mollitia obcaecati odio officiis, possimus tempore voluptatem.  odio officiis,  voluptatem.  possimus tempore voluptatem.</p>
                    </div>
                </div>

                <div class="col-sm-4">
                    <div class="card card-body rounded-0">
                        <h3>popular Link</h3>
                        <hr>
                        <ul>
                            <li><a href="#">Popular Course One</a></li>
                            <li><a href="#">Popular Course two</a></li>
                            <li><a href="#">Popular Course three</a></li>
                            <li><a href="#">Popular Course Four</a></li>
                            <li><a href="#">Popular Course Four</a></li>
                            <li><a href="#">Popular Course Four</a></li>

                        </ul>
                    </div>
                </div>

                <div class="col-sm-4">
                    <div class="card card-body rounded-0">
                        <h3>Follow Us On</h3>
                        <hr>
                        <ul class="nav">
                            <li><a href="" class="nav-link"><i class="fab fa-facebook-square fa-2x"></i></a></li>
                            <li><a href="" class="nav-link"><i class="fab fa-twitter-square fa-2x"></i></a></li>
                            <li><a href="" class="nav-link"><i class="fab fa-linkedin fa-2x"></i></a></li>
                            <li><a href="" class="nav-link"><i class="fab fa-linkedin fa-2x"></i></a></li>
                            <li><a href="" class="nav-link"><i class="fab fa-youtube-square fa-2x"></i></a></li>
                            <li><a href="" class="nav-link"><i class="fab fa-instagram-square fa-2x"></i></a></li>
                            <li><a href="" class="nav-link"><i class="fab fa-whatsapp-square fa-2x"></i></a></li>
                            <li><a href="" class="nav-link"><i class="fab fa-github-square fa-2x"></i></a></li>
                            <li><a href="" class="nav-link"><i class="fab fa-github-square fa-2x"></i></a></li>
                            <li><a href="" class="nav-link"><i class="fab fa-discord fa-2x"></i></a></li>
                            <li><a href="" class="nav-link"><i class="fab fa-telegram-plane fa-2x"></i></a></li>
                            <li><a href="" class="nav-link"><i class="fab fa-telegram-plane fa-2x"></i></a></li>
                            <li><a href="" class="nav-link"><i class="fab fa-vimeo-v fa-2x"></i></a></li>
                            <li><a href="" class="nav-link"><i class="fab fa-behance-square fa-2x"></i></a></li>
                            <li><a href="" class="nav-link"><i class="fab fa-linkedin fa-2x"></i></a></li>


                        </ul>
                    </div>
                </div>


            </div>
            <hr class="bg-white mt-5">
            <div class="row">
                <div class="col-md-12">
                    <p class="text-white text-center mb-0 v-">Copyright@2022, All Right reserved by Shykot Hasan</p>
                </div>
            </div>



        </div>
    </footer>






    <script src="{{asset('/js/jquery.js')}}"></script>
    <script src="{{asset('/js/bootstrap.js')}}"></script>
</body>
</html>
