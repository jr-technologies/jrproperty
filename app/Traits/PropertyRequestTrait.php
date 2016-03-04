<?php
/**
 * Created by PhpStorm.
 * User: JR Tech
 * Date: 3/2/2016
 * Time: 1:27 AM
 */
namespace App\Traits;
trait PropertyRequestTrait
{
    public function getNewPropertyInfo()
    {
        $purpopse = 'sale';
        $property_type = 'commercial';
        $society = 16; //  axe air avenue
        $block = 98; //m
        $property_number = '130';
        $lead_type = 'direct';
        $price_unit = 'lakh';
        $price = 1.8; //
        $size = 10;
        $size_unit = 'marla';
        $user_id = 3;
        $category = 2;

        $city = 10;

        $propertyInfo = [
            'category_id'=>$category,
            'city_id'=>$city,
            'block_id'=>$block,
            'society_id'=>$society,
            'user_id'=>$user_id,
            'type'=>$lead_type,
            'property_no'=>$property_number,
            'size'=>$size,
            'size_unit'=>$size_unit,

            'group' => $property_type,
            'purpose' => $purpopse,
            'price_unit' => $price_unit,
            'price' => $price
        ];

        return $propertyInfo;
    }
}