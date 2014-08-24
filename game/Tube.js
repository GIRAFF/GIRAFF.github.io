(function() {

	var Button = function(label) {
		this.initialize(label);
	}
	var p = Button.prototype = new createjs.Container();

	Button.prototype.Container_initialize = p.initialize;

	Button.prototype.initialize = function(label) 
	{
		this.Container_initialize();
		
	}

window.Button = Button;
}());