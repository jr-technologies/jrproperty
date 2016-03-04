@extends('app')

@section('content')

    <table class="table table-striped">
        <tr>
            <td width="25%">Owner:</td>
            <td width="75%">{{ $property->user_name }}</td>
        </tr>
        <tr>
            <td>Property Type:</td>
            <td>{{ $group[$property->group] }}</td>
        </tr>
        <tr>
            <td>Property Category:</td>
            <td>{{ $property->category_name }}</td>
        </tr>
        <tr>
            <td>Purpose:</td>
            <td>{{ $purpose[$property->purpose] }}</td>
        </tr>

        <tr>
            <td>City:</td>
            <td>{{ $property->city_name }}</td>
        </tr>
        <tr>
            <td>Society:</td>
            <td>{{ $property->society_name }}</td>
        </tr>
        @if($property->category_id != 4)
        <tr>
            <td>Block:</td>
            <td>{{ $property->block_name }}</td>
        </tr>
        @endif
        <tr>
            <td>Title:</td>
            <td>{{ $property->title }}</td>
        </tr>
        <tr>
            <td>Type:</td>
            <td>{{ ucfirst($property->type) }}</td>
        </tr>
        @if($property->user_id == $user->id || $property->share_contact_info == 'Y')
            @if($property->type == 'indirect')
                <tr>
                    <td>Estate Name:</td>
                    <td>{{ $property->estate_name }}</td>
                </tr>
            @endif
            <tr>
                <td>Contact Person:</td>
                <td>{{ $property->contact_person }}</td>
            </tr>
            <tr>
                <td>Mobile:</td>
                <td>{{ $property->mobile }}</td>
            </tr>
            <tr>
                <td>Phone:</td>
                <td>{{ $property->phone }}</td>
            </tr>
            <tr>
                <td>Address:</td>
                <td>{{ $property->address }}</td>
            </tr>
        @endif
        <tr>
            <td>Plot/House Number:</td>
            <td>
                @if($property->property_no != '')
                    {{ $property->property_no }}
                @else
                    N/A
                @endif
            </td>
        </tr>

        <tr>
            <td>Area:</td>
            <td>{{ $property->size.' '.ucfirst($property->size_unit) }}</td>
        </tr>
        <tr>
            <td>Location:</td>
            <td>{{ $location[$property->location] }}</td>
        </tr>
        <tr>
            <td>Price:</td>
            <td>{{ $property->price.' '.ucfirst($property->price_unit) }}</td>
        </tr>

        @if($property->house_type != '')
            <tr>
                <td>House Type:</td>
                <td>{{ $house_type[$property->house_type] }}</td>
            </tr>
        @endif

        @if($property->bedrooms != '' && $property->bedrooms != '0')
            <tr>
                <td>Bedrooms:</td>
                <td>{{ $bedrooms[$property->bedrooms] }}</td>
            </tr>
        @endif

        @if($property->features != '')
            <tr>
                <td>Features:</td>
                <td>{{ str_replace(',', ', ', $property->features) }}</td>
            </tr>
        @endif

        <tr>
            <td>Other Details:</td>
            <td>{{ $property->detail }}</td>
        </tr>

        <tr>
            <td>Status:</td>
            <td>{{ $status[$property->sold] }}</td>
        </tr>


    </table>

    <a href="javascript:;" onclick="history.back();" class="btn btn-default btn-lg">Back</a>

@stop