<?php
/**
 * Created by PhpStorm.
 * User: kazak
 * Date: 21.08.14
 * Time: 15:48
 */

$dirs    = file('spisok');
$all_dir = array();

//читаем существующие проэкты
if ($handle = opendir('projects')) {
    while (false !== ($file = readdir($handle))) {
        if ($file != "." && $file != "..") {
            $all_dir[] =  "$file";
        }
    }
    closedir($handle);
}
$new_dir = $all_dir;
// находим новые проэкты
foreach($dirs as $k){
    foreach($all_dir as $f=>$j){
        if(preg_match( "/$j/",$k)){
            unset($new_dir[$f]);
        }
    }
}

/**
 * проходим по всем новы проэктам
 */

foreach($new_dir as $val){

    $points_panoram = array();

    if ($hand = opendir('projects/'.$val)) {
        while (false !== ($file = readdir($hand))) {
            if ($file != "." && $file != "..") {
                $points_panoram[] =  "$file";
            }
        }
        closedir($hand);
    }

    /**
     * проходимся по всем картинкам
     */
    foreach($points_panoram as $point){

        $img = array();

        $handle = array();
        if ($hand = opendir('projects/'.$val."/".$point)) {
            while (false !== ($file = readdir($hand))) {

                if (preg_match( "/.*\.JPG/",$file)){

                    $handle[] =  $file;
                }
            }
            closedir($hand);
        }

        $fp   = fopen('test.mk', 'r');
        $text = fread($fp, filesize('test.mk'));
        $text = str_replace('@@FILE_ADRESS@@', $_SERVER['PWD'].'/projects/'.$val.'/'.$point, $text);

        fclose($fp);


        $fp2   = fopen('test.src', 'r');
        $text2 = fread($fp2, filesize('test.src'));

        fclose($fp2);

        $i = 1;
        foreach($handle as $vals){

            $text  = str_replace("@@%%$i%%@@", $vals, $text);
            $text2 = str_replace("@@%%$i%%@@", $vals, $text2);

            $i++;
        }


        $file  = fopen('projects/'.$val."/".$point."/my.pto.mk", 'w');
        fwrite($file, $text);

        fclose($file);


        $file2  = fopen('projects/'.$val."/".$point."/my.pto.src", 'w');
        fwrite($file2, $text2);


        fclose($file2);

        $file3  = fopen("create.bash", 'r');
        $text = fread($file3, filesize('create.bash'));

        fclose($file3);

        $file4  = fopen('projects/'.$val."/".$point."/create.bash", 'w');
        fwrite($file4, $text);


        fclose($file4);

    }

}

$spisok = fopen("spisok", 'w');
foreach($all_dir as $value){
    fwrite($spisok, $value."\n");
}
fclose($spisok);