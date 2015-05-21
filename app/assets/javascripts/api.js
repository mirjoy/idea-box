$(document).ready(function(){
	
	$("#submit-btn").on("click", function(){
		var title = $("#idea_title").val()
		var body = $("#idea_body").val()
		var num = $(".idea-num").last().text()[0]

		$.ajax ({
			method: "POST",
			url: "/api/v1/ideas",
			data: { title: title, body: body } 
		});

		return $("#idea-list").append(
			'<div class="col-sm-4">'+
			'<p class="idea-num">' + num + ". " + title + '</p>' + 
			'<p>' +  body + '</p>' +
			'<div class="btn-group">' +
				'<button class="btn btn-default">Edit Idea</button>' +
				'<button class="btn btn-danger">Delete Idea</button>' +
			'</div>' +
		'</div>'
			);
	});

	$(".delete-btn").on("click", function(){
		var ideaId = $(this).parent().attr("data-id")

		$.ajax ({
			method: "DELETE",
			url: "/api/v1/ideas/" + ideaId,
			data: { id: ideaId } 
		});

		return $(this).parent().parent().remove();
	});
});
