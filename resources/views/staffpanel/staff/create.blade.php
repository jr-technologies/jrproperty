@extends('app')

@section('content')
{!! Form::open(array('route' =>'staff.staff.store', 'method' =>'POST')) !!}
        <div class="form-group">
        {!! Form::label('name', 'Name:') !!}
        {!! Form::text('name','', ['class'=>'form-control','required']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('email', 'Email Address:') !!}
            {!! Form::email('email','', ['class'=>'form-control','required']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('password', 'Password:') !!}
            {!! Form::password('password', ['class'=>'form-control','required']) !!}
        </div>

		
			{!! Form::submit('Submit', ['class'=>'btn btn-primary']) !!}
		
{!! Form::close() !!}
@stop