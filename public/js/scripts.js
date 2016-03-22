
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

function generate_slug()
{
    var url = $('[name="ajax_url"]').val();
    var name = $('[name="name"]').val();
    var id = $('[name="id"]').val();
    var _token = $('[name="_token"]').val();
    if(name == '') return;
    $('[name="slug"]').val('loading, please wait ...');
    $('[name="slug"]').attr('disabled', true);

    $.ajax({
      method: "POST",
      url: url,
      data: { name: name, id: id, _token: _token}
    }).done(function(msg){
          var ret = $.parseJSON(msg);
          $('[name="slug"]').val(ret.slug);
          $('[name="slug"]').attr('disabled', false);
          //console.log('Return :: ' + msg);
      }).fail(function(msg){
          console.log('FAIL :: ' + msg);
      });
}

function show_house_options(id)
{
    if(id == 1)
        $('#div_house_options').removeClass('hidden');
    else
        $('#div_house_options').addClass('hidden');

    if(id == 4)
    {
        $('#div_block_container').addClass('hidden');
        $('#block_id').removeAttr('required');
    }
    else
    {
        $('#div_block_container').removeClass('hidden');
        $('#block_id').attr('required', 'required');;
    }
}

function property_data(id, field)
{

    var url = $('[name="ajax_url"]').val();
    var _token = $('[name="_token"]').val();

    // alert(id + ' -- ' + field + ' -- ' + url + ' -- ' + _token);
    //return;

    $.ajax({
        method: "POST",
        url: url,
        data: { id: id, field: field, _token: _token}
    }).done(function(data)
    {
        json = $.parseJSON(data);
        var select = $("#"+field)
        var options = '';



        select.empty();

        options += "<option value=''>Please Select ...</option>";

        for(var i=0 ; i < json.length ; i++)
        {
            options += "<option value='" + json[i].id + "'>" + json[i].name + "</option>";
        }





        select.append(options);

        if(field == 'society_id')
        {
            var select = $("#block_id");
            var options = '';
            select.empty();
            options += "<option value=''>Please Select ...</option>";
            select.append(options);
        }

        //if(field == 'block_id' && $('#category_id').val() == 4)
        //{
        //    alert($("#block_id option:first").val());
        //    $("#block_id").val($("#block_id option:first").val());
        //}

    }).fail(function(msg){
        console.log('FAIL :: ' + msg);
    });
}

function updateBlock(id, field)
{

    var url = $('[name="ajax_url"]').val();
    var _token = $('[name="_token"]').val();

    // alert(id + ' -- ' + field + ' -- ' + url + ' -- ' + _token);
    //return;

    $.ajax({
        method: "POST",
        url: url,
        data: { id: id, field: field, _token: _token}
    }).done(function(data)
    {
        json = $.parseJSON(data);
        var select = $("#"+field)
        var options = '';



        select.empty();

        options += "<option value=''>Please Select ...</option>";

        for(var i=0 ; i < json.length ; i++)
        {
            options += "<option value='" + json[i].id + "'>" + json[i].name + "</option>";
        }





        select.append(options);

        if(field == 'society_id')
        {
            var select = $("#block_id");
            var options = '';
            select.empty();
            options += "<option value=''>Please Select ...</option>";
            select.append(options);
        }

        //if(field == 'block_id' && $('#category_id').val() == 4)
        //{
        //    alert($("#block_id option:first").val());
        //    $("#block_id").val($("#block_id option:first").val());
        //}

    }).fail(function(msg){
        console.log('FAIL :: ' + msg);
    });
}

function set_property_type(v)
{
    if(v == ''){
        $('#propertyContactInfo').attr('style', 'display:none!important;');
    }else{
        $('#propertyContactInfo').attr('style', 'display:block!important;');
    }

    if(v == 'indirect')
    {
        $('#div_estate_name').attr('style', 'display:block!important;');
        $('#div_estate_name').attr('required', 'required');
    }
    else
    {
        $('#div_estate_name').attr('style', 'display:none!important;');
        $('#div_estate_name').removeAttr('required');
    }
}

function category_changed(category_id, feature_id){
    var category_id = (category_id === undefined)?'category_id':category_id;
    var feature_id = (feature_id === undefined)?'apartment_features':feature_id;
    var category = $( "#"+category_id+" option:selected" ).val();

    if(category == 3){
        $('#'+feature_id).attr('style', 'display:block!important;');
        $('#bedrooms').attr('required', 'required');
    }else{
        $('#'+feature_id).attr('style', 'display:none!important;');
        $('#bedrooms').removeAttr('required');
    }
}
function societyChangedInPropertySearch(societies_id){
    var societies_id = (societies_id === undefined)?'society':societies_id;
    var value = $( "#"+societies_id+" option:selected" ).val();
    updateBlock(value, 'block_id');
}
function lead_type_changed(lead_type_id)
{
    lead_type_id = (lead_type_id === undefined)?'lead_type':lead_type_id;
    var lead_type_val = $( "#"+lead_type_id+" option:selected" ).val();
    set_property_type(lead_type_val);
}
$(document).ready(function(){

});