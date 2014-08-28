(function (window) {

	function Player() {
		this.initialize();
	}

	var p = Player.prototype = new createjs.Container();

// public properties:
	Player.TOGGLE = 60;
	Player.MAX_THRUST = 2;
	Player.MAX_VELOCITY = 5;

// public properties:
	p.shipFlame;
	p.shipBody;

	p.timeout;
	p.thrust;

	p.vX;
	p.vY;

	p.bounds;
	p.hit;

// constructor:
	p.Container_initialize = p.initialize;	//unique to avoid overiding base class

	p.initialize = function ()
	{
		this.Container_initialize();

		this.shipFlame = new createjs.Shape();
		this.shipBody = new createjs.Shape();

		this.addChild(this.shipFlame);
		this.addChild(this.shipBody);

		this.makeShape();
		this.timeout = 0;
		this.thrust = 0;
		this.vX = 0;
		this.vY = 0;
		this.shipFlame.alpha = 0;
	}

// public methods:
	p.makeShape = function ()
	{
		//draw ship body
		var g = this.shipBody.graphics;
		g.clear();
		g.beginStroke("#FFFFFF");

		g.moveTo(0, 10);	//nose
		g.lineTo(5, -6);	//rfin
		g.lineTo(0, -2);	//notch
		g.lineTo(-5, -6);	//lfin
		g.closePath(); // nose


		//draw ship flame
		var o = this.shipFlame;
		o.scaleX = 0.5;
		o.scaleY = 0.5;
		o.y = -5;

		g = o.graphics;
		g.clear();
		g.beginStroke("#FFFFFF");

		g.moveTo(2, 0);		//ship
		g.lineTo(4, -3);	//rpoint
		g.lineTo(2, -2);	//rnotch
		g.lineTo(0, -5);	//tip
		g.lineTo(-2, -2);	//lnotch
		g.lineTo(-4, -3);	//lpoint
		g.lineTo(-2, -0);	//ship

		//furthest visual element
		this.bounds = 10;
		this.hit = this.bounds;
	}

	p.tick = function (event)
	{
		//move by velocity
		this.x += this.vX;
		this.y += this.vY;

		//with thrust flicker a flame every Player.TOGGLE frames, attenuate thrust
		if (this.thrust > 0) {
			this.timeout++;
			this.shipFlame.alpha = 1;

			if (this.timeout > Player.TOGGLE) {
				this.timeout = 0;
				if (this.shipFlame.scaleX == 1) {
					this.shipFlame.scaleX = 0.5;
					this.shipFlame.scaleY = 0.5;
				} else {
					this.shipFlame.scaleX = 1;
					this.shipFlame.scaleY = 1;
				}
			}
			this.thrust -= 0.5;
		} else {
			this.shipFlame.alpha = 0;
			this.thrust = 0;
		}
	}

	p.accelerate = function ()
	{
		//increase push ammount for acceleration
		this.thrust += this.thrust + 0.6;
		if (this.thrust >= Player.MAX_THRUST)
		{
			this.thrust = Player.MAX_THRUST;
		}

		//accelerate
		this.vX += Math.sin(this.rotation * (Math.PI / -180)) * this.thrust;
		this.vY += Math.cos(this.rotation * (Math.PI / -180)) * this.thrust;

		//cap max speeds
		this.vX = Math.min(Player.MAX_VELOCITY, Math.max(-Player.MAX_VELOCITY, this.vX));
		this.vY = Math.min(Player.MAX_VELOCITY, Math.max(-Player.MAX_VELOCITY, this.vY));
	}

	window.Player = Player;

}(window));