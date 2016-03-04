@extends('app')
@section('content')
<div class="pull-right"><a href="{{ route('admin.categories.create') }}" class="btn btn-success btn-xs">Add New Property Type</a></div>
<table class="table table-striped">
      <thead>
        <tr>
          <th width="10%">ID</th>
          <th width="70%">Property Type</th>
          <th width="20%">Actions</th>
        </tr>
      </thead>
      <tbody>
        @foreach($categories as $category)
        <tr>
          <th scope="row">{{ $category->id }}</th>
          <td>{{ $category->name }}</td>
          <td>
          <a href="{{ route('admin.categories.edit', $category->id) }}" class="btn btn-info btn-xs">Update</a>
          {!! Form::open(array('route' => array('admin.categories.destroy', $category->id), 'method' => 'delete', 'style' => 'display:inline', 'onsubmit' => 'return window.confirm(\'Are you sure, you want to delete this record?\')')) !!}
                  {!! Form::submit('Delete', ['class'=>'btn btn-danger btn-xs']) !!}
          {!! Form::close() !!}
          </td>
        </tr>
        @endforeach
      </tbody>
    </table>
@stop