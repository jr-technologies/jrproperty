@extends('app')

@section('content')
    {!! Form::open(array('route' => 'property/store', 'method' => 'POST' ,'files' => true)) !!}

    @include('property._form')

    {!! Form::submit('Submit', ['class'=>'btn btn-primary']) !!}


    {!! Form::close() !!}

    <script>


        function digitsToWords (num) {
            var a = ['','one ','two ','three ','four ', 'five ','six ','seven ','eight ','nine ','ten ','eleven ','twelve ','thirteen ','fourteen ','fifteen ','sixteen ','seventeen ','eighteen ','nineteen '];
            var b = ['', '', 'twenty','thirty','forty','fifty', 'sixty','seventy','eighty','ninety'];

            if ((num = num.toString()).length > 11) return 'overflow';
            n = ('00000000000' + num).substr(-11).match(/^(\d{2})(\d{2})(\d{2})(\d{2})(\d{1})(\d{2})$/);

            if (!n) return; var str = '';
            str += (n[1] != 0) ? (a[Number(n[1])] || b[n[1][0]] + ' ' + a[n[1][1]]) + 'arab ' : '';
            str += (n[2] != 0) ? (a[Number(n[2])] || b[n[2][0]] + ' ' + a[n[2][1]]) + 'crore ' : '';
            str += (n[3] != 0) ? (a[Number(n[3])] || b[n[3][0]] + ' ' + a[n[3][1]]) + 'lakh ' : '';
            str += (n[4] != 0) ? (a[Number(n[4])] || b[n[4][0]] + ' ' + a[n[4][1]]) + 'thousand ' : '';
            str += (n[5] != 0) ? (a[Number(n[5])] || b[n[5][0]] + ' ' + a[n[5][1]]) + 'hundred ' : '';
            str += (n[6] != 0) ? ((str != '') ? 'and ' : '') + (a[Number(n[6])] || b[n[6][0]] + ' ' + a[n[6][1]]) + 'only ' : '';
            return str;
        }

        $(document).on('change','#price',function(){
            var price = digitsToWords($(this).val());
            $('#priceInWords').html(price);
        });
        $(document).on('keyup','#price',function(){
            var price = digitsToWords($(this).val());
            $('#priceInWords').html(price);
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