onload = function() {
 
  var minimizeNode = document.getElementById('minimize-button');
  if (minimizeNode) {
    minimizeNode.onclick = function() {
      chrome.runtime.getBackgroundPage(function(background) {
        background.minimizeAll();
      });
    };
  }
  
  
   $('#login-button').click(function(){
	  event.preventDefault();
	  var datastring = $.fn.serializeObject();
	 // var formData = JSON.parse(JSON.stringify(jQuery('#login').serializeArray()))
	  var url = "http://localhost:8080/app/login";
	 	
	  $.ajax({
		type: "POST",
		url: url,
		headers: {
			'Access-Control-Allow-Origin' : '*',
		},
		async 		: true,
		data: datastring,
		contentType : "application/json",
		success: function(data) {
        //var obj = jQuery.parseJSON(data); if the dataType is not specified as json uncomment this
        // do what ever you want with the server response
		},
		error: function(error) {
			alert('error handing here');
		}
	});
 });
 
  

  var closeNode = document.getElementById('close');
  if (closeNode) {
    closeNode.onclick = function() {
      window.close();
    };
  }
}
$.fn.serializeObject = function()
{
    var o = {};
    var a = $('#login').serializeArray();
    $.each(a, function() {
        if (o[this.name] !== undefined) {
            if (!o[this.name].push) {
                o[this.name] = [o[this.name]];
            }
            o[this.name].push(this.value || '');
        } else {
            o[this.name] = this.value || '';
        }
    });
    return o;
};