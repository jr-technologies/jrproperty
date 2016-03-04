@extends('app')
@section('content')

    {!! Form::open(array('route' => 'property/update', 'method' => 'POST' ,'files' => true)) !!}

    {!! Form::hidden('ajax_url', route('admin.properties.store')) !!}

    <p class="bg-info info-block">
        <strong>Basic Property Information</strong>
    </p>
    @if($user->type == 'staff')

        <div class="form-group">
            {!! Form::hidden('user_id',$users,['class'=>'form-control']) !!}
        </div>

    @endif

    {!! Form::hidden('property_id',$property->id,['class'=>'form-control']) !!}
    <div class="form-group">
        {!! Form::label('purpose', 'Purpose:') !!}
        {!! Form::select('purpose', $purpose, $property->purpose,['class'=>'form-control', 'required']) !!}
    </div>
    <div class="form-group">
        {!! Form::label('group', 'Property Type:') !!}
        {!! Form::select('type', $group, $property->group, ['class'=>'form-control', 'required']) !!}
    </div>

    <div class="form-group">
        {!! Form::label('location', 'Location:') !!}
        {!! Form::select('location', $location, $property->location,['class'=>'form-control', 'required']) !!}
    </div>

    {!! Form::hidden('city', 10, null,['class'=>'form-control', 'onchange' => 'property_data(this.value, \'society_id\')', 'required','city'=>'city_id']) !!}

    <div class="form-group">
        {!! Form::label('society', 'Society:') !!}
        {!! Form::select('society', $societies, $property->society_id,['class'=>'form-control', 'onchange' => 'property_data(this.value, \'block_id\')', 'required','id'=>'society_id']) !!}
    </div>

    <div class="form-group" id="">
        {!! Form::label('block_id', 'Block:') !!}
        {!! Form::select('block', $blocks, $property->block_id, ['class' => 'form-control', 'required' => 'required','id'=>'block_id']) !!}
    </div>

    <div class="form-group">
        {!! Form::label('category_id', 'Property Category:') !!}
        {!! Form::select('category', $categories, $property->category_id,['class'=>'form-control', 'required', 'onchange' => '
        (this.value);']) !!}
    </div>

    <div class="form-group">
        {!! Form::label('property_no', 'Property Number:') !!}
        {!! Form::text('property_number', $property->property_no,['class'=>'form-control']) !!}
    </div>

    <div class="form-group">
        {!! Form::label('type', 'Lead Type:') !!}
        {!! Form::select('lead_type', $type, $property->type, ['class'=>'form-control', 'onchange' => 'set_property_type(this.value);', 'required']) !!}
    </div>

    <div class="form-group {{($property->type == '')?'hidden':''}}" id="propertyContactInfo" >


        <div class="form-group {{($property->type != 'indirect')?'hidden':''}}" id="div_estate_name" >
            <p class="bg-info info-block">
                <strong>Contact Information</strong>
            </p>

            {!! Form::label('estate_name', 'Estate Name:') !!}
            {!! Form::text('owner_estate', $property->estate_name,['class'=>'form-control']) !!}
        </div>

        {{--<div class="form-group">--}}
            {{--{!! Form::label('picture', 'Picture:') !!}--}}
            {{--{!! Form::file('picture', null,['class'=>'form-control']) !!}--}}
        {{--</div>--}}

        <div class="form-group">
            {!! Form::label('contact_person', 'Contact Person:') !!}
            {!! Form::text('owner_name', $property->contact_person,['class'=>'form-control', 'required']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('mobile', 'Mobile:') !!}
            {!! Form::text('owner_mobile', $property->mobile,['class'=>'form-control', 'required']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('phone', 'Phone:') !!}
            {!! Form::text('owner_phone', $property->phone,['class'=>'form-control', 'required']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('address', 'Address:') !!}
            {!! Form::text('owner_address', $property->address,['class'=>'form-control', 'required']) !!}
        </div>

        <div class="form-group">
            {!! Form::checkbox('share_contact_info', 'Y', $property->share_contact_info, ['id' => 'share_contact_info']) !!}
            {!! Form::label('share_contact_info', 'Share "Contact Info" of this property with other staff members.') !!}
        </div>
    </div>

    <p class="bg-info info-block">
        <strong>Area and Price Details</strong>
    </p>

    <div class="form-group">
        {!! Form::label('size', 'Area:') !!}
        <div class="input-group ">
            {!! Form::input('number', 'size', $property->size,['class'=>'form-control', 'required']) !!}
            <span class="input-group-btn btn-group">
                <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">Marla <span class="caret"></span> </button>
                <ul class="dropdown-menu pull-right">
                    <li>
                        {!! Form::radio('size_unit', 'marla', ($property->size_unit =='marla')?true:false, ['id' => 'size_unit_marla']) !!}
                        {{--<input type="radio" id="size_unit_marla" value="marla" name="size_unit" checked="checked" />--}}
                        <label for="size_unit_marla">Marla</label>
                    </li>
                    <li>
                        {!! Form::radio('size_unit', 'kanal', ($property->size_unit =='kanal')?true:false, ['id' => 'size_unit_kanal']) !!}
                        {{--<input type="radio" id="size_unit_kanal" value="kanal" name="size_unit" />--}}
                        <label for="size_unit_kanal">Kanal</label>
                    </li>
                </ul>
            </span>
        </div>
    </div>

    <div class="form-group">
        {!! Form::label('price', 'Price:') !!}
        <div class="input-group ">
            <label class="input-group-addon">PKR: </label>
            {!! Form::input('number', 'price',  $property->price,['class'=>'form-control', 'required']) !!}
            <span class="input-group-btn btn-group">
                <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">Lakh <span class="caret"></span> </button>
                <ul class="dropdown-menu pull-right">
                    <li>
                        {!! Form::radio('price_unit', 'thousand', ($property->price_unit =='thousand')?true:false, ['id' => 'price_unit_thousand']) !!}
                        {{--<input type="radio" id="price_unit_thousand" value="thousand" name="price_unit" checked="checked">--}}
                        <label for="price_unit_thousand">Thousand</label>
                    </li>
                    <li>
                        {!! Form::radio('price_unit', 'lakh', ($property->price_unit =='lakh')?true:false, ['id' => 'price_unit_lakh']) !!}
                        {{--<input type="radio" id="price_unit_lakh" value="lakh" name="price_unit" checked="checked">--}}
                        <label for="price_unit_lakh">Lakh</label>
                    </li>
                    <li>
                        {!! Form::radio('price_unit', 'crore', ($property->price_unit =='crore')?true:false, ['id' => 'price_unit_crore']) !!}
                        {{--<input type="radio" id="price_unit_crore" value="crore" name="price_unit">--}}
                        <label for="price_unit_crore">Crore</label>
                    </li>
                </ul>
            </span>
        </div>
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
        {!! Form::checkbox('share_property', 'Y', $property->share_property, ['id' => 'share_property']) !!}
        {!! Form::label('share_property', 'Share this property with other staff members on All Property Listing Page.') !!}
    </div>

    <div class="form-group">
        {!! Form::checkbox('sold','Y', $property->sold, ['id' => 'sold']) !!}
        {!! Form::label('sold', 'This property has been sold.') !!}
    </div>

    {!! Form::submit('Update', ['class'=>'btn btn-primary']) !!}

    {!! Form::close() !!}

    <script>

        $(function(){

            if($('#category_id').val() == 4)
            {
                $('#div_block_container').addClass('hidden');
            }

            if($('#category_id').val() == 1)
            {
                $('#div_house_options').removeClass('hidden');
            }

            $('.not-selected').attr('checked', false);

        });

    </script>

@stop