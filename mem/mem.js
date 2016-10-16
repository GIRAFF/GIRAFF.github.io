var quest;
var answer;

function get_quest()
{
	var idx = Math.floor(Math.random()*base.length);
	quest = document.getElementById("quest");
	answer = document.getElementById("answer");
	quest.innerHTML = base[idx].q;
	answer.innerHTML = base[idx].a;
}

function show_answer()
{
	answer.style.display = "block";
}
