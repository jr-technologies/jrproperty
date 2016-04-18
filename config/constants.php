<?php
/**
 * Created by PhpStorm.
 * User: JR Tech
 * Date: 3/3/2016
 * Time: 2:11 PM
 */

return [
    /*
     * -------------------------------------------------------
     * PROPERTY RELATED CONSTANTS
     * --------------------------------------------------------
     * */
    'PROPERTY_STATUSES' => ['Y' => 'Sold', 'N' => 'Available'],
    'PROPERTY_PURPOSES' => ['sale' => 'For Sale', 'rent' => 'For Rent', 'wanted' => 'Wanted'],
    'PROPERTY_TYPES' => ['commercial' => 'Commercial', 'residential' => 'Residential'],
    'LEAD_TYPES'=>['direct'=>'direct','indirect'=>'indirect'],
    'SIZE_UNITS'=>['marla'=>'Marla','kanal'=>'Kanal','square feet'=>'Square Feet','square yards'=>'Square Yards','square meters'=>'Square Meters'],
    'PROPERTY_LOCATIONS' => [
        'corner' => 'Corner',
        'non-corner' => 'Non-Corner',
        'facing-park' => 'Facing Park',
        'main-boulevard' => 'Main Boulevard',
        'average' => 'Average'
    ],
     'HOUSE_TYPE'=>['' => 'N/A', 'new' => 'Brand New House', 'old' => 'Old House'],
     'BEDROOMS' => [1 => '1 Bedroom', 2 => '2 Bedrooms', 3 => '3 Bedrooms',
        4 => '4 Bedrooms', 5 => '5 Bedrooms', 6 => '6 Bedrooms', 7 => '6+ Bedrooms'
     ],

    'PROPERTY_FLOORS'=>['1'=>'First','2'=>'Second','3'=>'Third','4'=>'Four',
        '5'=>'Five','6'=>'Six','7'=>'Seven','8'=>'Eight','9'=>'Nine','10'=>'Ten'],
    'PROPERTIES_PER_PAGE'=>25,
    /*------------------------------------------------------------*/
];