<!DOCTYPE html>
<html lang="en">
<head>
    <title>dima tree.js</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
    <link  href="style.css" type="text/css" rel="stylesheet">
    <script type="text/javascript">
        //здесь будет определятся проэкт панорамы и комната
        var pano = "<?php echo('firstproject'); ?>", room="<?php echo('firstroom'); ?>";

    </script>
</head>
<body>

<div id="container">
    <canvas id="mycanvas"></canvas>

</div>
<div id="look_image">
    <div id="opacity">

    </div>
    <div id="img_in">
        <img src="projects/firstproject/firstroom/2/pano.jpg" width="50">
        <img src="projects/firstproject/firstroom/3/pano.jpg" width="50">
    </div>
</div>
<div id="menu_next">
    <div class="next">
        <a href="">

        </a>

    </div>

    <div class="prev">
        <a href="">

        </a>
    </div>

</div>


<script src="tree/build/three.js"></script>
<script src="tree/dom.js"></script>
<script src="tree/dev.js"></script>
<script src="tree/common.js"></script>

</body>
</html>
