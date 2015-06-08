function main()
{
	
}

var ASSET_MANAGER = new AssetManager();

ASSET_MANAGER.queueDownload('./img/background.jpg');
//ASSET_MANAGER.queueDownload('img/names.png');

ASSET_MANAGER.downloadAll(function()
{
	$("#overlay").fadeOut('slow');
	main();
});

/*$("path").mouseenter(function()
{
	$(this).addClass("highlighted");
});

$("path").mouseleave(function()
{
	$(this).removeClass("highlighted");
});*/