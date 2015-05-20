$(document).ready(function(){
	fetchIdeas();

});

function fetchIdeas(){
	$.getJSON('api/v1/ideas').then(function(ideas){

	var renderedIdeas = ideas.map(renderIdea);
	});
};

function renderIdea(idea, id){
	return $('<div class="col-sm-4">' +
		'<p>' + idea.title +  '</p>' +
		'<p>' + idea.body +  '</p>' +
		'<p>' + idea.quality +  '</p>' +
		'<div class="btn-group">' +
			'<button class="btn btn-default">Edit Idea</button>' +
			'<button class="btn btn-danger">Delete Idea</button>' +
		'</div>' +
	'</div>'

		);
};