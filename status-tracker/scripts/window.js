onload = function() {
 
  var minimizeNode = document.getElementById('minimize-button');
  if (minimizeNode) {
    minimizeNode.onclick = function() {
      chrome.runtime.getBackgroundPage(function(background) {
        background.minimizeAll();
      });
    };
  }
  
	var rad = document.forms.statusUpdate.optradio;
	for(var i = 0; i < rad.length; i++) {
    rad[i].onclick = function() {
		$("#currenttask").addClass("hide");
        if(this.value ==  'on') {
            $("#currenttask").removeClass("hide");
		}
        console.log(this.value)
    };
}
  
  $('#login-button').click(function(){
	  var datastring = $('#login').serialize();
	  var url = "http://localhost:4567/login?"+datastring;
		$.post(url, function(data, status){
			$('#display').html("Data: " + data + "\nStatus: " + status);
		});
	  //datastring = "{\"uname\" : \"myName\"}";
	  /*$.ajax({
		type: "GET",
		url: "http://localhost:4567/login?"+datastring,
		data: datastring,
		dataType: "json",
		success: function(data) {
        //var obj = jQuery.parseJSON(data); if the dataType is not specified as json uncomment this
        // do what ever you want with the server response
		},
		error: function() {
			alert('error handing here');
		}
	});*/
 });
 

  var closeNode = document.getElementById('close');
  if (closeNode) {
    closeNode.onclick = function() {
      window.close();
    };
  }
}
