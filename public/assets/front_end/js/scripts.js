function pone(id, field)
{
  // alert(id);
    var url = $('[name="ajax_url"]').val();
    var _token = $('[name="_token"]').val();

   //alert(id + ' -- ' + field + ' -- ' + url + ' -- ' + _token);
    //return;

    $.ajax({
        method: "POST",
        url: url,
        data: { id: id, field: field, _token: _token}
    }).done(function(data)
    {
        
        json = data;
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