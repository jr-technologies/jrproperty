<?php
/**
 * Created by PhpStorm.
 * User: JR Tech
 * Date: 3/22/2016
 * Time: 12:39 PM
 */

namespace App\Policies;


use App\City;
use App\User;

class CityPolicy extends Policy
{
 public function update(User $object ,City $city=null)
  {
     if(strtolower($object->type) == strtolower('admin'))
     {
         return true;
     }
     return false;
  }
}