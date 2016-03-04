@extends('app')

@section('content')
{!! Form::open(array('route' =>'admin.city.store', 'method' =>'POST')) !!}
            <div class="form-group">
			{!! Form::label('name', 'Name:') !!}
			{!! Form::text('name','', ['class'=>'form-control','required']) !!}
             </div>

		
			{!! Form::submit('Submit', ['class'=>'btn btn-primary']) !!}
		
{!! Form::close() !!}
@stop