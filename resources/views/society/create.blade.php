@extends('app')

@section('content')
{!! Form::open(array('route' => 'admin.societies.store', 'method' => 'POST')) !!}
	<div class="form-group">
			
                    {!! Form::label('name', 'Select City:') !!}

                    {!! Form::select('city_id',$city,'',['class'=>'form-control','required']); !!}
        </div>
                    <div class="form-group">
			{!! Form::label('name', 'Name:') !!}
			{!! Form::text('name','',['class'=>'form-control','required']) !!}
                </div>

			{!! Form::submit('Submit', ['class'=>'btn btn-primary']) !!}
		
{!! Form::close() !!}
@stop