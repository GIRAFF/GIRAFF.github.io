const DIR_NONE = 0;
const DIR_LEFT = 1;
const DIR_UP = 2;
const DIR_RIGHT = 3;
const DIR_DOWN = 4;
const STEP = 5;

const KEY_LEFT = 37;
const KEY_RIGHT = 39;
const KEY_UP = 38;
const KEY_DOWN = 40;

var stage, w, h, loader;
var player;
var direction = 0;

function manifest_loaded()
{
	var sheet_player = new createjs.SpriteSheet
	({
		framerate: 30,
		images: [loader.getResult("player")],
		frames: { width: 14, height: 20, count: 12 },
		animations:
		{
			fwd: 3,
			walk_fwd: [4, 5, "walk_fwd"],
			bwd: 0,
			walk_bwd: [1, 2, "walk_bwd"],
			left: 6,
			walk_left: [7, 8, "walk_left"],
			right: 9,
			walk_right: [10, 11, "walk_right"]
		}
	});
	player = new createjs.Sprite(sheet_player, "bwd");
	player.x = 100;
	player.y = 100;
	
	stage.addChild(player);
	this.document.onkeydown = keydown;
	this.document.onkeyup = keyup;
	
	createjs.Ticker.timingMode = createjs.Ticker.RAF;
	createjs.Ticker.addEventListener("tick", tick);
	// TODO mutafusken' events and mutafusken' ticker!
}

function init()
{
	stage = new createjs.Stage("game_canvas");
	w = stage.canvas.width;
	h = stage.canvas.height;

	var manifest = [
		{src: "img/player.png", id: "player"}
	];

	loader = new createjs.LoadQueue(false);
	loader.addEventListener("complete", manifest_loaded);
	loader.loadManifest(manifest, true, "./assets/");
}

function keydown(event)
{
	switch(event.keyCode)
	{
		case KEY_LEFT:
			direction = DIR_LEFT;
			player.gotoAndPlay("walk_left");
		break;
		case KEY_RIGHT:
			direction = DIR_RIGHT;
			player.gotoAndPlay("walk_right");
		break;
		case KEY_UP:
			direction = DIR_UP;
			player.gotoAndPlay("walk_fwd");
		break;
		case KEY_DOWN:
			direction = DIR_DOWN;
			player.gotoAndPlay("walk_bwd");
		break;
	}
}

function keyup(event)
{
	switch(event.keyCode)
	{
		case KEY_LEFT:
			direction = DIR_NONE;
			player.gotoAndPlay("left");
		break;
		case KEY_RIGHT:
			direction = DIR_NONE;
			player.gotoAndPlay("right");
		break;
		case KEY_UP:
			direction = DIR_NONE;
			player.gotoAndPlay("fwd");
		break;
		case KEY_DOWN:
			direction = DIR_NONE;
			player.gotoAndPlay("bwd");
		break;
	}
}

function tick(event)
{
	var deltaS = event.delta / 1000;

	switch(direction)
	{
		case DIR_LEFT:
			player.x -= STEP;
		break;
		case DIR_RIGHT:
			player.x += STEP;
		break;
		case DIR_UP:
			player.y -= STEP;
		break;
		case DIR_DOWN:
			player.y += STEP;
		break;
	}
	stage.update(event);
}

