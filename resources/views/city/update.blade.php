@extends('app')

@section('content')
{!! Form::model($city, array('route' => array('admin.city.update', $city->id), 'method' => 'PATCH')) !!}
            <div class="form-group">
			{!! Form::label('name', 'Name:') !!}
			{!! Form::text('name',null, ['class'=>'form-control','required']) !!}
             </div>

			{!! Form::submit('Submit', ['class'=>'btn btn-primary']) !!}
		
{!! Form::close() !!}
@stop