@extends('app')
@section('content')
{!! Form::model($block, array('route' => array('admin.blocks.update', $block->id), 'method' => 'PATCH')) !!}
	<div class="form-group">
			
                    {!! Form::label('name', 'Select Society:') !!}

                    {!! Form::select('society_id',$society,null,['class'=>'form-control','required']); !!}
        </div>
                    <div class="form-group">
			{!! Form::label('name', 'Name:') !!}
			{!! Form::text('name',null,['class'=>'form-control','required']) !!}
                </div>
            {!! Form::submit('Submit', ['class'=>'btn btn-primary']) !!}
		
{!! Form::close() !!}
@stop