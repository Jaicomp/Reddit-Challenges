var request = require('request');


process.stdin.on('data', function(data) {

	let endpoint = "http://pokeapi.co/api/v2/type/"

	var parsedData = data.toString().substr(0, data.toString().length-1).split(' ');
	var srcType = parsedData[0];
	var dstType = parsedData[2];

	request(endpoint + srcType + "/", function(err, resp, html) {
		var srcTypeDmg = JSON.parse(html).damage_relations;

		var damageNameList = ['no_damage_to','half_damage_to', 'double_damage_to'];
		var damageMultiplierList = [0, 0.5, 2.0];

		var damageMultilier = 1.0;

		if (err) {
			console.log("Error requesting HTML");
		}

		for (var i = 0; i < damageNameList.length; i++) {
			
			for (var j = 0; j < srcTypeDmg[damageNameList[i]].length; j++) {

				if (srcTypeDmg[damageNameList[i]][j].name == dstType) {

					damageMultiplier = damageMultiplierList[i];
				}
			}
		}

		console.log(damageMultiplier);

	});


});


