<!DOCTYPE html>
<html>
<head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
            integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
            integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
        <link rel="stylesheet" href="css/style.css">
        <title>Rightmove - India's number one website for properties for sale and to rent</title>
        <link rel="icon" href="/img/download.png" type="image/png">
</head>
<body> 

    
        <nav class="navbar navbar-expand-sm navbar-light">
                <div class="container-fluid">
                    <a class="navbar-brand ml-5" href="home"><img src="img/Capture.PNG"></a>
                    <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarNav">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarNav">
                        <ul class="navbar-nav navbar-right ">
                            <li class="nav-item dropdown">
                                <a class="nav-link " data-toggle="dropdown" href="">Buy</a>
                                <ul>
                                    <div class="dropdown-menu">
                                        <li>
                                            <a href="#" class="dropdown-item">link1</a>
                                        </li>
                                        <li>
                                            <a href="#" class="dropdown-item">link2</a>
                                        </li>
                                        <li>
                                            <a href="#" class="dropdown-item">link3</a>
                                        </li>
                                    </div>
                                </ul>
        
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Rent</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#" id="agent">Find Agent</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#" id="price">House Prices</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Commercial</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Inspire</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Overseas</a>
                            </li>
                            <li class="nav-item">
                         <form  action="login" method="POST">
                                            <div id="userl" class="form-group">
                                <input type="text" class="form-control mr-1 mt-1 nav-link" placeholder="User name" name="user"
                                    id="username">
                                    <div id="namel_error"></div>
                                    </div>
                            </li>
                            <li class="nav-item"> 
                                    <div id="passl" class="form-group">
                                <input type="password"  class="form-control mr-1 mt-1 nav-link" placeholder="Password" name="pass" id="pwd">
                                 <div   id="passl_error"></div>
                                    </div>
                            </li>
                            <li class="nav-item">
                                <button  class="btn mr-1 mt-1 nav-link btn btn-outline-secondary"  type="submit"   >Login</button>
                            </li>
                        </form>
                            <li class="nav-item">
                                <button class="btn mr-1 mt-1 nav-link btn-secondary" data-target="#signin"
                                    data-toggle="modal" id="btn">Sign In</button>
                            </li>
                        </ul>
                        <!-- LOGIN MODAL -->
                        <div class="modal" id="signin">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="text">Login</h5>
                                        <button class="close" data-dismiss="modal">&times;</button>
                                    </div>
                                    <!--------- Regerster ----------->
                                    <div class="modal-body">
                                        <form onsubmit="return Validate()" name="vform" action="insert" method="POST">
                                            <div id="user" class="form-group">
                                                <label for="username" id="text">Username</label>
                                                <input type="text" placeholder="Username" name="user" class="form-control">
                                                <div id="name_error"></div>
                                            </div>
                                            <div id="email" class="form-group">
                                                <label for="email" id="text">Email</label>
                                                <input type="text" placeholder="Email" name="email" class="form-control">
                                                <div id="name_error"></div>
                                            </div>
                                            
                                            <div id="pass" class="form-group">
                                                <label for="password" id="text">Password</label>
                                                <input type="password" placeholder="Password" name="pass" class="form-control">
                                            </div>
                                            <div id="cpass" class="form-group">
                                                <label for="password1" id="text">Confirm Password</label>
                                                <input type="password" placeholder="Password" name="cpass" class="form-control" id="password1">
                                                 <div id="password_error"></div>
                                            </div>
                                           
                                           
                                    </div>
                                    <div class="modal-footer">
                                        <button  class="btn btn-primary" type="submit"  >Submit</button>
                                    </div>
                                </form>
                                </div> 
                            </div>
                        </div>
                    </div>
                </div>
                </div>
        
            </nav>
        
    
    <!-- <h2 class="form-signin-heading">Property for sale in ${city}</h2> -->
   
   <h2 class="form-signin-heading">Property for sale in ${city}</h2>
        <form class="form-signin" action="prog"  method="POST">
                            
                        City:  <select name="city"   required autofocus>
                        <option value="${city}">${city}</option>
                </select>
            <p>
                Property Type:  <select name="type"   required autofocus>
              <option value="Any">Any</option>
              <option value="House">House</option>
              <option value="Flat/Appartment">Flat/Appartment</option>
              <option value="Bungalows">Bungalows</option>
              <option value="Land">Land</option>
              <option value="Commercial Property">Commercial Property</option>
              <option value="Others">Others</option>
            </select> 
          </p>
          <p>
    
            No of Bedrooms: <select   name="no_of_bedrooms"  >
            <option value=""></option>    
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="More">More</option>
          </select>   </p>
             <p>
             
            <button  class="btn btn-primary" type="submit"  name="buy" value="For sale">Search</button>
            
        </form>
        <div class="mapouter">
            <div class="gmap_canvas">
                <iframe width="600" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=${city}h&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0">
                </iframe>
                <a href="https://www.pureblack.de">
                </a></div>
                <style>
                .mapouter{
                    position:relative;
                    text-align:right;
                    height:500px;
                    width:600px;}
                    .gmap_canvas {
                        overflow:hidden;
                        background:none!important;
                        height:500px;
                        width:600px;}
                        </style>
                        </div> 

</body>
</html>