/* Author: Mark Conde

*/
var search_mode = 0;
function switchSearch(){
	if(search_mode == 0){
		search_mode = 1;
		$("#search-filter").attr("value","1");
		console.log($("#search-filter").attr("value"));
		var searchclone = $("#ride-search");
		var textclone = $("#right-section > div");
		$("#left-section").fadeOut('fast',function(){
			$("#left-section").append(textclone);
			$("#btn-search_for_passengers").attr("src","img/btn-search_for_a_ride.png");
		}).fadeIn();
		$("#right-section").fadeOut('fast',function(){
			$("#right-section").append(searchclone);
		}).fadeIn();
	}
	else{
		search_mode = 0;
		$("#search-filter").attr("value","0");
		console.log($("#search-filter").attr("value"));
		var searchclone = $("#ride-search");
		var textclone = $("#left-section > div");
		$("#right-section").fadeOut('fast',function(){
			$("#left-section").append(searchclone);
			$("#btn-search_for_passengers").attr("src","img/btn-search_for_passengers.png");
		}).append(textclone).fadeIn();
		$("#left-section").fadeOut('fast',function(){
			$("#right-section").append(textclone);
		}).append(searchclone).fadeIn();
	}
}
$("document").ready(function(){
	$("#btn-search_for_passengers").click(function(){
		switchSearch();
	});
});