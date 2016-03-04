@extends('app')
@section('content')
<div class="pull-right"><a href="{{ route('admin.societies.create') }}" class="btn btn-success btn-xs">Add New Society</a></div>
<table class="table table-striped">
      <thead>
        <tr>
          <th width="10%">ID</th>
          <th width="35%">Town name</th>
          <th width="35%">City Name</th>
          <th width="20%">Actions</th>
        </tr>
      </thead>
      <tbody>
        @foreach($societies as $town)
        <tr>
          <th scope="row">{{ $town->id }}</th>
          <td>{{ $town->name }}</td>
          <td>{{ $town->city_name }}</td>
          <td>
          <a href="{{ route('admin.societies.edit', $town->id) }}" class="btn btn-info btn-xs">Update</a>
          {!! Form::open(array('route' => array('admin.societies.destroy', $town->id), 'method' => 'delete', 'style' => 'display:inline', 'onsubmit' => 'return window.confirm(\'Are you sure, you want to delete this record?\')')) !!}
                  {!! Form::submit('Delete', ['class'=>'btn btn-danger btn-xs']) !!}
          {!! Form::close() !!}
          </td>
        </tr>
        @endforeach
      </tbody>
    </table>
@stop




