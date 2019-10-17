var should = require("should");
var request = require("request");
var expect = require("chai").expect;
var baseUrl = "https://swapi.co";
// var baseUrl2 = "https://www.mocky.io"
var util = require("util");

describe('get data', function(){
	it('dapat data by panca', function(done){
		request.get({ url: baseUrl + '/api/people/1/'},
			function(error,response,body){
				var bodyObj = JSON.parse(body);
				expect(bodyObj.name).to.equal("Luke Skywalker");
				expect(bodyObj.hair_color).to.equal("blond");
				expect(response.statusCode).to.equal(200);
				console.log(body);
			done();
			});
	});
});

// describe('post new data', function(){
// 	it('save data', function(done){
// 		request.post({url:baseUrl2+'/v2/5185415ba171ea3a00704eed'}).send({
// 			"hello": "world"
// 		}).end((error,response,body) => {
// 			expect(response.statusCode).to.equal(201);
// 			var bodyObj = JSON.parse(body);
// 			expect(bodyObj.hello).to.equal("world");
// 		});
// 	});
// });
