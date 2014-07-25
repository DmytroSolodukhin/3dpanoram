<?php
/**
 * Created by JetBrains PhpStorm.
 * User: dima
 * Date: 23.07.14
 * Time: 17:03
 * To change this template use File | Settings | File Templates.
 */

function mirror_img($filename) {
    $img1 = imagecreatefromjpeg( $filename );
    $w = imagesx($img1);
    $h = imagesy($img1);
    $img2 = imagecreatetruecolor( $w, $h );

    imagelayereffect( $img2, IMG_EFFECT_REPLACE);
    for( $i = 0; $i < $w; $i++ ) {
        imagecopy( $img2, $img1, 0, $i, 0, $h - $i - 1, $w, 1 );
    }
}