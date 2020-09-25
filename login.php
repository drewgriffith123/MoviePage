<?php
require 'includes/header.php';
?>

<main>
    <link rel="stylesheet" href="css/login.css">
    <div class="bg-cover">
        <div class="container">
            <div id="slides" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#slides" data-slide-to="0" class="active"></li>
                    <li data-target="#slides" data-slide-to="1"></li>
                    <li data-target="#slides" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100 mx-auto" src="images/carousel/1.jpg" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100 mx-auto" src="images/carousel/2.jpg" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100 mx-auto" src="images/carousel/3.jpg" alt="Third slide">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#slides" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#slides" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>

        <div class="h-50 center-me">
            <div class="my-auto">
                <form class="form-signin" action="includes/login-helper.php" method="post">
                    <img src="images/symbol.jpg" style="width: 50%;">
                    <h1 class="h3 mb-3 font-weight-normal">Please Sign In</h1>
                    <label for="inputEmail"  class="sr-only">Username / Email Address</label>
                    <input type="email" name="uname" id="inputEmail" class="form-control" placeholder="Username / Email Address" required autofocus>

                    <label type="password" class="sr-only">Password</label>
                    <input type="password" name="pwd" id="inputPassword" class="form-control" placeholder="Password" required>
                    <div class="checkbox mb-3">
                        <label>
                            <input type="checkbox" value="remember-me"> Remember Me
                        </label>
                    </div>

                    <button id="login-button" name="login-submit" class="btn btn-lg btn-primary btn-block" type="submit">Sign In</button>
                    <p class="mt-5 mb-3 text-muted" id="copyright">&copy; 2020-2021</p>
                </form>
            </div>
        </div>
    </div>
</main>