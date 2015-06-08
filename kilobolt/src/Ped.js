/*
 * TODO make different sprites for differrent parts of body (head, torso + legs, overlay for hi-tech)
 */

(function() {
	
	// bitmap is loaded from manifest
	function Ped(bitmap)
	{
		this.Container_constructor();
		this.bitmap = bitmap;
		this.sheet = new createjs.SpriteSheet
		({
			framerate: PED_FPS,
			images: [this.bitmap],
			frames: { width: PED_W, height: PED_H, count: PED_COUNT },
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
		this.sprite = new createjs.Sprite(this.sheet, "bwd");
		this.x = 0;
		this.y = 0;
	}
	var p = createjs.extend(Ped, createjs.Container);

	p.draw = function()
	{
		this.Container_draw();
		// add custom logic here.
	}
 
	window.Ped = createjs.promote(Ped, "Container");
}());
