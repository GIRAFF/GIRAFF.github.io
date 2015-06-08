const FRAMERATE = 60
var stage, w, h;
var bg;

function init()
{
	createjs.Ticker.timingMode = createjs.Ticker.RAF_SYNCHED;
	createjs.Ticker.setFPS(FRAMERATE);
	stage = new createjs.Stage("gameCanvas");
	bg = new createjs.Shape();

	ball.graphics.beginFill("#878787").drawRect(0, 0, w, h);

	stage.addChild();
	createjs.Ticker.addEventListener("tick", tick);
}

function tick(event)
{
	w = stage.canvas.width;
	h = stage.canvas.height;
	stage.update();
}
