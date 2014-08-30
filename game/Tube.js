(function() {

	var Tube = function(label) {
		this.initialize(label);
	}
	var p = Tube.prototype = new createjs.Container();

	Tube.MAX_HEALTH = 60;

	p.health;

	Tube.prototype.Container_initialize = p.initialize;

	Tube.prototype.initialize = function(label) 
	{
		this.Container_initialize();
		
	}

window.Tube = Tube;
}());