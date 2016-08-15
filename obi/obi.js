function Trapezoid(x,y,l)
{
	this = Object.create('null');
	this.len = l;		//length
	this.x = x;
	this.y = y;
	this.dl = 0;		//angle of left side
	this.dr = 0;		//angle of right side
	this.color = '#999';//fill color
	this._path;
}

Trapezoid.prototype.draw = function()
{
}

function main()
{
	var cnv = document.getElementById("canvas"),
		ctx = cnv.getContext("2d");
	cnv.width = 800;
	cnv.height = 600;
}
