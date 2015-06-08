var ASSET_MANAGER = new AssetManager();

//ASSET_MANAGER.queueDownload('./img/Kolobovere.png');
//ASSET_MANAGER.queueDownload('img/names.png');

ASSET_MANAGER.downloadAll(function()
{
	$("#overlay").fadeOut('slow');
});

/*$(window).load(function()
{
	var page_h = $(this).height();
	var page_w = $(this).width();
	$("#svg_map").width(page_w);
	$("#svg_map").height(page_h);
});

$(window).resize(function()
{
	var page_h = $(this).height();
	var page_w = $(this).width();
	$("#map").width(page_w);
	$("#map").height(page_h);
});*/