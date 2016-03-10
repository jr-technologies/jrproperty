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

$(document).ready(function(){

});