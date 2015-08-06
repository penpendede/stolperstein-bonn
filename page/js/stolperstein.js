/*jslint browser:true, unparam:true*/
/*global $, jQuery, L, osmtogeojson*/

$(document).ready(
    function () {
        var map = L.map(
            'map',
            {
                center: [50.7085234, 7.115605],
                maxBounds: [[50.63, 7.01], [50.78, 7.22]],
                zoom: 12,
                maxZoom: 19,
                fullscreenControl: true
            }
        );
        L.tileLayer(
            'http://{s}.tile.openstreetmap.se/hydda/base/{z}/{x}/{y}.png',
            {
                attribution: 'Tiles courtesy of <a href="http://openstreetmap.se/" target="_blank">OpenStreetMap Sweden</a> &mdash; Map data &copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>',
                useCache: true
            }
        ).addTo(map);

        L.tileLayer(
            'http://{s}.tile.openstreetmap.se/hydda/roads_and_labels/{z}/{x}/{y}.png',
            {
                attribution: 'Tiles courtesy of <a href="http://openstreetmap.se/" target="_blank">OpenStreetMap Sweden</a> &mdash; Map data &copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>',
                useCache: true
            }
        ).addTo(map);

        var markers = L.markerClusterGroup();

        var popup = L.popup().setLatLng([50.7085234, 7.115605]).setContent('<h3 style="text-align:center;">Einen Moment bitte</h3><p style="text-align:center;">Die aktuellen Stolperstein-Informationen werden bei OpenStreetMap abgefragt.</p>').openOn(map);
        $.ajax(
            {
                dataType: 'json',
                datatype: 'html',
                url: 'http://overpass-api.de/api/interpreter?data=[out:json][timeout:25];area(3600062508)->.area;(node["memorial:type"="stolperstein"](area.area);way["memorial:type"="stolperstein"](area.area);relation["memorial:type"="stolperstein"](area.area););out meta;>;out meta qt;',
                success: function (jsonData) {
                    'use strict';
                    map.closePopup(popup);
                    var geoJsonData = osmtogeojson(jsonData);
                    var geoJsonLayer = L.geoJson(
                        geoJsonData,
                        {
                            onEachFeature: function (feature, layer) {
                                var tags = feature.properties.tags;
                                var description = [ '<table>' ];
                                var ort = '';

                                if (tags.name) {
                                    if (tags['addr:street']) {
                                        ort = tags['addr:street'];

                                        if (tags['addr:housenumber']) {
                                            ort = ort + ' ' + tags['addr:housenumber'];
                                        }
                                    }
                                    if (tags['addr:city']) {
                                        if (ort) {
                                            ort = ort + ', ';
                                        }
                                        if (tags['addr:postcode']) {
                                            ort = ort + tags['addr:postcode'] + ' ';
                                        }
                                        ort = ort + tags['addr:city'];
                                    }


                                    description.push('<tr><th>' + tags.name + '</th></tr>');
                                    if (ort) {
                                        description.push('<tr><td>' + ort + '</td></tr>');
                                    }
                                    if (tags['memorial:text']) {
                                        description.push('<tr><td>' + tags['memorial:text'] + '</td></tr>');
                                    }
                                    description.push('</table>');
                                    if (tags.image) {
                                        description.push(
                                            '<a href="' +
                                            tags.image +
                                            '" target="_blank"><img width="300" height="225" src="' +
                                            tags.image.replace(
                                                'https://upload.wikimedia.org/wikipedia/commons',
                                                'https://upload.wikimedia.org/wikipedia/commons/thumb'
                                            ) +
                                            '/300px-' +
                                            tags.image.split('/')[tags.image.split('/').length - 1] +
                                            '" /></a>'
                                        );
                                    }

                                    layer.bindPopup(feature.properties.address);
                                    layer.bindPopup(description.join(''));
                                }
                            }
                        }
                    );
                    markers.addLayer(geoJsonLayer);
                    map.addLayer(markers);
                },
                error: function(XMLHttpRequest, textStatus, errorThrown) {
                    popup.setContent('<h3 style="text-align:center;">Leider konnten die Daten der Stolpersteine nicht geladen werden.</h3>');
                }
            }
        );
    }
);
