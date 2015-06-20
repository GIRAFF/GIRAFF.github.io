var ASSET_MANAGER = new AssetManager();

ASSET_MANAGER.queueDownload("./img/background.jpg");

ASSET_MANAGER.downloadAll(function()
{
	$("#overlay").fadeOut("slow");
});

$(document).on("click", "svg", function(e)
{
	$info_box = $("#info_box");
	if($info_box.is(":visible") && !$(e.target).is("path"))
		$info_box.fadeOut("slow");
});

$(document).on("click", "[data-description]", function(e)
{
	var
		$info_box = $("#info_box"),
		head = $(this).data("head"),
		description = $(this).data("description"),
		w = $(window).width(),
		h = $(window).height();

	$("#info_box > #head").text(head);
	$("#info_box > #description").text(description);
	
	// выравнивание
	if(e.pageX <= w/2)
		$info_box.css({
			"left": e.pageX,
			"right": "auto"
		});
	else
		$info_box.css({
			"left": "auto",
			"right": w - e.pageX
		});
	if(e.pageY <= h/2)
		$info_box.css({
			"top": e.pageY,
			"bottom": "auto"
		});
	else
		$info_box.css({
			"top": "auto",
			"bottom": h - e.pageY
		});
	//$info_box.css("display", "inline");
	$info_box.show("fast");
});