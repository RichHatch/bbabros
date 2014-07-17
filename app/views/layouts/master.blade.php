<html>
    <head>
       <title>BBA Bros</title> 
        <link href="assets/css/style.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    <body>
        @section('sidebar')
            This is the master sidebar.
        @show

        <div class="container">
            @yield('content')
        </div>
    </body>
</html>
