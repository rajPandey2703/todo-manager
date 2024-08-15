//$(document).ready(function() {
//        $('#userName').blur(function(event) {
//                var name = $('#userName').val();
//                $.get('GetUserServlet', {
//                        userName : name
//                }, function(responseText) {
//                        $('#ajaxGetUserServletResponse').text(responseText);
//                });
//        });
//});
//

$(document).ready(function() {
	$('#username').blur(function() {
		var response = '';
     $.ajax({ type: "GET",   
         url: "http://www.google.com",   
         async: false,
         success : function(text)
         {
             response = text;
         }
});
alert(response);
	});
});