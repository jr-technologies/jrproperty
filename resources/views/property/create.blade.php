@extends('app')

@section('content')
    {!! Form::open(array('route' => 'property/store', 'method' => 'POST' ,'files' => true)) !!}

    @include('property._form')

    {!! Form::submit('Submit', ['class'=>'btn btn-primary']) !!}


    {!! Form::close() !!}

    <script>

        $(function(){
            $('#size_unit_marla').attr('checked', true);
            $('#price_unit_lakh').attr('checked', true);
        });

        $(document).ready(function(){
            societyChangedInPropertySearch('society_id');
            category_changed();
        });

        $(document).on('change','#category_id',function(){
            category_changed();
        });

    </script>

@stop