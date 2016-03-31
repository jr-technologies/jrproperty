<?php
/**
 * Created by PhpStorm.
 * User: JR Tech
 * Date: 3/4/2016
 * Time: 11:27 AM
 */

namespace App\Policies;
use App\User;

class ContactInfoPolicy extends Policy
{
    public function see(User $user, $property){
        if($user->id == $property->user_id)
            return true;

        if(strtolower($property->share_contact_info) == 'y')
            return true;

        return false;
    }
}