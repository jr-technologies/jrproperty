@extends('app')
@section('content')
        <!-- Modal -->
<script>
    $(document).ready(function(){
        $('[data-toggle="tooltip"]').tooltip();
    });
</script>

<div class="modal fade" id="searchModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    
	
	<div class="modal-dialog">
		
			<div class="modal-content">
	       <div class="search-parent-container">
            {!! Form::open(array('route' => 'search-properties', 'method' => 'get')) !!}
            <div class="search-tabs">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title" id="myModalLabel">Search Your Desired Property</h4>
				</div>
			</div>
			<div class="search-body">
				<div class="modal-body">
					<?php $form_data = $previousSearch; ?>
                <div class="form-group">
                    {!! Form::label('society', 'Society:') !!}
                    {!! Form::select('society', Helper::prependArray([''=>'Select All...'],$data['societies']), $form_data['society'], ['class'=>'form-control', 'onchange' => 'updateBlock(this.value, \'block_id\')', 'required']) !!}
                </div>
                <div class="form-group">
                    {!! Form::label('group', 'Property Type:') !!}
                    {!! Form::select('group', Helper::prependArray([''=>'Select All...'],$data['group']), ($form_data['group'] == null)?'residential':$form_data['group'], ['class'=>'form-control', 'required']) !!}
                </div>
				   <div class="form-group">
                    {!! Form::label('Land', 'Land Area:') !!}
                    {!! Form::select('land',Helper::prependArray([''=>'Select All...'], ['marla'=>'marla','knal'=>'Kanal']),$form_data['land'],['class'=>'form-control']) !!}
                </div>
                <div class="form-group">
                    <div class="col-sm-12">
                        {!! Form::text('size_from', $form_data['size_from'], ['class'=>'col-xs-6', 'placeholder'=>'From']) !!}
                        {!! Form::text('size_to',  $form_data['size_to'], ['class'=>'col-xs-6', 'placeholder'=>'To']) !!}
                    </div>
					
					      <div class="form-group">
                    {!! Form::label('block_id', 'Block:') !!}
                    {!! Form::select('block', Helper::prependArray([''=>'Select All...'], []), $form_data['block'], ['class' => 'form-control', 'required' => 'required', 'id'=>'block_id']) !!}
                </div>
				<div class="form-group">
                    {!! Form::label('category', 'Property Category:') !!}
                    {!! Form::select('category', Helper::prependArray([''=>'Select All...'],$data['categories']), ($form_data['category'] == null)?2:$form_data['category'],['class'=>'form-control', 'required', 'onchange' => 'show_house_options(this.value);']) !!}
                </div>
                    <div class="form-group">
                        {!! Form::label('location', 'Location:') !!}
                        {!! Form::select('location', Helper::prependArray([''=>'Select All...'],$data['location']), ($form_data['location'] == null)?'average':$form_data['location'],['class'=>'form-control', 'required']) !!}
                    </div>
                <div class="form-group">
                    {!! Form::label('lead', 'Lead Type:') !!}
                    {!! Form::select('lead', Helper::prependArray([''=>'Select All...'],$data['lead_type']), $form_data['lead'],['class'=>'form-control', 'required', 'onchange' => 'show_house_options(this.value);']) !!}
                </div>
                <!--
					  <div class="form-group">
                        {!! Form::label('city', 'City:') !!}
                {!! Form::select('city', Helper::prependArray([''=>'Select All...'],$data['cities']), $form_data['city'], ['class'=>'form-control', 'onchange' => 'property_data(this.value, \'society_id\')', 'required']) !!}
                        </div>-->
                {{--<div class="form-group">--}}
                    {{--{!! Form::label('user', 'Staff:') !!}--}}
                    {{--{!! Form::select('user', Helper::prependArray([''=>'Select All...'],$data['users']), $form_data['user'], ['class'=>'form-control']) !!}--}}
                {{--</div>--}}
             
                </div>

                <div class="form-group">
                    {!! Form::label('price', 'Price:') !!}
                </div>
                <div class="form-group">
                    <div class="col-sm-12">
                        {!! Form::text('price_from',  $form_data['price_from'], ['class'=>'col-xs-6', 'placeholder'=>'From']) !!}
                        {!! Form::text('price_to',  $form_data['price_to'], ['class'=>'col-xs-6', 'placeholder'=>'To']) !!}
                    </div>
                </div>

                {!! Form::hidden('ajax_url', route('admin.properties.store')) !!}
                {!! Form::hidden('search', 'yes') !!}


				</div>
			</div>

            <div class="modal-footer">
                <div class="col-xs-12" >
				<div class="search-footer navbar-default">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" onclick="this.form.submit();">Start Search</button>
				</div>				
			   </div>
				
				
            </div>
            {!! Form::close() !!}
        
		</div>
		</div>
    </div>
