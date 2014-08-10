<?php
/**
 * Created by PhpStorm.
 * User: dima
 * Date: 10.08.14
 * Time: 14:57
 */

include ("config.php");
include("lib/XMLread.php");

//вычисляем какой нам необходимо подгружать проэкт и какую точку
$poject = $_GET['project'];
$point  = 0;
//проверим, необходимость перейти на какаую-либо конкретную точку в проэкте
if(array_key_exists('point',$_GET)){
    $point  = $_GET['point'];
}

/**
 * перевод в массив данных из XML файла
 * @param $mvalues
 * @return PointXML
 */
function parseMol($mvalues)
{
    for ($i=0; $i < count($mvalues); $i++) {
        $mol[$mvalues[$i]["tag"]] = $mvalues[$i]["value"];
    }
    return new PointXML($mol);
}
//открытие XML файла и запись всх точек

if (file_exists($xmlfile)) {

    $dbxml = readDatabase($xmlfile);

} else {
    exit('none '.$xmlfile);
}

// передача точек проэкта в JS
$points = json_encode($dbxml);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>dima tree.js</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
    <link  href="style.css" type="text/css" rel="stylesheet">
    <script type="text/javascript">
        //здесь будет определятся проэкт панорамы и комната
        var project = "<?php echo($poject); ?>", point="<?php echo($point); ?>";

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
        <?php


/*здесь можно сделать перебор фотографий
        if ($handle = opendir('/projects/'.$poject.'/images')) {

            // Именно этот способ чтения элементов каталога является правильным.
            while (false !== ($file = readdir($handle))) {
                echo "$file\n";
            }

            closedir($handle);
        }
        */
        ?>
    </div>
</div>


<!-- стрелки
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
-->

<script src="tree/build/three.js"></script>
<script src="tree/dom.js"></script>
<script src="tree/dev.js"></script>
<script src="tree/common.js"></script>

</body>
</html>
