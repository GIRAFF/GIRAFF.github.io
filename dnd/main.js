var ASSET_MANAGER = new AssetManager();

ASSET_MANAGER.queueDownload('./img/background.jpg');
//ASSET_MANAGER.queueDownload('img/names.png');

ASSET_MANAGER.downloadAll(function()
{
	$("#overlay").fadeOut('slow');
});

$(document).on('click', '[data-description]', function(e)
{
	$head = $(this).data("head");
	$description = $(this).data("description");

	$("#info_box > #head").text($head);
	$("#info_box > #description").text($description);
	$("#info_box").css("top", e.pageY + 5)
				.css("left", e.pageX + 5)
				.css("display", "inline");
});

/*$("path").mouseenter(function()
{
	$(this).addClass("highlighted");
});

$("path").mouseleave(function()
{
	$(this).removeClass("highlighted");
});*/