</div>





    <div class="col-md-12">
        <div class="marquee">
        <marquee direction="left" behavior="scroll" scrollamount="5">
            <ul>
                <li>
                DHA Phase 9, 5 Marla File Rate 78 Lac
                </li>
                <li>
                    DHA Phase 9, 5 Marla File Rate 78 Lac
                </li>
            </ul>
        </marquee>

        </div>
        </div>

<div class="pull-left" style="padding-bottom: 10px;">
    <a href="{{ route('my-properties') }}" class="{{(Request::route()->getName() == 'my-properties')?'active':''}} btn btn-default btn-xs">My Listings &nbsp;</a>
    <a href="{{ route('all-properties') }}" class="{{(Request::route()->getName() == 'all-properties')?'active':''}} btn btn-default btn-xs">ALL Listings &nbsp;</a>
</div>


<div class="pull-right" style="padding-bottom: 10px;">
    @if($user->can('add','property'))
        <a href="{{ route('admin.properties.create') }}" class="btn btn-success btn-xs"><span class="glyphicon glyphicon-plus"></span>&nbsp; Add  </a>
    @endif
    <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#searchModal">Search &nbsp;<span Class="glyphicon glyphicon-search"></span></button>

</div>
<div class="clearfix"></div>

<div class="table-responsive">
    <table class="table table-striped">
        <thead>
        <tr>
            <th width="10%">Owner</th>
            <th width="15%">Society</th>
            <th width="10%">Block</th>
            <th width="14%">Property No</th>
            <th width="12%">Size</th>
            <th width="12%">Price</th>
            <th width="10%">Status</th>
            <th width="10%">Actions</th>
        </tr>
        </thead>
        <tbody>
        @foreach($properties as $property)

            <?php
                $updateAble = '';
                if(Helper::daysDiffInTimes(date('Y-m-d H:i:s'), $property->updated_at) > 14 && $property->sold == 'N')
                    $updateAble = 'update-able';
            ?>

            <tr class="{{$updateAble}}">
                <td><span data-toggle="tooltip" data-placement="top" title="Property is Lock"> <span class="lock glyphicon glyphicon-lock"></span> </span> {{ $property->user_name }}  </td>
                <td>{{ $property->society_name }}</td>
                <td>
                    @if($property->category_id == 4)
                        N/A
                    @else
                        {{ $property->block_name }}</td>
                @endif
                <td>
                    @if($property->property_no != '')
                        {{ $property->property_no }}
                    @else
                        N/A
                    @endif
                </td>
                <td>{{ $property->size . ' ' . ucfirst($property->size_unit) }}</td>
                <td>{{ $property->price . ' ' . ucfirst($property->price_unit) }}</td>
                <td>{{ $data['status'][$property->sold] }}</td>

                    <td>
                        {{--@if(Request::route()->getName() == 'my-properties')--}}

                            @if($user->can('update','property',$property))
                                <a href="{{ route('property/edit', $property->id) }}" class="btn btn-info btn-xs">Update</a>
                            @endif
                            @if($user->can('delete','property',$property))
                                    {!! Form::open(array('route' => array('staff.properties.destroy', $property->id), 'method' => 'delete', 'style' => 'display:inline', 'onsubmit' => 'return window.confirm(\'Are you sure, you want to delete this record?\')')) !!}
                                    {!! Form::submit('Delete', ['class'=>'btn btn-danger btn-xs']) !!}
                                    {!! Form::close() !!}
                            @endif
                       {{-- @endif--}}
                        <a href="{{route('staff.properties.show', $property->id)}}">Detail</a>
                    </td>
            </tr>
            @endforeach
            </tbody>
    </table>

    <div class="text-center">
        <?php
       if(sizeof($properties) == 0)
           echo "<b style='color:#ff3920' >No record Found!</b>"

         ?>
    </div>

</div>

<script>
    $(document).ready(function(){
        societyChangedInPropertySearch();
    });
</script>
@stop