@extends('app')

@section('content')
{!! Form::model($staff, array('route' => array('admin.staff.update', $staff->id), 'method' => 'PATCH')) !!}
    <div class="form-group">
        {!! Form::label('name', 'Name:') !!}
        {!! Form::text('name',null, ['class'=>'form-control','required']) !!}
    </div>

    <div class="form-group">
        {!! Form::label('email', 'Email Address:') !!}
        {!! Form::email('email',null, ['class'=>'form-control','required']) !!}
    </div>

    <div class="form-group">
        {!! Form::label('password', 'Password:') !!}
        {!! Form::password('password', ['class'=>'form-control']) !!}
    </div>

	{!! Form::submit('Submit', ['class'=>'btn btn-primary']) !!}
		
{!! Form::close() !!}
@stop