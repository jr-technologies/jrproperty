<?php
/**
 * Created by PhpStorm.
 * User: JR Tech
 * Date: 3/4/2016
 * Time: 11:27 AM
 */

namespace App\Policies;


class ContactInfoPolicy extends Policy
{
    public function see(User $user, $property){
        if(strtolower($property->share_contact_info) == 'y'){
            return true;
        }
        return false;
    }
}