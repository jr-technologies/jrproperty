@extends('app')
@section('content')
<div class="pull-right"><a href="{{ route('admin.blocks.create') }}" class="btn btn-success btn-xs">Add New Block</a></div>
<table class="table table-striped">
      <thead>
        <tr>
          <th width="10%">ID</th>
          <th width="35%">Block name</th>
          <th width="35%">Society Name</th>
          <th width="20%">Actions</th>
        </tr>
      </thead>
      <tbody>
        @foreach($blocks as $town)
        <tr>
          <th scope="row">{{ $town->id }}</th>
          <td>{{ $town->name }}</td>
          <td>{{ $town->society_name }}</td>
          <td>
          <a href="{{ route('admin.blocks.edit', $town->id) }}" class="btn btn-info btn-xs">Update</a>
          {!! Form::open(array('route' => array('admin.blocks.destroy', $town->id), 'method' => 'delete', 'style' => 'display:inline', 'onsubmit' => 'return window.confirm(\'Are you sure, you want to delete this record?\')')) !!}
                  {!! Form::submit('Delete', ['class'=>'btn btn-danger btn-xs']) !!}
          {!! Form::close() !!}
          </td>
        </tr>
        @endforeach
      </tbody>
    </table>
@stop




