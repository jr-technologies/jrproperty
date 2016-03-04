@extends('app')

@section('content')
{!! Form::model($category, array('route' => array('admin.categories.update', $category->id), 'method' => 'PATCH')) !!}
            <div class="form-group">
			{!! Form::label('name', 'Name:') !!}
			{!! Form::text('name',null, ['class'=>'form-control','required']) !!}
             </div>

			{!! Form::submit('Submit', ['class'=>'btn btn-primary']) !!}
		
{!! Form::close() !!}
@stop