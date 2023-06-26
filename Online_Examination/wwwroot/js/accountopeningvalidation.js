function isValid() {

    if ($('#Txtcustomer').val() == "") {
        alert("Please Enter Name ");
        $('#Name').focus();
        return false;
    }


    //else if ($("input:radio[name='dgender']:checked").val() == undefined) {
    //    alert("please select your gend !!!");
    //    $("input:radio[me='dgender']").focus();
    //    return false;
    //}
    //else if ($('#ddldist').val() == "") {
    //    bootbox.alert("please selec department");
    //    $('#ddldt').focus();
    //    return false;
    //}

};