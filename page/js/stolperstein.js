/*jslint browser:true, unparam:true*/
/*global $, jQuery, L, osmtogeojson, console*/

/*
Copyright 2016 Josef 'Jupp' Schugt <penpendede@mail.ru>. All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

1. Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
this list of conditions and the following disclaimer in the documentation
and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE FREEBSD PROJECT ``AS IS'' AND ANY EXPRESS
OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN
NO EVENT SHALL THE FREEBSD PROJECT OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

The views and conclusions contained in the software and documentation
are those of the authors and should not be interpreted as representing
official policies, either expressed or implied, of the FreeBSD
Project.
*/

/* The information encoded in 'orte' und 'personen'
 * is adapted from Wikipedia and hence subject to the
 *     Creative Commons Attribution-ShareAlike 3.0 Unported
 * license.
 */


function bezirkName(bezirkId, bezirksName) {
    return bezirksName[bezirkId - 1];
}

function ortsteilName(ortsteilId, ortsteile) {
    return ortsteile[ortsteilId - 1].name;
}

function stolpersteinAnzahl(ortsteilId, ortsteile) {
    return ortsteile[ortsteilId - 1].count || 0;
}

function link(text, tokens) {
    var tokenized = [text];
    var position;
    var index;
    var pre;
    var post;
    var match;
    $.each(tokens, function (key) {
        for (index = 0; index < tokenized.length; index++) {
            position = tokenized[index].indexOf(key);
            if (position > -1 && tokenized[index] !== key) {
                pre = tokenized[index].substring(0, position);
                match = tokenized[index].substr(position, key.length);
                post = tokenized[index].substr(position + key.length);
                tokenized.splice(index + 1, 0, post);
                tokenized[index] = match;
                tokenized.splice(index, 0, pre);
                index--;
            }
        }
    });
    $.each(tokens, function (key, value) {
        for (index = 0; index < tokenized.length; index++) {
            if (tokenized[index] === key) {
                tokenized[index] = "<a href=\"" + value.url + "\" title=\"" + value.short + "\" target=\"_blank\">" + key + "</a>";
            }
        }
    });
    return tokenized.join('');
}

function inGerman(val) {
    switch (val) {
        case 0: return 'kein';
        case 1: return 'ein';
        case 2: return 'zwei';
        case 3: return 'drei';
        case 4: return 'vier';
        case 5: return 'f&uuml;nf';
        case 6: return 'sechs';
        case 7: return 'sieben';
        case 8: return 'acht';
        case 9: return 'neun';
        case 10: return 'zehn';
        case 11: return 'elf';
        case 12: return 'zw&ouml;lf';
        default: return val.toString();
    }
}

function addBaseLayers(map) {
    L.tileLayer(
        'https://{s}.tile.openstreetmap.se/hydda/base/{z}/{x}/{y}.png',
        {
            attribution: 'Tiles courtesy of <a href="http://openstreetmap.se/" target="_blank">OpenStreetMap Sweden</a> ' +
            '&mdash; Map data &copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>',
            useCache: true
        }
    ).addTo(map);

    L.tileLayer(
        'https://{s}.tile.openstreetmap.se/hydda/roads_and_labels/{z}/{x}/{y}.png',
        {
            attribution: 'Tiles courtesy of <a href="http://openstreetmap.se/" target="_blank">OpenStreetMap Sweden</a> ' +
            '&mdash; Map data &copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>',
            useCache: true
        }
    ).addTo(map);
    return map;
}

function addBonnCityLimits(map) {
    $.ajax({
        dataType: 'json',
        url: 'files/Stadt_Bonn.geojson',
        success: function (jsonData) {
            L.geoJson(jsonData, {
                style: function (feature) {
                    return {
                        weight: 5,
                        color: '#f00',
                        opacity: 0.4,
                        fillColor: '#00f',
                        fillOpacity: 0.08
                    };
                }
            }).addTo(map);
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
        }
    });
}

function addBonnMunicipalityLimits(map) {
    $.ajax({
        dataType: 'json',
        url: 'files/Stadtbezirke_Bonn.geojson',
        success: function (jsonData) {
            L.geoJson(jsonData, {
                style: function (feature) {
                    return {
                        weight: 5,
                        color: '#00f',
                        opacity: 0.4,
                        fillOpacity: 0
                    };
                }
            }).addTo(map);
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
        }
    });
}

function configureBonnDistrictPopups(feature, layer, status, ortsteile, bezirksnamen) {

    var description = [];
    if (feature.properties) {
        if (feature.properties.ortsteil) {
            description.push('<strong>' + ortsteilName(feature.properties.ortsteil, ortsteile) + '</strong>');
        }
        if (feature.properties.bezirk) {
            description.push('Stadtbezirk ' + bezirkName(feature.properties.bezirk, bezirksnamen));
        }
        feature.properties.stolpersteine = stolpersteinAnzahl(feature.properties.ortsteil, ortsteile);
        description.push(
            '<strong>' + inGerman(feature.properties.stolpersteine) + '</strong>' +
            ' Stolperstein' +
            (feature.properties.stolpersteine > 1 ? 'e' : '')
        );
        feature.properties.description = description.join(', ');
        layer.on('mouseover', function (e) {
            var layer = e.target;

            layer.setStyle({
                weight: 1,
                color: '#00f',
                opacity: 1,
                fillColor: '#fff',
                fillOpacity: 0.2
            });
            status.show();
            status.display(layer.feature.properties.description);
        });
        layer.on('mouseout', function (e) {
            var layer = e.target;

            layer.setStyle({
                weight: 1,
                color: '#00f',
                opacity: 1,
                fillOpacity: 0
            });
            status.hide();
        });
    }
}

