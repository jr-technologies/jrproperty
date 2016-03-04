@extends('app')
@section('content')

<!-- Modal -->

{{ Auth::user()->type }}
<div class="modal fade" id="searchModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            {!! Form::open(array('route' => 'staff.properties.index', 'method' => 'get')) !!}
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Search Property</h4>
            </div>
            <div class="modal-body">

                    <?php $form_data = unserialize($form_data); ?>

                    <div class="form-group">
                        {!! Form::label('user_id', 'Staff:') !!}
                        {!! Form::select('user_id', $users, $form_data['user_id'], ['class'=>'form-control']) !!}
                    </div>

                    <div class="form-group">
                        {!! Form::label('group', 'Property Type:') !!}
                        {!! Form::select('group', $group, $form_data['group'], ['class'=>'form-control', 'required']) !!}
                    </div>

                    <div class="form-group">
                        {!! Form::label('category_id', 'Property Category:') !!}
                        {!! Form::select('category_id', $categories, $form_data['category_id'],['class'=>'form-control', 'required', 'onchange' => 'show_house_options(this.value);']) !!}
                    </div>

                    <div class="form-group">
                        {!! Form::label('location', 'Location:') !!}
                        {!! Form::select('location', $location, $form_data['location'],['class'=>'form-control', 'required']) !!}
                    </div>

                    <div class="form-group">
                        {!! Form::label('city_id', 'City:') !!}
                        {!! Form::select('city_id', $cities, $form_data['city_id'], ['class'=>'form-control', 'onchange' => 'property_data(this.value, \'society_id\')', 'required']) !!}
                    </div>

                    <div class="form-group">
                        {!! Form::label('society_id', 'Society:') !!}
                        {!! Form::select('society_id', $societies, $form_data['society_id'], ['class'=>'form-control', 'onchange' => 'property_data(this.value, \'block_id\')', 'required']) !!}
                    </div>

                    <div class="form-group">
                        {!! Form::label('block_id', 'Block:') !!}
                        {!! Form::select('block_id', $blocks, $form_data['block_id'], ['class' => 'form-control', 'required' => 'required']) !!}
                    </div>

                    @if($token)
                    {!! Form::hidden('_token', $token) !!}
                    @endif

                    {!! Form::hidden('ajax_url', route('admin.properties.store')) !!}
                    {!! Form::hidden('search', 'yes') !!}


            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" onclick="this.form.submit();">Start Search</button>
            </div>
            {!! Form::close() !!}
        </div>
    </div>
</div>

<div class="pull-right" style="padding-bottom: 10px;">
    <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#searchModal">Search Property</button>
    @if($from == 'my_listing')&nbsp;&nbsp;&nbsp; <a href="{{ route('staff.properties.create') }}" class="btn btn-success btn-xs">Add New Property</a>@endif
</div>
<div class="clearfix"></div>

<div class="table-responsive">
<table class="table table-striped">
      <thead>
        <tr>
          @if($from == 'all_listing')
            <th width="10%">Owner</th>
          @endif
          <th width="15%">Type / Purpose</th>
          <th width="15%">Society</th>
          <th width="10%">Block</th>
          <th width="14%">Plot / House No</th>

          <th width="12%">Size</th>
          <th width="12%">Price</th>
          <th width="10%">Status</th>

          @if($from == 'my_listing')
              <th width="10%">Actions</td>
          @endif
        </tr>
      </thead>
    @foreach($properties as $property)
        <tr>
          @if($from == 'all_listing')
              <td>{{ $property->user_name }}</td>
          @endif

          <td>
              @if($property->group != '')
                  {!! link_to_route('staff.properties.show', $group[$property->group].' '.$property->category_name.' '. $purpose[$property->purpose] ,$property->id) !!}
              @else
                  {!! link_to_route('staff.properties.show', $property->category_name.' '. $purpose[$property->purpose] ,$property->id) !!}
              @endif
          </td>
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
          <td>{{ $status[$property->sold] }}</td>

          @if($from == 'my_listing')
                <td>
                    @if($property->user_id = $user->id)
                        <a href="{{ route('staff.properties.edit', $property->id) }}" class="btn btn-info btn-xs">Update</a>
                        {!! Form::open(array('route' => array('staff.properties.destroy', $property->id), 'method' => 'delete', 'style' => 'display:inline', 'onsubmit' => 'return window.confirm(\'Are you sure, you want to delete this record?\')')) !!}
                              {!! Form::submit('Delete', ['class'=>'btn btn-danger btn-xs']) !!}
                        {!! Form::close() !!}
                    @else
                        Not Applicable
                    @endif
                </td>
            @endif
        </tr>
        @endforeach
      </tbody>
    </table>

    <div class="text-center">
        {!! $properties->appends($form_data)->render() !!}
    </div>

</div>
@stop