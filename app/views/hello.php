<div class="scripts">
    <link rel="stylesheet" type="text/css" href="assets/plugin/css/style.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <script type="text/javascript" src="assets/js/jquery-1.6.1.min.js"></script>
    <script type="text/javascript" src="assets/plugin/jquery-jplayer/jquery.jplayer.js"></script>
    <script type="text/javascript" src="assets/plugin/ttw-music-player-min.js"></script>
    <script type="text/javascript" src="assets/js/myplaylist.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <script type="text/javascript" >
        $(document).ready(function(){
            var description = '';
                $('div.homepage-video').ttwMusicPlayer(myPlaylist, {
                    autoPlay:false,
                    description:description,
                    jPlayer:{
                        swfPath:"assets/plugin/jquery-jplayer"
                    }
                });
        });
    </script>
</div>
<div class="content">

    <div class='bba-image'>
        <a href='./'>
            <img src='./assets/images/BBA.png' />
        </a>
    </div>
    <div class='homepage-video'>

    </div>
    <div class="login">
        <a href=login.php>login</a>
    </div>
</div>