function addBonnDistricts(map, status, ortsteile, bezirksnamen) {
    $.ajax({
        dataType: 'json',
        url: 'files/Ortsteile_Bonn.geojson',
        success: function (jsonData) {

            L.geoJson(jsonData, {
                style: function (feature) {
                    return {
                        weight: 1,
                        color: '#00f',
                        opacity: 1,
                        fillOpacity: 0
                    };
                },
                onEachFeature: function (feature, layer) {
                    configureBonnDistrictPopups(feature, layer, status, ortsteile, bezirksnamen);
                },
                error: function(XMLHttpRequest, textStatus, errorThrown) {
                }
            }).addTo(map);
        }
    });
}

function makeGeoJsonLayerFromOsmJson(osmJsonData, tokens, status) {
    var grayIcon = L.icon({
        iconUrl: 'images/marker-gray-icon.png',
        shadowUrl: 'images/marker-shadow.png',

        iconSize: [25, 41],
        iconAnchor: [12, 41],
        popupAnchor: [1, -34],
        shadowSize: [41, 41],
        shadowAnchor: [12, 41]
    });
    return L.geoJson(
        osmtogeojson(osmJsonData),
        {
            pointToLayer: function (feature, latlng) {
                if (!feature.properties.tags.image) {
                    return L.marker(latlng, {icon: grayIcon});
                } else {
                    return L.marker(latlng);
                }
            },
            onEachFeature: function (feature, layer) {
                var tags = feature.properties.tags;
                var description = [ '<table>' ];
                var ort = '';
                var geborenGestorben;

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
                    if (tags['person:date_of_birth']) {
                        geborenGestorben = "geb. " + tags['person:date_of_birth'];
                    }
                    if (tags['person:date_of_death']) {
                        if (geborenGestorben) {
                            geborenGestorben += ", gest. " + tags['person:date_of_death'];
                        } else {
                            geborenGestorben = "gest. " + tags['person:date_of_death'];
                        }
                    }
                    description.push('<tr><th>' + tags.name + ( geborenGestorben ? '<br>(' + geborenGestorben + ')' : '') + '</th></tr>');

                    if (ort) {
                        description.push('<tr><td>' + ort + '</td></tr>');
                    }
                    if (tags['memorial:text']) {
                        description.push('<tr><td>' + link(tags['memorial:text'], tokens) + '</td></tr>');
                    }
                    description.push('</table>');
                    if (tags.image) {
                        description.push(
                            '<a href="' +
                            tags.image +
                            '" target="_blank"><img src="' +
                            tags.image.replace(
                                'https://upload.wikimedia.org/wikipedia/commons',
                                'https://upload.wikimedia.org/wikipedia/commons/thumb'
                            ) +
                            '/240px-' +
                            tags.image.split('/')[tags.image.split('/').length - 1] +
                            '" /></a>'
                        );
                    }else {
                        console.log(tags.name);
                    }

                    layer.bindPopup(
                        description.join(''),
                        {
                            'autoPan': false
                        }
                    );
                    layer.on('mouseover', function (e) {
                        status.show();
                        status.display('<strong>Klicken Sie bitte den Marker an.</strong>');
                    });
                    layer.on('mouseout', function (e) {
                        status.hide();
                    });
                    layer.on('click', function (e) {
                        if (this.isVisible) {
                            layer.closePopup(this);
                            this.isVisible = false;
                        } else {
                            layer.openPopup(this);
                            this.isVisible = true;
                        }
                    });
                }
            }
        }
    );
}

function addStolpersteins(map, status, tokens) {
    var markers = L.markerClusterGroup({
        maxClusterRadius: 50
    });

    var popup = L.popup()
        .setLatLng([50.7085234, 7.115605])
        .setContent(
        '<h3 style="text-align:center;">Einen Moment bitte</h3>' +
        '<p style="text-align:center;">Die aktuellen Stolperstein-Informationen werden bei OpenStreetMap abgefragt.</p>'
    ).openOn(map);
    $.ajax({
        dataType: 'json',
        url: 'https://overpass-api.de/api/interpreter?' +
        'data=[out:json][timeout:25];' +
        'area(3600062508)->.area;' +
        '(' +
        'node["memorial:type"="stolperstein"](area.area);' +
        'way["memorial:type"="stolperstein"](area.area);' +
        'relation["memorial:type"="stolperstein"](area.area);' +
        ');' +
        'out meta;>;out meta qt;',
        success: function (jsonData) {
            map.closePopup(popup);

            var geoJsonLayer = makeGeoJsonLayerFromOsmJson(jsonData, tokens, status);
            markers.addLayer(geoJsonLayer);
            map.addLayer(markers);
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            popup.setContent('<h3 style="text-align:center;">Leider konnten die Daten der Stolpersteine nicht geladen werden.</h3>');
        }
    });
}

$(document).ready(
    function () {
        var tokens;
        var bezirksnamen;
        var ortsteile;
        var map = L.map(
            'map',
            {
                center: [50.7085234, 7.115605],
                zoom: 12,
                maxZoom: 18,
                loadingControl: true,
                fullscreenControl: true
            }
        );
        addBaseLayers(map);
        var status = L.control.Status();
        status.addTo(map);
        status.hide();

        $.ajax({
            dataType: 'json',
            url: 'files/Zusatzdaten.json',
            success: function (jsonData) {
                tokens = jsonData.tokens || {};
                bezirksnamen = jsonData.bezirksnamen;
                ortsteile = jsonData.ortsteile;
                addBonnCityLimits(map);
                addBonnMunicipalityLimits(map);
                addBonnDistricts(map, status, ortsteile, bezirksnamen);
                addStolpersteins(map, status, tokens);
            },
            error: function(XMLHttpRequest, textStatus, errorThrown) {
            }
        });
    }
);
