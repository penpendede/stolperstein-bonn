/* globals process, console */
var input = "";

process.stdin.resume();
process.stdin.setEncoding('utf8');

process.stdin.on('data', function (chunk) {
    input += chunk;
});

process.stdin.on('end', function () {
    var parseResult = JSON.parse(input);
    var featuresIn = parseResult.features;
    var featuresOut = [];

    for (var i = 0; i < featuresIn.length; i++){
        var feature = featuresIn[i];
        var result = {
            'type': feature.type,
            'properties': {
                'ortsteil': feature.properties.ortsteil,
                'bezirk': feature.properties.bezirk
            },
            'geometry': {
                'type': feature.geometry.type,
            }
        };
        var polygonsListIn = feature.geometry.coordinates;
        var polygonsListOut = [];
        for (var j = 0; j < polygonsListIn.length; j++) {
            var polygonsIn = polygonsListIn[j];
            var polygonsOut = [];
            for (var k = 0; k < polygonsIn.length; k++) {
                var polygonIn = polygonsIn[k];
                var polygonOut = [];
                for (var l = 0; l < polygonIn.length; l ++) {
                    polygonOut.push([Number(polygonIn[l][0].toFixed(6)), Number(polygonIn[l][1].toFixed(6))]);
                }
                polygonsOut.push(polygonOut);
            }
            polygonsListOut.push(polygonsOut);
        }
        result.geometry.coordinates = polygonsListOut;
        featuresOut.push(result);
    }
    var outputJSON = JSON.stringify({
        'type': parseResult.type,
        'features': featuresOut
    });
    process.stdout.write(outputJSON);
    process.stdout.write('\n');
});
