<?php
/**
 * Created by PhpStorm.
 * User: dima
 * Date: 10.08.14
 * Time: 15:08
 */

class PointXML {
    var $namber;  // номер точки
    var $xcoord;    // x координата точки
    var $ycoord;    // y координата точки
    var $code;  // принадлежность к группе
    var $type;  // тип точки

    function PointXML ($aa)
    {
        foreach ($aa as $k=>$v)
            $this->$k = $aa[$k];
    }
}

function readDatabase($filename)
{
    // чтение XML базы данных точек
    $data = implode("", file($filename));
    $parser = xml_parser_create();
    xml_parser_set_option($parser, XML_OPTION_CASE_FOLDING, 0);
    xml_parser_set_option($parser, XML_OPTION_SKIP_WHITE, 1);
    xml_parse_into_struct($parser, $data, $values, $tags);
    xml_parser_free($parser);

    // проход через структуры
    foreach ($tags as $key=>$val) {
        if ($key == "point") {
            $molranges = $val;
            // каждая смежная пара значений массивов является верхней и
            // нижней границей определения точки
            for ($i=0; $i < count($molranges); $i+=2) {
                $offset = $molranges[$i] + 1;
                $len = $molranges[$i + 1] - $offset;
                $tdb[] = parseMol(array_slice($values, $offset, $len));
            }
        } else {
            continue;
        }
    }
    return $tdb;
}

