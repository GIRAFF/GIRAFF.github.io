/* TODO rewrite this fusken pregenerated class */

(function() {
 
	function Player(label)
	{
		this.Container_constructor();
		this.label = label;
	}
	var p = createjs.extend(Player, createjs.Container);
 
	p.draw = function()
	{
		this.Container_draw();
		// add custom logic here.
	}
 
	window.Player = createjs.promote(Player, "Container");
}());
