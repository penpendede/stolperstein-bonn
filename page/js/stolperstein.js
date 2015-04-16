/*jslint browser:true*/
/*jslint unparam:true*/
/*global $, jQuery, L*/

var map = L.map('map', {
    center: [50.7085234, 7.115605],
    zoom: 12,
    maxZoom: 19,
    fullscreenControl: true
});
L.tileLayer('http://{s}.tile.openstreetmap.de/tiles/osmde/{z}/{x}/{y}.png', {
    attribution: '© OpenStreetMap contributors'
}).addTo(map);

var markers = L.markerClusterGroup();

$.ajax({
    dataType: "json",
    url: "stolperstein.json",
    success: function (geoJsonData) {
        "use strict";
        var geoJsonLayer = L.geoJson(geoJsonData, {
            onEachFeature: function (feature, layer) {
                var props, description, opfer;
                layer.bindPopup(feature.properties.address);
                props = feature.properties;
                description = [ '<table>' ];
                opfer = props.vorname + ' ' + props.familienname;
                if (props.geborene) {
                    opfer += " geb. " + props.geborene;
                }
                if (props.jahrgang) {
                    opfer += "<br />Jahrgang " + props.jahrgang;
                }
                description.push("<tr><th>Opfer:</th><td>" + opfer + "</td></tr>");
                description.push("<tr><th>Ort:</th><td>" + props.ort + "</td></tr>");
                description.push("<tr><th>Verlegejahr:</th><td>" + props.verlegejahr + "</td></tr>");
                description.push("</table>");
                layer.bindPopup(description.join(''));
            }
        });
        markers.addLayer(geoJsonLayer);
        map.addLayer(markers);

    }
}).error(function () {
    "use strict";
    return;
});
