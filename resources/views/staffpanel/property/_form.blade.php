{!! Form::hidden('ajax_url', route('staff.properties.store')) !!}

<p class="bg-info info-block">
        <strong>Basic Property Information Hello</strong>
    </p>

    @if($user->type == 'admin')

    <div class="form-group">
        {!! Form::label('user_id', 'Staff:') !!}
        {!! Form::select('user_id', $users, null,['class'=>'form-control', 'required']) !!}
    </div>

    @endif

@if($user->type == 'staff')

    <div class="form-group">
        {!! Form::hidden('user_id',$users,['class'=>'form-control']) !!}
    </div>

@endif


    <div class="form-group">
        {!! Form::label('group', 'Property Type:') !!}
        {!! Form::select('group', $group, null, ['class'=>'form-control', 'required']) !!}
    </div>

    <div class="form-group">
        {!! Form::label('category_id', 'Property Category:') !!}
        {!! Form::select('category_id', $categories, null,['class'=>'form-control', 'required', 'onchange' => '
        (this.value);']) !!}
    </div>

    <div class="form-group">
            {!! Form::label('purpose', 'Purpose:') !!}
            {!! Form::select('purpose', $purpose, null,['class'=>'form-control', 'required']) !!}
        </div>

    <div class="form-group">
        {!! Form::label('city_id', 'City:') !!}
        {!! Form::select('city_id', $cities, null,['class'=>'form-control', 'onchange' => 'property_data(this.value, \'society_id\')', 'required']) !!}
    </div>

    <div class="form-group">
        {!! Form::label('society_id', 'Society:') !!}
        {!! Form::select('society_id', $societies, null,['class'=>'form-control', 'onchange' => 'property_data(this.value, \'block_id\')', 'required']) !!}
    </div>

    <div class="form-group" id="div_block_container">
        {!! Form::label('block_id', 'Block:') !!}
        {!! Form::select('block_id', $blocks, null, ['class' => 'form-control', 'required' => 'required']) !!}
    </div>

    <div class="form-group">
        {!! Form::label('title', 'Title / Caption:') !!}
        {!! Form::text('title', null,['class'=>'form-control', 'required']) !!}
    </div>

    <p class="bg-info info-block">
        <strong>House Related Details</strong>
    </p>

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


    </div>

    <div class="form-group">
        {!! Form::label('property_no', 'Plot/House Number:') !!}
        {!! Form::text('property_no', null,['class'=>'form-control']) !!}
    </div>

    <p class="bg-info info-block">
        <strong>Contact Information</strong>
    </p>

    <div class="form-group">
        {!! Form::label('type', 'Lead Type:') !!}
        {!! Form::select('type', $type, null, ['class'=>'form-control', 'onchange' => 'set_property_type(this.value);', 'required']) !!}
    </div>

    <div class="form-group hidden" id="div_estate_name">
        {!! Form::label('estate_name', 'Estate Name:') !!}
        {!! Form::text('estate_name', null,['class'=>'form-control']) !!}
    </div>

<div class="form-group">
    {!! Form::label('picture', 'Picture:') !!}
    {!! Form::file('picture','null',['class'=>'form-control','required']) !!}
</div>

    <div class="form-group">
        {!! Form::label('contact_person', 'Contact Person:') !!}
        {!! Form::text('contact_person', null,['class'=>'form-control', 'required']) !!}
    </div>

    <div class="form-group">
        {!! Form::label('mobile', 'Mobile:') !!}
        {!! Form::text('mobile', null,['class'=>'form-control', 'required']) !!}
    </div>

    <div class="form-group">
        {!! Form::label('phone', 'Phone:') !!}
        {!! Form::text('phone', null,['class'=>'form-control', 'required']) !!}
    </div>

    <div class="form-group">
        {!! Form::label('address', 'Address:') !!}
        {!! Form::text('address', null,['class'=>'form-control', 'required']) !!}
    </div>

    <div class="form-group">
        {!! Form::checkbox('share_contact_info', 'Y', null, ['id' => 'share_contact_info']) !!}
        {!! Form::label('share_contact_info', 'Share "Contact Info" of this property with other staff members.') !!}
    </div>

    <p class="bg-info info-block">
        <strong>Area and Price Details</strong>
    </p>

    <div class="form-group">
        {!! Form::label('size', 'Area:') !!}
        <div class="input-group ">
            {!! Form::input('number', 'size', null,['class'=>'form-control', 'required']) !!}
            <span class="input-group-btn btn-group">
                <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">Marla <span class="caret"></span> </button>
                <ul class="dropdown-menu pull-right">
                    <li>
                        {!! Form::radio('size_unit', 'marla', null, ['id' => 'size_unit_marla']) !!}
                        {{--<input type="radio" id="size_unit_marla" value="marla" name="size_unit" checked="checked" />--}}
                        <label for="size_unit_marla">Marla</label>
                    </li>
                    <li>
                        {!! Form::radio('size_unit', 'kanal', null, ['id' => 'size_unit_kanal']) !!}
                        {{--<input type="radio" id="size_unit_kanal" value="kanal" name="size_unit" />--}}
                        <label for="size_unit_kanal">Kabbbbnal</label>
                    </li>
                </ul>
            </span>
        </div>
    </div>

    <div class="form-group">
        {!! Form::label('location', 'Location:') !!}
        {!! Form::select('location', $location, null,['class'=>'form-control', 'required']) !!}
    </div>

    <div class="form-group">
        {!! Form::label('price', 'Price:') !!}
        <div class="input-group ">
            <label class="input-group-addon">PKR: </label>
            {!! Form::input('number', 'price', null,['class'=>'form-control', 'required']) !!}
            <span class="input-group-btn btn-group">
                <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">Lakh <span class="caret"></span> </button>
                <ul class="dropdown-menu pull-right">
                    <li>
                        {!! Form::radio('price_unit', 'thousand', null, ['id' => 'price_unit_thousand']) !!}
                        {{--<input type="radio" id="price_unit_thousand" value="thousand" name="price_unit" checked="checked">--}}
                        <label for="price_unit_thousand">Thousand</label>
                    </li>
                    <li>
                        {!! Form::radio('price_unit', 'lakh', null, ['id' => 'price_unit_lakh']) !!}
                        {{--<input type="radio" id="price_unit_lakh" value="lakh" name="price_unit" checked="checked">--}}
                        <label for="price_unit_lakh">Lakh</label>
                    </li>
                    <li>
                        {!! Form::radio('price_unit', 'crore', null, ['id' => 'price_unit_crore']) !!}
                        {{--<input type="radio" id="price_unit_crore" value="crore" name="price_unit">--}}
                        <label for="price_unit_crore">Crore</label>
                    </li>
                </ul>
            </span>
        </div>
    </div>

    <div class="form-group">
        {!! Form::label('detail', 'Description:') !!}
        <br/>
        {!! Form::textarea('detail', null,['class'=>'form-control']) !!}
    </div>

    <div class="form-group">
            {!! Form::checkbox('share_property', 'Y', null, ['id' => 'share_property']) !!}
            {!! Form::label('share_property', 'Share this property with other staff members on All Property Listing Page.') !!}
    </div>

    <div class="form-group">
        {!! Form::checkbox('sold','Y', null, ['id' => 'sold']) !!}
        {!! Form::label('sold', 'This property has been sold.') !!}
    </div>