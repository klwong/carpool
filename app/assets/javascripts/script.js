/* Author: Mark Conde

*/
$("document").ready(function(){
	$("#btn-search_for_passengers").click(function(){
		var searchclone = $("#ride-search").clone();
		var textclone = $("#right-section > div").clone();
		$("#ride-search").fadeOut('slow',function(){
			$("#ride-search").remove();
			$("#right-section > div").remove();
			$("#left-section").append(textclone);
			$("#right-section").append(searchclone);
		});
		
		$("#right-section > div").fadeOut('slow');
	});
});