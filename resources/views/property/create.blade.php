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
    {!! Form::open(array('route' => 'property/store', 'method' => 'POST' ,'files' => true)) !!}

    @include('property._form')

    {!! Form::submit('Submit', ['class'=>'btn btn-primary']) !!}


    {!! Form::close() !!}

    <script>

        $(document).on('change','#price',function(){
            var price = digitsToWords($(this).val());
            var final_price_html = (price == '')?'':'<span  id="priceInWords">'+price+'</span>';
            $('#priceInWordsContainer').html(final_price_html);
        });
        $(document).on('keyup','#price',function(){
            var price = digitsToWords($(this).val());
            var final_price_html = (price == '')?'':'<span  id="priceInWords">'+price+'</span>';
            $('#priceInWordsContainer').html(final_price_html);
        });

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