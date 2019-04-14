<?php
session_start();
if(!$_SESSION['loggedin']){
    header("Location: login.php");
}
?>

<!DOCTYPE html>
<html lang="en" ng-app="messapp">
    <head>
        <title>MNNIT Mess Mgmt System</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.min.css" media="screen"/>
        <link rel="stylesheet" href="css/angular-material.min.css" media="screen" />
        <link rel="stylesheet" href="css/styles.css" media="screen">

        <script src="js/libs/jquery-1.11.3.min.js"></script>
        <script src="./js/libs/dynamics.min.js"></script>

        <script src="js/libs/angular.min.js"></script>
        <script src="js/libs/angular-route.min.js"></script>
        <script src="js/libs/angular-resource.min.js"></script>
        <script src="js/libs/angular-animate.min.js"></script>
        <script src="js/libs/angular-aria.min.js"></script>
        <script src="js/libs/angular-material.min.js"></script>


        <script src="js/student/app.js"></script>
        <script src="js/student/controllers.js"></script>
        <script src="js/student/services.js"></script>
        <script src="js/directives.js"></script>
    </head>
    <body >
        <div  class="container-fluid" ng-controller="AdminCtrl">
            <div class="sidenav">
                <div class="sidenavheader">
                    <h3>{{student.name}}</h3>
                </div>
                <ul>
                    <li ng-repeat="item in menu" ng-click="navigate(item.link)" ng-class="{active:current==item.link}">{{item.name}}</li>
                </ul>
                <!-- //ngclick in angular javascript tells about what to do on clicking button.  -->
            </div>
            <div class="row">
                <div class="col-md-10 col-md-offset-2" style="padding:0">
                    <div class="header">
                      <table>
                        <tr>
                          <td>
                            <img src="images/mess.png" alt="logo"  height="100px" <width="100px" >
                          </td>
                          <td align="center">
                            <h2>MNNIT Mess Management </h2>
                            <h3><b>Developer:</b> S.Yadav,Saurav,Nikash,Nimesh</h3>
                          </td>
                        </tr>
                      </table>
                    </div>
                    <div class="maincontainer" style="margin-top: 100px;" ng-view></div>
                </div>
            </div>
        </div>
    </body>
</html>
