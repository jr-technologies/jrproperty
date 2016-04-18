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
    'PROPERTY_FLOORS'=>['1'=>1,'2'=>2,'3'=>3,'4'=>4,'5'=>5,'6'=>6,'7'=>7,'8'=>8,'9'=>9,'10'=>10],
    'PROPERTIES_PER_PAGE'=>25,
    /*------------------------------------------------------------*/
];