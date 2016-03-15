<?php
/**
 * Created by PhpStorm.
 * User: JR Tech
 * Date: 3/4/2016
 * Time: 11:27 AM
 */

namespace App\Policies;
use App\User;

class PropertyPolicy extends Policy
{
    public function add(User $user, $property=null){
        if($user->type == 'staff'){
            return true;
        }
        return false;
    }
    public function update(User $user, $property){
        if($user->id == $property->user_id && $user->type == 'staff'){
            return true;
        }
        return false;
    }
    public function delete(User $user, $property){
        if($user->id == $property->user_id && $user->type == 'staff'){
            return true;
        }
        return false;
    }
}