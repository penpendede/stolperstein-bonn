/*jslint browser:true, unparam:true*/
/*global $, jQuery, L, osmtogeojson*/

Number.prototype.inGerman = function (gender) {
	switch (this.valueOf()) {
		case 0: return 'kein';
		case 1: return 'ein';
		case 2: return 'zwei';
		case 3: return 'drei';
		case 4: return 'vier';
		case 5: return 'fünf';
		case 6: return 'sechs';
		case 7: return 'sieben';
		case 8: return 'acht';
		case 9: return 'neun';
		case 10: return 'zehn';
		case 11: return 'elf';
		case 12: return 'zwölf';
		default: return this.toString();
	}
};

$(document).ready(
	function () {
		var map = L.map(
			'map',
			{
				center: [50.7085234, 7.115605],
				maxBounds: [[50.63, 7.01], [50.78, 7.22]],
				zoom: 12,
				maxZoom: 18,
				loadingControl: true,
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
		var infoBox = L.control.infoBox();
		infoBox.addTo(map);
		$('.leaflet-control-infobox').css('visibility', 'hidden');
		$.ajax({
			dataType: 'json',
			url: 'files/Stadt_Bonn.geojson',
			success: function (jsonData) {
				L.geoJson(jsonData, {
					style: function (feature) {
						return {
							weight: 6,
							color: '#000',
							opacity: 1,
							fillColor: '#00f',
							fillOpacity: 0.08
						};
					}
				}).addTo(map);
			},
			error: function(XMLHttpRequest, textStatus, errorThrown) {
			}
		});
		$.ajax({
			dataType: 'json',
			url: 'files/Stadtbezirke_Bonn.geojson',
			success: function (jsonData) {
				L.geoJson(jsonData, {
					style: function (feature) {
						return {
							weight: 3,
							color: '#00f',
							opacity: 1,
							fillOpacity: 0
						};
					}
				}).addTo(map);
			},
			error: function(XMLHttpRequest, textStatus, errorThrown) {
			}
		});
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
						var description = [];
						var popup;
						if (feature.properties) {
							if (feature.properties.name) {
								description.push('<strong>' + feature.properties.name + '</strong>');
							}
							if (feature.properties.stadtbezirk) {
								description.push('Stadtbezirk ' + feature.properties.stadtbezirk);
							}
							feature.properties.stolpersteine = feature.properties.stolpersteine || 0;
							description.push(
								'<strong>' + feature.properties.stolpersteine.inGerman() + '</strong>' +
								' Stolperstein' +
								(feature.properties.stolpersteine > 1 ? 'e' : '')
							);
							feature.properties.description = description.join(', ');
							layer.bindPopup(L.popup().setContent(description.join('<br />')));
							layer.on('onclick', function (e) {
								this.openPopup(e.latlng);
							});
							layer.on('mouseover', function (e) {
								var layer = e.target;

								layer.setStyle({
									weight: 1,
									color: '#00f',
									opacity: 1,
									fillColor: '#fff',
									fillOpacity: 0.5
								});
								infoBox.show();
								infoBox.display(layer.feature.	properties.description);
							});
							layer.on('mouseout', function (e) {
								var layer = e.target;

								layer.setStyle({
									weight: 1,
									color: '#00f',
									opacity: 1,
									fillOpacity: 0
								});
								infoBox.hide();
							});
						}
					},
					error: function(XMLHttpRequest, textStatus, errorThrown) {
					}
				}).addTo(map);
			}
		});

		var markers = L.markerClusterGroup();

		var popup = L.popup().setLatLng([50.7085234, 7.115605]).setContent('<h3 style="text-align:center;">Einen Moment bitte</h3><p style="text-align:center;">Die aktuellen Stolperstein-Informationen werden bei OpenStreetMap abgefragt.</p>').openOn(map);
		$.ajax({
			dataType: 'json',
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
		});
	}
);
