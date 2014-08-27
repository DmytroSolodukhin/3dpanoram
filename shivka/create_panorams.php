<?php
/**
 * Created by PhpStorm.
 * User: kazak
 * Date: 27.08.14
 * Time: 19:43
 */

$src  = "projects/firstproj/3/";

image_mirror($src);

function image_mirror ($src)
{
    $img1 = imagecreatefromjpeg( $src."my.jpg" );
    $w = imagesx($img1);
    $h = imagesy($img1);
    $img2 = imagecreatetruecolor( $w, $h );

    imagelayereffect( $img2, IMG_EFFECT_REPLACE);
    for( $i = 0; $i < $w; $i++ ) {
        imagecopy( $img2, $img1, $i, 0, $w - $i - 1, 0, 1, $h );
    }

    imagejpeg( $img2, "$src"."pano.jpg" );

// Освобождаем память
    imagedestroy($img2);
}


