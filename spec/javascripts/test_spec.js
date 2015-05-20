var expect = chai.expect;

var IdeaRepository = {
	index: function(){
		return $.getJSON('api/v1/ideas')
	},
	create: function(data){
		return $.post('api/v1/ideas', data)
	},
	update: function(id){
		return $.ajax('api/v1/ideas' + id, { data: data, type: 'PUT'})
	}
	destroy: function(id){
		return $.ajax('api/v1/ideas' + id, { type: 'DELETE' })
	}
};

describe('isEven()', function () {
  it('Zero is an even number. Strange, right?', function () {
    expect(isEven(0));
  });
});