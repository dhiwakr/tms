function clearwatermark(defaulttext, textboxcontrol) {
    if (textboxcontrol.value == defaulttext) {
        textboxcontrol.value = "";
        textboxcontrol.style.color = "black";



    }


}
function creatwatermark(defaulttext, textboxcontrol) {
    if (textboxcontrol.value.length == 0) {
        textboxcontrol.value = defaulttext;
        
        textboxcontrol.style.color = "gray";



    }


}



var openFile = function (event) {
    var input = event.target;

    var reader = new FileReader();
    reader.onload = function () {
        var dataURL = reader.result;
        var output = document.getElementById('output');
        output.src = dataURL;
    };
    reader.readAsDataURL(input.files[0]);
};


function hid() {

    
    var title = document.getElementById("DropDownList3").value;

    if (title == "Driver") {
        document.getElementById("driver_details").style.display = 'none';
        
    }
    else {
        document.getElementById("driver_details").style.display = '';
        //document.getElementById("trcanada").style.display = '';
        //document.getElementById("trusa").style.display = ''; <%--Onchange="viewdriver()"--%>
    }
    //var elementF = document.getElementById("driver_details")[1];
    //var parent = elementF.parentNode;
    //parent.removeChild(elementF);


}
function viewdriver() {

    var title = document.getElementById("#ContentPlaceHolder1_DropDownList3").value;

    if (title == "Driver") {
        document.getElementById("Driver").style.display = 'none';
        
    }
    else {
        document.getElementById("Driver").style.display = '';
        //document.getElementById("trcanada").style.display = '';
        //document.getElementById("trusa").style.display = ''; <%--Onchange="viewdriver()"--%>
    }
   
}