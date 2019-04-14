<?php
require_once './api/connection.php';

if (isset($_POST['username']) && isset($_POST['password']) && isset($_POST['usertype'])) {
    $username = escape($_POST['username']); //escape for validity.
    $password = escape($_POST['password']);
    $usertype = escape($_POST['usertype']);
    if ($usertype == 'student') {

        $sql = "select * from members where RollNo = '$username' and Password = '$password';";

        $res = $conn->query($sql);

        if ($res && $row = $res->fetch_assoc()) {
            $_SESSION['loggedin'] = true;
            $_SESSION['usertype'] = 'student';
            $_SESSION['name'] = $row['MemberName'];
            $_SESSION['rollno'] = $row['RollNo'];
            header('Location: student.php');
        } else {
            //error if not find in the databases.
            $errmsg = "Sorry. Rollno/Password doesn't match.";
        }
    }

     else if ($usertype == 'messadmin') {   //if admin radio button is selected.

        $sql = "select * from mess where MessCoordinator = '$username' and MessPassword = '$password';";

        $res = $conn->query($sql);
        if ($res && $row = $res->fetch_assoc()) { //if res is not null and fetch some from databases.

            $_SESSION['loggedin'] = true;
            $_SESSION['usertype'] = 'mess';
            $_SESSION['messname'] = $row['MessName'];
            $_SESSION['mess_id'] = $row['MessID'];
            header('Location: admin.php');
        } else {
            $errmsg = "Sorry. Username/Password doesn't match.";
        }
    }
}
 $signup = false;

if (isset($_POST['rollino']) && isset($_POST['name']) && isset($_POST['password']) && isset($_POST['phone'])) {
    $rollno =  strtolower(escape($_POST['rollno'])); //it can be given as capital or small names auto convert in small.
    $name = escape($_POST['name']);
    $password = escape($_POST['password']);
    $phone = escape($_POST['phone']);
    $signup = true;
    $signmsg = "";

    if(!preg_match('/^b\d{6}(cs|it|ec|ee|me|ce|pe|ch|ep|ar|bt)$/', $rollno)){
       $signmsg .= "Roll No is not valid. Example of valid roll no : b130705cs.<br/>";
    }
    else{

        $sql = "insert into members values('$rollno','$name','$password','5','$phone')";

        if($conn->query($sql)){
            $_SESSION['loggedin'] = true;
            $_SESSION['usertype'] = 'student';
            $_SESSION['name'] = $name;
            $_SESSION['rollno'] = $rollno;
            header('Location: student.php');
            $signmsg = "Roll No already exits. Contact System Administrator.";

        }else{
        }
    }

}
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>MNNIT Mess Mgmt System</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.min.css" media="screen"/>
        <link rel="stylesheet" href="css/login.css" media="screen">

        <script src="js/libs/jquery-1.11.3.min.js"></script>
        <script src="js/libs/dynamics.min.js"></script>
        <script src="js/libs/angular.min.js"></script>
        <script src="js/libs/angular-route.min.js"></script>
        <script src="js/libs/angular-resource.min.js"></script>
        <script src="js/libs/angular-animate.min.js"></script>
        <script src="js/libs/angular-aria.min.js"></script>

    </head>
    <body>
          <p style="text-align:center;margin-top:30px;"> <img src="./images/MNNIT.png" alt="mnnit logo" height="120" width="120" /></p>
          <h1>Welcome in Motilal Nehru National Institute of  Technology Allahabad, Prayagraj</h1?
        <div class="container-fluid">
            <div class="row">

                <div class="col-md-6 col-md-offset-3" style="margin-top: 100px">
                    <div style="position: relative">
                        <img src="./images/logo.jpg" class="himg" />
                        <h1>Mess Management System </h1>
                    </div>
                </div>
            </div>
            <div class="row" style="margin-top: 50px">
                <div class="col-md-6 col-md-offset-3">
                    <div class="flip-container">
                        <div class="flipper">
                            <div class="front" <?php if($signup){ echo 'style="display:none"';}?>>
                                <form method="POST" action="login.php">
                                    <input type="hidden" name="type" value="login" />
                                    <p style="color:#ff6666"><?= isset($errmsg) ? $errmsg : "" ?></php>
                                    <div class="form-group">
                                        <label>Mess Coordinator/Rollno(Student)</label>
                                        <input type="text" name="username" class="form-control"  placeholder="Username/rollno">
                                    </div>
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input type="password" name="password" class="form-control" placeholder="Password">
                                    </div>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="usertype" value="student" checked>
                                            Student
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="usertype" value="messadmin">
                                            Mess Admin
                                        </label>
                                    </div>

                                    <button type="submit" class="btn btn-default">Submit</button>
                                    <a href="#" class="signup btn btn-danger">Sign Up</a>


                                </form>
                            </div><br>
                            <h3><a href="sysadmin.php" class="chief" >Chief Warden View</a></h3>
                            <div class="back" <?php if(!$signup){ echo 'style="display:none"';}?>>

                                <form method="POST" action="login.php">
                                    <input type="hidden" name="type" value="signup" />
                                    <p style="color:#ff6666"><?= isset($signmsg) ? $signmsg : "" ?></php>
                                    <div class="form-group">
                                        <label>Rollno</label>
                                        <input type="text" name="rollno" class="form-control"  placeholder="Rollno" value="<?php if(isset($rollno)){echo $rollno;}?>" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Name</label>
                                        <input type="text" name="name" class="form-control"  placeholder="Name" value="<?php if(isset($name)){echo $name;}?>" required>
                                    </div>

                                    <div class="form-group">
                                        <label>Phone</label>
                                        <input type="text" name="phone" class="form-control"  placeholder="Phone" value="<?php if(isset($phone)){echo $phone;}?>" required>
                                    </div>

                                    <div class="form-group">
                                        <label>Password</label>
                                        <input type="password" name="password" class="form-control" placeholder="Password" required>
                                    </div>


                                    <button type="submit" class="btn btn-default">Submit</button>
                                    <a href="#" class="login btn btn-danger">Login</a>


                                    <!-- <a href="#" class="login btn btn-danger">Login</a> -->

                                </form>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <br><br>
              <h4><b>DEVELOPED BY:</b></h4>
              <p style="margin-left:150px;">1.  Shubham Yadav</p>
              <p style="margin-left:150px;">2.  Saurav Kumar Chaudhary</p>
              <p style="margin-left:150px;">3.  Nikash Sonowal</p>
              <p style="margin-left:150px;">4.  Nimesh Jain</p>
              <br>
              <br>
              <hr>
              <center><p>All Rights Reserverd</p></center>
              <center><p>Copyright 2019</p></center>
              <br>
            </div>


        <script>
            var front = $(".front");
            var back = $(".back");

            $(".signup").click(function () {
                front.slideToggle(550);
                back.delay(800).slideToggle(550);
            });

            $(".login").click(function () {
                back.slideToggle(550);
                front.delay(800).slideToggle(600);
            });

        </script>

    </body>
</html>
