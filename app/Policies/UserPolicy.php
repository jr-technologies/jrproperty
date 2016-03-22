<?php
/**
 * Created by PhpStorm.
 * User: JR Tech
 * Date: 3/21/2016
 * Time: 4:43 PM
 */

namespace App\Policies;


use App\User;

class UserPolicy extends Policy
{
    public function update(User $object, User $subject)
    {
        if(strtolower($object->type) == strtolower('admin'))
            return true;

        if($object->id == $subject->id){
            return true;
        }
        return false;
    }

    public function delete(User $object, User $subject)
    {
        if(strtolower($object->type) == strtolower('admin')) {
            return true;
        }
        return false;
    }
}