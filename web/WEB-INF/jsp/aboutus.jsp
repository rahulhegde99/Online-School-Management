<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="taglib_includes.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rahul's College</title>
        <link href="../css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" crossorigin="anonymous">

        <style>
            * {box-sizing: border-box;}
            ul {list-style-type: none;}
            body {font-family: Verdana, sans-serif;}

            .month {
                padding: 25px 25px;
                width: 100%;
                background: #1087dd;
                text-align: center;
            }

            .month ul {
                margin: 0;
                padding: 0;
            }

            .month ul li {
                color: white;
                font-size: 15px;
                text-transform: uppercase;
                letter-spacing: 3px;
            }

            .month .prev {
                float: left;
                padding-top: 10px;
            }

            .month .next {
                float: right;
                padding-top: 10px;
            }

            .weekdays {
                margin: 0;
                padding: 10px 0;
                background-color: #ddd;
            }

            .weekdays li {
                display: inline-block;
                width: 13.6%;
                color: #666;
                text-align: center;
            }

            .days {
                padding: 10px 0;
                background: #eee;
                margin: 0;
            }

            .days li {
                list-style-type: none;
                display: inline-block;
                width: 13.6%;
                text-align: center;
                margin-bottom: 5px;
                font-size:12px;
                color: #777;
            }

            .days li .active {
                padding: 5px;
                background: #1087dd;
                color: white !important
            }

            /* Add media queries for smaller screens */
            @media screen and (max-width:720px) {
                .weekdays li, .days li {width: 13.1%;}
            }

            @media screen and (max-width: 420px) {
                .weekdays li, .days li {width: 12.5%;}
                .days li .active {padding: 2px;}
            }

            @media screen and (max-width: 290px) {
                .weekdays li, .days li {width: 12.2%;}
            }
        </style>
    </head>
    <body>

        <%--<spring:url value="/logout" var="url_logout"/>--%>

        <div class="container">
            <!--nav bar-->
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="index.htm">JSSATE</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item ">
                            <a class="nav-link" href="index.htm">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="credits.htm">Credits</a>
                        </li>
                    </ul >
                    <form class="form-inline my-2 my-lg-2">
                       
                        <a class="mr-sm-2" href="login.htm" >Login</a>
                    </form>


                </div>
            </nav>
            <!--jumbotron-->
            <div class="jumbotron jumbotron-fluid">
                <div class="container">
                    <h1 class="display-4">Welcome..</h1>
                    <p class="lead">To our DBMS Project</p>
                </div>
            </div>
            <!--body-->
            <div class="row">
                <div class="col-2 col-md-2">

                    <div class="list-group">
                        <a href="index.htm" class="list-group-item list-group-item-action">Home</a>
                        <a href="#" class="list-group-item list-group-item-action active">About us</a>
                        <a href="#" class="list-group-item list-group-item-action">Contact</a>
                        <a href="notice_board.htm" class="list-group-item list-group-item-action">Notice</a>
                        <a href="all_teachers" class="list-group-item list-group-item-action ">Teachers Information</a>
                        <a href="student_information.htm" class="list-group-item list-group-item-action ">Students Information</a>
                    </div>
                    <!--calender--><br/>
                    <div class="month">      
                        <ul>
                            <li class="prev">&#10094;</li>
                            <li class="next">&#10095;</li>
                            <li>
                                August<br>
                                <span style="font-size:12px">2018</span>
                            </li>
                        </ul>
                    </div>

                    <ul class="weekdays">
                        <li>Mo</li>
                        <li>Tu</li>
                        <li>We</li>
                        <li>Th</li>
                        <li>Fr</li>
                        <li>Sa</li>
                        <li>Su</li>
                    </ul>

                    <ul class="days">  
                        <li>1</li>
                        <li>2</li>
                        <li>3</li>
                        <li>4</li>
                        <li>5</li>
                        <li>6</li>
                        <li>7</li>
                        <li>8</li>
                        <li>9</li>
                        <li><span class="active">10</span></li>
                        <li>11</li>
                        <li>12</li>
                        <li>13</li>
                        <li>14</li>
                        <li>15</li>
                        <li>16</li>
                        <li>17</li>
                        <li>18</li>
                        <li>19</li>
                        <li>20</li>
                        <li>21</li>
                        <li>22</li>
                        <li>23</li>
                        <li>24</li>
                        <li>25</li>
                        <li>26</li>
                        <li>27</li>
                        <li>28</li>
                        <li>29</li>
                        <li>30</li>
                        <li>31</li>
                    </ul>

                </div>
                <div class="col-7 col-sm-12 col-md-7">
                    <div class="row">
                        <div class="col-4">
                            <div class="card text-center">
                                <div class="card-header">
                                    Total Students
                                </div>
                                <div class="card-body">
                                    <h1 class="card-title">5</h1>
                                </div>
                                <div class="card-footer text-muted">

                                </div>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="card text-center">
                                <div class="card-header">
                                    Total Teachers
                                </div>
                                <div class="card-body">
                                    <h1 class="card-title">2</h1>
                                </div>
                                <div class="card-footer text-muted">
                                </div>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="card text-center">
                                <div class="card-header">
                                    Total Employees
                                </div>
                                <div class="card-body">
                                    <h1 class="card-title">5</h1>
                                </div>
                                <div class="card-footer text-muted">

                                </div>
                            </div>
                        </div>
                    </div>
                    <br/>
                    <div class="container border rounded">
                        <h1 class="pgheader" style="border: none;margin-left: 20px;">About us</h1>
                        <hr/>
                <p align="justify" style="text-indent: 30px;margin-left: 30px;margin-right: 30px;line-height: 1.5em;">
                  JSS Academy of Technical Education (JSSATE)  
                  was established in the year 1997 at Bangalore and is under the umbrella of JSS Mahavidyapeetha, Mysore. <br/></p>
                <p align="justify" style="text-indent: 30px;margin-left: 30px;margin-right: 30px;line-height: 1.5em;">
                  JSSATE is the result of the vision of our President, His Holiness Jagadguru Sri Shivarathri Deshikendra Mahaswamiji to proactively participate in establishing a world class Institution for Technical Education.
                </p>
                <p align="justify" style="text-indent: 30px;margin-left: 30px;margin-right: 30px;line-height: 1.5em;">
                  The Campus is located on a sprawling 21.17 acres land surrounded by lush green plantation on the South-Western edge of Bangalore City. The institution is affiliated to Visvesvaraya Technological University (VTU), Belgaum, India.
                </p>
                <p align="justify" style="text-indent: 30px;margin-left: 30px;margin-right: 30px;line-height: 1.5em;">
                    <br><a href="https://jssateb.ac.in/" target="_blank"  style="text-decoration: underline;">https://jssateb.ac.in/</a>.
                </p>
                
                    </div>

                </div>
                <div class="col-3 col-md-3">
                    <!--clock-->
                    <div class="row">
                        <div class="col-1"></div>
                        <div class="col-4">
                            <canvas  id="canvas" width="220" height="220"
                                     style="background-color:#1087dd;">
                            </canvas>
                        </div>
                    </div>
                    <br/>
                    <!--notice board-->
                    <button type="button" class="btn btn-secondary btn-lg btn-block">Notice Board</button>
                    <div class="list-group">
                        <c:forEach var="notices" items="${nts}">
                            <a class="list-group-item list-group-item-action ">
                                <div>
                                    <h4>&Rrightarrow; ${notices.n_title}</h4>
                                    <small>Publish Date: ${notices.publish_date}</small>
                                </div>
                            </a>
                        </c:forEach> 
                        <a class="list-group-item list-group-item-action " href="notice_board.htm">
                            <div>
                                <small style="padding-left:120px">See More..</small>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <script>
            var canvas = document.getElementById("canvas");
            var ctx = canvas.getContext("2d");
            var radius = canvas.height / 2;
            ctx.translate(radius, radius);
            radius = radius * 0.90
            setInterval(drawClock, 1000);

            function drawClock() {
                drawFace(ctx, radius);
                drawNumbers(ctx, radius);
                drawTime(ctx, radius);
            }

            function drawFace(ctx, radius) {
                var grad;
                ctx.beginPath();
                ctx.arc(0, 0, radius, 0, 2 * Math.PI);
                ctx.fillStyle = 'white';
                ctx.fill();
                grad = ctx.createRadialGradient(0, 0, radius * 0.95, 0, 0, radius * 1.05);
                grad.addColorStop(0, '#333');
                grad.addColorStop(0.5, 'white');
                grad.addColorStop(1, '#333');
                ctx.strokeStyle = grad;
                ctx.lineWidth = radius * 0.1;
                ctx.stroke();
                ctx.beginPath();
                ctx.arc(0, 0, radius * 0.1, 0, 2 * Math.PI);
                ctx.fillStyle = '#333';
                ctx.fill();
            }

            function drawNumbers(ctx, radius) {
                var ang;
                var num;
                ctx.font = radius * 0.15 + "px arial";
                ctx.textBaseline = "middle";
                ctx.textAlign = "center";
                for (num = 1; num < 13; num++) {
                    ang = num * Math.PI / 6;
                    ctx.rotate(ang);
                    ctx.translate(0, -radius * 0.85);
                    ctx.rotate(-ang);
                    ctx.fillText(num.toString(), 0, 0);
                    ctx.rotate(ang);
                    ctx.translate(0, radius * 0.85);
                    ctx.rotate(-ang);
                }
            }

            function drawTime(ctx, radius) {
                var now = new Date();
                var hour = now.getHours();
                var minute = now.getMinutes();
                var second = now.getSeconds();
                //hour
                hour = hour % 12;
                hour = (hour * Math.PI / 6) +
                        (minute * Math.PI / (6 * 60)) +
                        (second * Math.PI / (360 * 60));
                drawHand(ctx, hour, radius * 0.5, radius * 0.07);
                //minute
                minute = (minute * Math.PI / 30) + (second * Math.PI / (30 * 60));
                drawHand(ctx, minute, radius * 0.8, radius * 0.07);
                // second
                second = (second * Math.PI / 30);
                drawHand(ctx, second, radius * 0.9, radius * 0.02);
            }

            function drawHand(ctx, pos, length, width) {
                ctx.beginPath();
                ctx.lineWidth = width;
                ctx.lineCap = "round";
                ctx.moveTo(0, 0);
                ctx.rotate(pos);
                ctx.lineTo(0, -length);
                ctx.stroke();
                ctx.rotate(-pos);
            }
        </script>
    </body>
</html>

