<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Agency - Start Bootstrap Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- Theme CSS -->
    <link href="css/agency.min.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js" integrity="sha384-0s5Pv64cNZJieYFkXYOTId2HMA2Lfb6q2nAcx2n0RTLUnCAoTTsS0nKEO27XyKcY" crossorigin="anonymous"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js" integrity="sha384-ZoaMbDF+4LeFxg6WdScQ9nnR1QC2MIRxA1O9KWEXQwns1G8UNyIEZIQidzb0T1fo" crossorigin="anonymous"></script>
    <![endif]-->

</head>

<body id="page-top" class="index">

<!-- Navigation -->
<nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
            </button>
            <a class="navbar-brand page-scroll" href="#page-top">Start Bootstrap</a>
        </div>
    </div>
    <!-- /.container-fluid -->
</nav>

<!-- Header -->
<div class="cabeza" style="background-image: url('../img/header-bg.jpg')">
    <div class="container">
        <div class="intro-text" style="padding-top: 100px">

        </div>
        <div class="intro-text" style="padding-top: 60px">

        </div>
        <div class="intro-text" style="padding-top: 60px">

        </div>

        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading" style="color: white">Visualización de Estudiante</h2>
                </div>
            </div>
            <div class="row text-center">
                <div class="col-md-3">

                </div>
                <div class="col-md-6">
                    <form method="post" action="/perfil">
                        <div class="form-group row">
                            <label for="example-text-input" class="col-2 col-form-label" style="color: white">Matricula</label>
                            <div class="col-10">
                                <input class="form-control" type="text"  name="Matricula" value="${ele.getMatricula()}" readonly>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="example-search-input" class="col-2 col-form-label" style="color: white">Nombre</label>
                            <div class="col-10">
                                <input class="form-control" type="text" name="Nombre" value="${ele.getNombre()}">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="example-email-input" class="col-2 col-form-label" style="color: white">Apellido</label>
                            <div class="col-10">
                                <input class="form-control" type="text" name="Apellido" value="${ele.getApellido()}">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="example-url-input" class="col-2 col-form-label" style="color: white">Telefono</label>
                            <div class="col-10">
                                <input class="form-control" type="text" name="Telefono" value="${ele.getTelefono()}">
                            </div>
                        </div>
                        <div class="form-group row">
                            <button type="submit" class="btn btn-warning">Guardar</button>
                        </div>
                    </form>
                </div>
                <div class="col-md-3">

                </div>
            </div>
        </div>

        <div class="intro-text" style="padding-top: 60px">

        </div>
        <div class="intro-text" style="padding-top: 60px">

        </div>
        <div class="intro-text" style="padding-top: 60px">

        </div>
        <div class="intro-text" style="padding-top: 60px">

        </div>
    </div>
</div>

<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <span class="copyright">Copyright &copy; Francis 20120559</span>
            </div>
        </div>
    </div>
</footer>


<!-- jQuery -->
<script src="vendor/jquery/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- Plugin JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js" integrity="sha384-mE6eXfrb8jxl0rzJDBRanYqgBxtJ6Unn4/1F7q4xRRyIw7Vdg9jP4ycT7x1iVsgb" crossorigin="anonymous"></script>

<!-- Contact Form JavaScript -->
<script src="js/jqBootstrapValidation.js"></script>
<script src="js/contact_me.js"></script>

<!-- Theme JavaScript -->
<script src="js/agency.min.js"></script>

</body>

</html>
