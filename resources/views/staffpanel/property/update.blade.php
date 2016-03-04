@extends('app')

@section('content')
    {!! Form::model($property, array('route' => array('staff.properties.update', $property->id), 'method' => 'PATCH' , 'files' => true)) !!}

    @include('property._form')

    {!! Form::submit('Update', ['class'=>'btn btn-primary']) !!}

    {!! Form::close() !!}

    <script>

        $(function(){

            if($('#category_id').val() == 4)
            {
                $('#div_block_container').addClass('hidden');
            }

            if($('#category_id').val() == 1)
            {
                $('#div_house_options').removeClass('hidden');
            }

            $('.not-selected').attr('checked', false);

        });

    </script>

@stop