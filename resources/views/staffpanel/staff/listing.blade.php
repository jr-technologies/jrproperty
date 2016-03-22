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
        @foreach($staffs as $member)
        <tr>
          <th scope="row">{{ $member->id }}</th>
          <td>{{ $member->name }}</td>
          <td>{{ $member->email }}</td>
          <td>
              @if($user->can('update','user', $member))
                <a href="{{ route('staff.staff.edit', $member->id) }}" class="btn btn-info btn-xs">Update</a>
              @endif

              @if($user->can('delete','user', $member))
                {!! Form::open(array('route' => array('staff.staff.destroy', $member->id), 'method' => 'delete', 'style' => 'display:inline', 'onsubmit' => 'return window.confirm(\'Are you sure, you want to delete this record?\')')) !!}
                      {!! Form::submit('Delete', ['class'=>'btn btn-danger btn-xs']) !!}
                {!! Form::close() !!}
              @endif
          </td>
        </tr>
        @endforeach
      </tbody>
    </table>
@stop