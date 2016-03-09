<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
class Property extends Model {

	protected $table = 'properties';
	public $timestamps = true;
	protected $fillable = array('category_id', 'city_id', 'society_id', 'block_id', 'user_id', 'title', 'type', 'group',
        'estate_name', 'contact_person', 'mobile', 'phone', 'address', 'property_no', 'purpose', 'size', 'size_unit',
        'location', 'price', 'price_unit', 'price_converted','picture', 'detail', 'house_type', 'bedrooms', 'features', 'share_contact_info', 'share_property', 'sold');
    protected $dates = ['created_at'];

    /*public static function search($params)
    {
        $searchConditions = self::searchConditions($params);
        $properties = DB::table('properties')->where($searchConditions)->get();
        return $properties;
    }*/

    public static function scopeSearch($query, $params = [])
    {
        $query = $query->select('properties.*',
            'users.name as user_name',
            'societies.name as society_name',
            'cities.name as city_name',
            'blocks.name as block_name',
            'categories.name as category_name'
        )

        ->leftJoin('users', 'properties.user_id', '=', 'users.id')
        ->leftJoin('societies', 'properties.society_id', '=', 'societies.id')
        ->leftJoin('blocks', 'properties.block_id', '=', 'blocks.id')
        ->leftJoin('cities', 'properties.city_id', '=', 'cities.id')
        ->leftJoin('categories', 'properties.category_id', '=', 'categories.id')
        ->applySearchConditions($params)
        ->authorizeSearch($params['authenticated_user']);

        return $query;
    }

    public static function scopeApplySearchConditions($query, $params){
        if($params['user'] != null || $params['user'] != '')
            $query = $query->where('user_id', '=', $params['user']);
        if($params['location'] != null || $params['location'] != '')
            $query = $query->where('location', '=', $params['location']);
        if($params['city'] != null || $params['city'] != '')
            $query = $query->where('city_id', '=', $params['city']);
        if($params['society'] != null || $params['society'] != '')
            $query = $query->where('properties.society_id' , '=', $params['society']);
        if($params['block'] != null || $params['block'] != '')
            $query = $query->where('properties.block_id' , '=', $params['block']);
        if($params['group'] != null || $params['group'] != '')
            $query = $query->where('group' , '=', $params['group']);
        if($params['category_id'] != null || $params['category'] != '')
            $query = $query->where('properties.category_id' , '=', $params['category']);
        if($params['land'] != null || $params['land'] != '')
            $query = $query->where('properties.size_unit', '=', $params['land']);
        if($params['size_from'] != null || $params['size_from'] != '')
            $query = $query->where('properties.size', '>=', $params['size_from']);
        if($params['size_to'] != null || $params['size_to'] != '')
            $query = $query->where('properties.size', '<=', $params['size_to']);
        if($params['price_from'] != null || $params['price_from'] != '')
            $query = $query->where('properties.price', '>=', $params['price_from']);
        if($params['price_to'] != null || $params['price_to'] != '')
            $query = $query->where('properties.price', '<=', $params['price_to']);
       if($params['lead']!= null || $params['lead'] !='')
            $query = $query->where('properties.type' ,'=',$params['lead'] );
        if($params['bedrooms']!= null || $params['bedrooms'] !='')
            $query = $query->where('bedrooms' ,'=',$params['bedrooms'] );


        return $query;
    }

    public static function scopeAuthorizeSearch($query, $authenticated_user){

        $query = $query->where(function($query) use ($authenticated_user)
                {
                    $query->where('user_id','=',$authenticated_user->id)
                        ->orWhere(function($query) use ($authenticated_user)
                        {
                            $query->where('user_id','!=', $authenticated_user->id)
                                ->where('share_property','=','Y');
                        });
                });


        return $query;
    }

    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function getJoined()
    {
        /*$result = DB::table('properties as p')
            ->select('p.*', 'users.name as fname')
            ->leftJoin('users', 'p.user_id', '=', 'users.id')
            ->get();
        dd($result);*/

        $result = $this->with('users')->get();
        dd($result);
    }

    public function is_secure(){
        if($this->share_property == 'N'){
            return true;
        }
        return false;
    }
}