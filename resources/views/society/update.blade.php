@extends('app')
@section('content')
{!! Form::model($society, array('route' => array('admin.societies.update', $society->id), 'method' => 'PATCH')) !!}
	<div class="form-group">
			
                    {!! Form::label('name', 'Select City:') !!}

                    {!! Form::select('city_id',$city,null,['class'=>'form-control','required']); !!}
        </div>
                    <div class="form-group">
			{!! Form::label('name', 'Name:') !!}
			{!! Form::text('name',null,['class'=>'form-control','required']) !!}
                </div>
            {!! Form::submit('Submit', ['class'=>'btn btn-primary']) !!}
		
{!! Form::close() !!}
@stop