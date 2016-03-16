
{!! Form::hidden('ajax_url', route('admin.properties.store')) !!}

<p class="bg-info info-block">
        <strong>Basic Property Information</strong>

    </p>
	@if($user->type == 'staff')

    <div class="form-group">
        {!! Form::hidden('user_id',$users,['class'=>'form-control']) !!}
    </div>

@endif

    <div class="form-group">
            {!! Form::label('purpose', 'Purpose:') !!}
            {!! Form::select('purpose', $purpose, null,['class'=>'form-control', 'required']) !!}
        </div>
		
		 <div class="form-group">
            {!! Form::label('society', 'Society:') !!}
            {!! Form::select('society', $societies, 16,['class'=>'form-control', 'onchange' => 'property_data(this.value, \'block_id\')', 'required','id'=>'society_id']) !!}
        </div>

		
		<div class="form-group">
        {!! Form::label('group', 'Property Type:') !!}
        {!! Form::select('type', $group, 'residential', ['class'=>'form-control', 'required']) !!}
		</div>


	   <div class="form-group">
        {!! Form::label('location', 'Location:') !!}
        {!! Form::select('location', $location, 'average',['class'=>'form-control', 'required']) !!}
		</div>

            {!! Form::hidden('city', 10, null,['class'=>'form-control', 'onchange' => 'property_data(this.value, \'society_id\')', 'required','city'=>'city_id']) !!}

       
		<div class="form-group" id="div_block_container">
        {!! Form::label('block_id', 'Block:') !!}
        {!! Form::select('block', $blocks, null, ['class' => 'form-control', 'required' => 'required','id'=>'block_id']) !!}
		</div>


		    <div class="form-group">
        {!! Form::label('category_id', 'Property Category:') !!}
        {!! Form::select('category', $categories, 2,['class'=>'form-control', 'required', 'id'=>'category_id']) !!}
			</div>
        <div id="apartment_features" class="form-group">
            <label for="">Beds</label>
            <input id="bedrooms" name="bedrooms" class="form-control form-control-lg" type="number" max="5" placeholder="Number of rooms. for-example(2,3)">
        </div>

		<div class="form-group">
        {!! Form::label('property_no', 'Property Number:') !!}
        {!! Form::text('property_number', null,['class'=>'form-control']) !!}
		</div>

			<div class="form-group">
        {!! Form::label('type', 'Lead Type:') !!}
        {!! Form::select('lead_type', $type, null, ['class'=>'form-control', 'onchange' => 'set_property_type(this.value);', 'required']) !!}
			</div>

<div class="form-group hidden" id="propertyContactInfo" >


    <div class="form-group hidden" id="div_estate_name" >
	 <p class="bg-info info-block">
        <strong>Contact Information</strong>
    </p>

        {!! Form::label('estate_name', 'Estate Name:') !!}
        {!! Form::text('owner_estate', null,['class'=>'form-control']) !!}
    </div>

    <!--<div class="form-group">
        {!! Form::label('picture', 'Picture:') !!}
        {!! Form::file('picture', null,['class'=>'form-control']) !!}
    </div>-->

    <div class="form-group">
        {!! Form::label('contact_person', 'Contact Person:') !!}
        {!! Form::text('owner_name', null,['class'=>'form-control', 'required']) !!}
    </div>

    <div class="form-group">
        {!! Form::label('mobile', 'Mobile:') !!}
        {!! Form::text('owner_mobile', null,['class'=>'form-control', 'required']) !!}
    </div>

    <div class="form-group">
        {!! Form::label('phone', 'Phone:') !!}
        {!! Form::text('owner_phone', null,['class'=>'form-control', 'required']) !!}
    </div>

    <div class="form-group">
        {!! Form::label('address', 'Address:') !!}
        {!! Form::text('owner_address', null,['class'=>'form-control', 'required']) !!}
    </div>

    <div class="form-group">
        {!! Form::checkbox('share_contact_info', 'Y', null, ['id' => 'share_contact_info']) !!}
        {!! Form::label('share_contact_info', 'Share "Contact Info" of this property with other staff members.') !!}
    </div>
</div>

	    <p class="bg-info info-block">
        <strong>Area and Price Details</strong>
		</p>

    <div class="form-group">
        {!! Form::label('size', 'Area:') !!}
        <div class="input-group col-md-12">
            <div class="col-xs-6">
                {!! Form::input('number', 'size',  null,['class'=>'form-control', 'required']) !!}
            </div>
            <div class="col-xs-6">
                {!! Form::select('size_unit', $data['size_units'], $property->size_unit,['class'=>'form-control']) !!}
            </div>
        </div>
    </div>


	   <div class="form-group">
        {!! Form::label('price', 'Price:') !!}
        <div class="input-group ">
            <label class="input-group-addon">PKR: </label>
            {!! Form::input('number', 'price', null,['class'=>'form-control', 'required', 'max'=>'99999999999']) !!}
        </div>
         <span id="priceInWordsContainer">  </span>
    </div>



  <!--

    <div class="form-group">
        {!! Form::label('title', 'Title / Caption:') !!}
        {!! Form::text('title', null,['class'=>'form-control', 'required']) !!}
    </div>

    <div id="div_house_options" class="hidden">

        <div class="form-group">
            {!! Form::label('house_type', 'House Type:') !!}
            {!! Form::select('house_type', $house_type, null,['class'=>'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('bedrooms', 'No of Bedrooms:') !!}
            {!! Form::select('bedrooms', $bedrooms, null,['class'=>'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('Fatures', 'Other Features:') !!}
            <div class="checkbox">
                @foreach($features as $feature)
                <label>
                    @if(is_array($features_selected))
                        @if(in_array($feature, $features_selected))
                            {!! Form::checkbox('features[]', $feature, null) !!}
                        @else
                            {!! Form::checkbox('features[]', $feature, null, ['class' => 'not-selected']) !!}
                        @endif
                    @else
                        {!! Form::checkbox('features[]', $feature, null) !!}
                    @endif
                    {{ $feature }}
                    &nbsp;
                </label>
                @endforeach
            </div>
        </div>


    </div>-->
   <!-- @if($user->type == 'admin')

    <div class="form-group">
        {!! Form::label('user_id', 'Staff:') !!}
        {!! Form::select('user_id', $users, null,['class'=>'form-control', 'required']) !!}
    </div>



@endif-->
    <!--<p class="bg-info info-block">
        <strong>House Related Details</strong>
    </p>
-->

 <!--   <div class="form-group">
        {!! Form::label('detail', 'Description:') !!}
        <br/>
        {!! Form::textarea('detail', null,['class'=>'form-control']) !!}
    </div>
-->
    <div class="form-group">
            {!! Form::checkbox('share_property', 'Y', null, ['id' => 'share_property']) !!}
            {!! Form::label('share_property', 'Share this property with other staff members on All Property Listing Page.') !!}
    </div>

    <div class="form-group">
        {!! Form::checkbox('sold','Y', null, ['id' => 'sold']) !!}
        {!! Form::label('sold', 'This property has been sold.') !!}
    </div>