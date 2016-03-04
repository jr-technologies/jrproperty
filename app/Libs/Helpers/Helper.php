<?php
/**
 * Created by PhpStorm.
 * User: JR Tech
 * Date: 3/3/2016
 * Time: 5:02 PM
 */

namespace App\Libs\Helpers;


use Carbon\Carbon;

class Helper
{
    public static function prependArray($keyValuePair, $array){
        $tempArray = [];

        foreach($keyValuePair as $key => $value){
            $tempArray[$key] = $value;
        }
        foreach($array as $key => $value){
            $tempArray[$key] = $value;
        }

        return $tempArray;
    }

    public static function daysDiffInTimes($time1, $time2){
        $time1 =Carbon::createFromFormat('Y-m-d H:i:s', $time1);
        $time2 = Carbon::createFromFormat('Y-m-d H:i:s', $time2);
        $days = $time1->diffInDays($time2);
        return $days;
    }
}