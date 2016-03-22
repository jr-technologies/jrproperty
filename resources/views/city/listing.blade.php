@extends('app')
@section('content')
<div class="pull-right"><a href="{{ route('admin.city.create') }}" class="btn btn-success btn-xs">Add New City</a></div>
<table class="table table-striped">
      <thead>
        <tr>
          <th width="10%">ID</th>
          <th width="70%">City Name</th>
          <th width="20%">Actions</th>
        </tr>
      </thead>
      <tbody>
        @foreach($cities as $city)
        <tr>
          <th scope="row">{{ $city->id }}</th>
          <td>{{ $city->name }}</td>
          <td>
              @if($user->can('update','city',$city))
          <a href="{{ route('admin.city.edit', $city->id) }}" class="btn btn-info btn-xs">Update</a>
              @endif
          {!! Form::open(array('route' => array('admin.city.destroy', $city->id), 'method' => 'delete', 'style' => 'display:inline', 'onsubmit' => 'return window.confirm(\'Are you sure, you want to delete this record?\')')) !!}
                  {!! Form::submit('Delete', ['class'=>'btn btn-danger btn-xs']) !!}
          {!! Form::close() !!}
          </td>
        </tr>
        @endforeach
      </tbody>
    </table>
@stop