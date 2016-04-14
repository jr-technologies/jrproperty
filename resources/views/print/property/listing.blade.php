<body onload="window.print()">
    <div class="table-responsive">
    <table class="table table-striped">
        <thead>
        <tr style="background-color: lightgray">
            <th width="10%">Owner</th>
            <th width="15%">Society</th>
            <th width="10%">Block</th>
            <th width="14%">Property No</th>
            <th width="12%">Size</th>
            <th width="12%">Price</th>
            <th width="10%">Status</th>
        </tr>
        </thead>
        <tbody>
        @foreach($properties as $date => $group)
            @foreach($group as $property)
            <?php
            $updateAble = '';
            if(Helper::daysDiffInTimes(date('Y-m-d H:i:s'), $property->updated_at) > 29 && $property->sold == 'N')
                $updateAble = 'update-able';
            ?>

            <tr class="{{$updateAble}}">
                <td style="text-align: center">
                    {{ $property->user_name }}
                </td>
                <td style="text-align: center">
                    {{ $property->society_name }}
                </td>
                <td style="text-align: center">
                    @if($property->category_id == 4)
                        N/A
                    @else
                        {{ $property->block_name }}</td>
                @endif
                <td style="text-align: center">
                    @if($property->property_no != '')
                        {{ $property->property_no }}
                    @else
                        N/A
                    @endif
                </td>
                <td>
                    <?php
                    $land_unit = $property->size_unit;
                    if(isset($_GET['land']) && $_GET['land'] != ''){
                        $land_unit = $_GET['land'];
                    }
                    ?>
                    {{ \App\Libs\Helpers\Land::convert('square feets' , $land_unit, $property->size) . ' ' . ucfirst($land_unit) }}
                </td>
                <td style="text-align: center">{{ $property->price  }}</td>
                <td style="text-align: center">{{ $data['status'][$property->sold] }}</td>

            </tr>
            @endforeach
        @endforeach
        </tbody>
    </table>

    <div class="text-center">
        <?php
        if(sizeof($properties) == 0)
            echo "<b style='color:#ff3920' >No record Found!</b>"
        ?>
    </div>

</div>
</body>