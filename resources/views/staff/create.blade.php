@extends('app')

@section('content')
    @if (count($errors) > 0)
        <div class="alert alert-danger">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
{!! Form::open(array('route' =>'admin.staff.store', 'method' =>'POST')) !!}
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