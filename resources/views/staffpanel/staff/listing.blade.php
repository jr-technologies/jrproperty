@extends('app')
@section('content')
<div class="pull-right"><a href="{{ route('staff.staff.create') }}" class="btn btn-success btn-xs">Add New Staff Member</a></div>
<table class="table table-striped">
      <thead>
        <tr>
          <th width="10%">ID</th>
          <th width="30%">Name</th>
          <th width="30%">Email</th>
          <th width="20%">Actions</th>
        </tr>
      </thead>
      <tbody>
        @foreach($staffs as $staff)
        <tr>
          <th scope="row">{{ $staff->id }}</th>
          <td>{{ $staff->name }}</td>
          <td>{{ $staff->email }}</td>
          <td>
          <a href="{{ route('staff.staff.edit', $staff->id) }}" class="btn btn-info btn-xs">Update</a>
          @if($staff->type == 'staff')
              {!! Form::open(array('route' => array('staff.staff.destroy', $staff->id), 'method' => 'delete', 'style' => 'display:inline', 'onsubmit' => 'return window.confirm(\'Are you sure, you want to delete this record?\')')) !!}
                      {!! Form::submit('Delete', ['class'=>'btn btn-danger btn-xs']) !!}
              {!! Form::close() !!}
          @endif
          </td>
        </tr>
        @endforeach
      </tbody>
    </table>
@stop