/* Author: Mark Conde

*/
var search_mode = 0;
function switchSearch(){
	if(search_mode == 0){
		search_mode = 1;
		var searchclone = $("#ride-search");
		var textclone = $("#right-section > div");
		$("#ride-search").fadeOut('fast',function(){
			$("#left-section").append(textclone);
			$("#btn-search_for_passengers").attr("src","img/btn-search_for_a_ride.png");
			$("#search-filter").attr("value","1");
		}).fadeIn();
		$("#right-switcher").fadeOut('fast',function(){
			$("#right-section").append(searchclone);
		}).fadeIn();
	}
	else{
		search_mode = 0;
		var searchclone = $("#ride-search");
		var textclone = $("#left-section > div");
		$("#ride-search").fadeOut('fast',function(){
			$("#left-section").append(searchclone);
			$("#btn-search_for_passengers").attr("src","img/btn-search_for_passengers.png");
			$("#search-filter").attr("value","0");
		}).append(textclone).fadeIn();
		$("#right-switcher").fadeOut('fast',function(){
			$("#right-section").append(textclone);
		}).append(searchclone).fadeIn();
	}
}
$("document").ready(function(){
    $('input[list]').datalist();
	$("#btn-search_for_passengers").click(function(){
		switchSearch();
	});
});