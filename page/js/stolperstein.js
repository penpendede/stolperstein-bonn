/*jslint browser:true, unparam:true*/
/*global $, jQuery, L, osmtogeojson, console*/

/*
Copyright 2015 Josef 'Jupp' Schugt <penpendede@mail.ru>. All rights reserved.

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

var orte = {
	"Auschwitz": {
		"url": "https://de.wikipedia.org/wiki/KZ_Auschwitz",
		"short": "Der nationalsozalistische Lagerkomplex Auschwitz war sowohl Konzentrations- als auch Vernichtungslager. Er bestand aus dem Stammlager Auschwitz, dem Vernichtungslager Birkenau, dem Arbeitslager Monowitz und rund 50 weiteren Außenlagern. Die SS betrieb ihn von 1940 bis 1945 am Westrand der polnischen Stadt Oświęcim."
	},
	"Buchenwald": {
		"url": "https://de.wikipedia.org/wiki/KZ_Buchenwald",
		"short": "Das Konzentrationslager Buchenwald war eines der größten KZs auf deutschem Boden. Es wurde zwischen Juli 1937 und April 1945 auf dem Ettersberg bei Weimar als Arbeitslager betrieben. Insgesamt waren in diesem Zeitraum etwa 266.000 Menschen aus allen Ländern Europas im Konzentrationslager Buchenwald inhaftiert."
	},
    "Chelmno": {
        "url": "https://de.wikipedia.org/wiki/Vernichtungslager_Kulmhof",
        "short": "Das Vernichtungslager Kulmhof befand sich in Chełmno nad Nerem nahe der Stadt Dąbie. Es lag etwa 130 km östlich von Poznań und nordwestlich von Łódź. Kulmhof wurde hauptsächlich zwischen Dezember 1941 und März 1943 als Vernichtungsstätte benutzt, danach geräumt und nochmals im Sommer 1944 zur Ermordung von Juden des Ghettos Litzmannstadt verwendet."
    },
	"Dachau": {
		"url": "https://de.wikipedia.org/wiki/KZ_Dachau",
		"short": "Das Konzentrationslager Dachau lag etwa 20 km nordwestlich von München und bestand vom 22.3.1933 bis zu seiner Befreiung am 29.4.1945. Das NS-Regime errichtete es bereits wenige Wochen nach der Machtübernahme. Dort wurden vor allem politische Gegner des NS-Regimes eingesperrt. Dachau war Ausbildungsort für SS-Wachmannschaften und -Führungspersonal, die später unter anderem in Vernichtungslagern eingesetzt wurden."
	},
    "Drancy": {
        "url": "https://de.wikipedia.org/wiki/Sammellager_Drancy",
        "short": "Vom Sammel- und Durchgangslager Drancy wurden ca. 65.000 hauptsächlich französische Juden mit der Eisenbahn in deutsche Vernichtungslager transportiert. Etwa 63.000 von ihnen wurden in diesen ermordet oder starben an den katastrophalen Umständen des Transports, der Unterbringung und Behandlung. Unter ihnen befanden sich ca. 6.000 Kinder."
    },
	"Endenich": {
		"url": "https://de.wikipedia.org/wiki/Endenich#Geschichte",
		"short": "Nach 1941 wurde das Endenicher Kloster 'Zur ewigen Anbetung' im Rahmen des Holocausts als Zwischenlager für die Massentransporte der Bonner Juden in die Vernichtungslager benutzt."
	},
    "Flossenbürg": {
        "url": "https://de.wikipedia.org/wiki/KZ_Flossenbürg",
        "short": "Das Konzentrationslager Flossenbürg bestand von 1938 bis 1945 und befand sich bei Weiden im Oberpfälzer Wald, nahe der Grenze zum heutigen Tschechien und war von Anfang an als ein Konzentrationslager zur Ausbeutung von Zwangsarbeitern, als ein Lager zur 'Vernichtung durch Arbeit' geplant."
    },
	"Izbica": {
		"url": "https://de.wikipedia.org/wiki/Ghetto_Izbica",
		"short": "Das Ghetto Izbica war ab 1942 eine Durchgangsstation für deportierte Juden. Von dort führte der Weg in die Vernichtungslager des Holocausts, insbesondere nach Belzec und Sobibor."
	},
    "Kaufering": {
        "url": "https://de.wikipedia.org/wiki/KZ-Außenlager_Kaufering_VI",
        "short": "Das KZ-Außenlager Kaufering VI war ein nationalsozialistisches Konzentrationslager nahe Türkheim und gehörte zu den über 100 Nebenlagern des KZ Dachau."
    },
    "Kulmhof": {
        "url": "https://de.wikipedia.org/wiki/Vernichtungslager_Kulmhof",
        "short": "Das Vernichtungslager Kulmhof befand sich in Chełmno nad Nerem nahe der Stadt Dąbie. Es lag etwa 130 km östlich von Poznań und nordwestlich von Łódź. Kulmhof wurde hauptsächlich zwischen Dezember 1941 und März 1943 als Vernichtungsstätte benutzt, danach geräumt und nochmals im Sommer 1944 zur Ermordung von Juden des Ghettos Litzmannstadt verwendet."
    },
    "Litzmannstadt": {
        "url": "https://de.wikipedia.org/wiki/Ghetto_Litzmannstadt",
        "short": "Das Ghetto Litzmannstadt befand sich in Łódź und war von 1939 bis 1944 das am längsten existierende nationalsozialistische Ghetto und nach dem Warschauer Ghetto das zweitgrößte. Es diente, wie die anderen NS-Ghettos auch, vor allem als Zwischenstation vor der Deportation in die Vernichtungslager Kulmhof (Chełmno nad Nerem), Auschwitz II, Majdanek, Treblinka und Sobibor."
    },
    "Łodz": {
        "url": "https://de.wikipedia.org/wiki/Ghetto_Litzmannstadt",
        "short": "Das Ghetto Litzmannstadt befand sich in Łódź und war von 1939 bis 1944 das am längsten existierende nationalsozialistische Ghetto und nach dem Warschauer Ghetto das zweitgrößte. Es diente, wie die anderen NS-Ghettos auch, vor allem als Zwischenstation vor der Deportation in die Vernichtungslager Kulmhof (Chełmno nad Nerem), Auschwitz II, Majdanek, Treblinka und Sobibor."
    },
    "Lublin": {
        "url": "https://de.wikipedia.org/wiki/KZ_Majdanek",
        "short": "Das KZ Majdanek befand sich im gleichnamigen Vorort von Lublin und wurde wie Auschwitz-Birkenau zeitweise auch als Vernichtungslager genutzt. Es bestand von Oktober 1941 bis zum 23.7.1944, als das großteils geräumte Lager von der Roten Armee befreit wurde."
    },
    "Majdanek": {
        "url": "https://de.wikipedia.org/wiki/KZ_Majdanek",
        "short": "Das KZ Majdanek befand sich im gleichnamigen Vorort von Lublin und wurde wie Auschwitz-Birkenau zeitweise auch als Vernichtungslager genutzt. Es bestand von Oktober 1941 bis zum 23.7.1944, als das großteils geräumte Lager von der Roten Armee befreit wurde."
    },
    "Maly Trostenez": {
        "url": "https://de.wikipedia.org/wiki/Vernichtungslager_Maly_Trostinez",
        "short": "Das Vernichtungslager Maly Trostinez befand sich rund 12 km südöstlich von Minsk in einer ländlichen Gegend. Zwischen 1942 und 1944 wurden bei Maly Trostinez 40.000 bis 60.000 Menschen ermordet, weit überwiegend Juden. Die Deportierten wurden zumeist im nahegelegenen Wald von Blagovśćina erschossen, ohne zuvor im Lager selbst gewesen zu sein."
    },
	"Minsk": {
		"url": "https://de.wikipedia.org/wiki/Ghetto_Minsk",
		"short": "Im Ghetto Minsk wurden von Juli 1941 bis zum Oktober 1943 die jüdische Einwohner der weißrussischen Hauptstadt, ab November 1941 auch deportierte Juden aus deutschen Städten, gefangen gehalten. Als 'arbeitsfähig' betrachtete Juden wurden von dort teilweise zu Zwangsarbeiten abkommandiert. Die 'nicht arbeitsfähigen' Menschen wurden von Deutschen umgebracht. Am 21.10.1943 wurde das Ghetto durch Mord an den meisten Gefangenen ausgelöscht, nur wenige überlebten."
	},
    "Ravensbrück": {
        "url": "https://de.wikipedia.org/wiki/KZ_Ravensbrück",
        "short": "Das Konzentrationslager Ravensbrück war das größte Konzentrationslager für Frauen im sogenannten deutschen 'Altreich'. Es wurde 1938/39 durch die SS in der heutigen Stadt Fürstenberg/Havel im Norden der Provinz Brandenburg errichtet. Insgesamt waren etwa 132.000 Frauen und Kinder, 20.000 Männer und 1.000 weibliche Jugendliche im KZ Ravensbrück und im benachbarten KZ Uckermark interniert. Man geht davon aus, dass in Ravensbrück rund 28.000 Menschen ums Leben gekommen sind."
    },
    "Riga": {
        "url": "https://de.wikipedia.org/wiki/Ghetto_Riga",
        "short": "Das Ghetto von Riga war ein kleiner, abgesperrter Randbezirk der lettischen Hauptstadt, in dem deutsche Besatzer Juden internierten. Fast alle wurden – innerhalb des Ghettos oder in den angrenzenden Wäldern oder benachbarten Konzentrationslagern – ermordet. Im Ghetto Riga lebten auf engstem Raum zunächst lettische Juden, später Juden aus dem Deutschen Reich."
    },
    "Sachsenhausen": {
        "url": "https://de.wikipedia.org/wiki/KZ_Sachsenhausen",
        "short": "Das Konzentrationslager Sachsenhausen war ein ab 1936 eingerichtetes nationalsozialistisches deutsches Konzentrationslager in der Stadt Oranienburg nördlich von Berlin. Insgesamt wurden etwa 200.000 Häftlinge nach Sachsenhausen deportiert, nur rund 140.000 davon wurden registriert. Im August 1941 wurde eine Massenerschießungsanlage errichtet, in der etwa 13.000 bis 18.000 sowjetische Kriegsgefangene ermordet wurden. Insgesamt sollen mehrere zehntausend Häftlinge ermordet worden sein."
    },
    "Sobibor": {
        "url": "https://de.wikipedia.org/wiki/Vernichtungslager_Sobibor",
        "short": "Das Vernichtungslager Sobibor war ein deutsches Vernichtungslager im südöstlichen Polen. Das Lager wurde Anfang 1942 errichtet. Im Vernichtungslager Sobibor wurden nach Schätzungen bis zu 250.000 Juden in Gaskammern ermordet, darunter vermutlich 33.000 aus den Niederlanden."
    },
    "Stutthof": {
        "url": "https://de.wikipedia.org/wiki/KZ_Stutthof",
        "short": "Das Konzentrationslager Stutthof befand sich 37 Kilometer östlich von Danzig. Es wurde nach dem deutschen Angriff auf die Freie Stadt Danzig und dem Angriff auf Polen ab dem 1.9.1939 zunächst als Zivilgefangenenlager errichtet. Ab dem 1.10.1941 unterstand es als Sonderlager Stutthof der Danziger Gestapo. Vom 29.1.1942 bis zum Kriegsende war Stutthof dann ein Konzentrationslager."
    },
	"Theresienstadt": {
		url: "https://de.wikipedia.org/wiki/KZ_Theresienstadt",
		short:" Das Konzentrationslager Theresienstadt im heutigen Tschechien wurde von den deutschen Besatzern in Terezín eingerichtet und erfüllte vier Aufgaben: Gestapogefängnis, Transitlager auf dem Weg in die großen Vernichtungslager, Vernichtung von Menschen und (zeitweilig) Mittel der NS-Propaganda als angebliches 'Altersghetto'."
	},
    "Treblinka": {
        "url": "https://de.wikipedia.org/wiki/Vernichtungslager_Treblinka",
        "short": "Das Vernichtungslager Treblinka befand sich nordöstlich von Warschau. Die Gesamtzahl der dort zwischen 22.7.1942 und dem 21.8.1943 ermordeten Menschen liegt deutlich über 700.000 und wird auf über 1 Million Menschen aus ganz Europa geschätzt."
    },
    "Westerbork": {
        "url": "https://de.wikipedia.org/wiki/Durchgangslager_Westerbork",
        "short": "Das Durchgangslager Westerbork war ein in den Niederlanden eingerichtetes zentrales KZ-Sammellager für das Deportieren niederländischer und sich in den Niederlanden aufhaltender deutscher Juden in andere Konzentrations- und Vernichtungslager. In den Niederlanden ist die Bezeichnung Kamp W. bzw. Concentratiekamp W. verbreitet."
    },
    "Zamosc": {
        "url": "https://de.wikipedia.org/wiki/Zamość#Geschichte",
        "short": "Zamość ist im südöstlichen Teil Polens, rund 240 km südöstlich der Hauptstadt Warszawa und 110 km nordwestlich der ukrainischen Stadt Lwiw gelegene Stadt. Fast die gesamte jüdische Bevölkerung kam in der Zeit des Nationalsozialismus in Ghettos (Ghetto Zamość), Vernichtungslagern oder durch Erschießungen um. Viele starben auch durch Hunger oder Krankheiten, denn die Zustände in den Ghettos waren unmenschlich."
    }
};

var personen = {
    "Felix Hausdorff": {
        "url": "https://de.wikipedia.org/wiki/Felix_Hausdorff",
        "short": "Felix Hausdorff (geb. 8.11.1868 in Breslau; Freitod 26.1.1942 in Bonn) war ein deutscher Mathematiker. Er gilt als Mitbegründer der allgemeinen Topologie und lieferte wesentliche Beiträge zur allgemeinen und deskriptiven Mengenlehre, zur Maßtheorie, Funktionalanalysis und Algebra. Neben seinem Beruf wirkte er unter dem Pseudonym Paul Mongré auch als philosophischer Schriftsteller und Literat. Nachdem er, seine Frau und die bei ihnen lebende Schwester seiner Frau, Edith Pappenheim, im Januar 1942 den Befehl erhalten hatten, in das Endenicher Lager überzusiedeln, nahmen sie gemeinsam eine Überdosis des Schlafmittels Veronal."
    },
    "Joseph Roth": {
        "url": "https://de.wikipedia.org/wiki/Joseph_Roth_(Politiker)",
        "short": "Joseph Roth (geb. 30.1.1896 in Köln; gest. 22.1.1945 in Friesdorf) war deutscher Volksschullehrer und Politiker der Zentrumspartei. Er war 1. Vorsitzender des Zentrums in Bad Godesberg und Kreistagsmitglied des Kreises Bonn-Land."
    }
};

function linkLocations(text) {
	$.each(orte, function(key, value) {
		text = text.replace(
			key,
			"<a href=\"" + value.url + "\" title=\"" + value.short + "\" target=\"_blank\">" + key + "</a>"
		);
	});
	return text;
}

function linkPersonen(text) {
	$.each(personen, function(key, value) {
		text = text.replace(
			key,
			"<a href=\"" + value.url + "\" title=\"" + value.short + "\" target=\"_blank\">" + key + "</a>"
		);
	});
	return text;
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
		'http://{s}.tile.openstreetmap.se/hydda/base/{z}/{x}/{y}.png',
		{
			attribution: 'Tiles courtesy of <a href="http://openstreetmap.se/" target="_blank">OpenStreetMap Sweden</a> ' +
			'&mdash; Map data &copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>',
			useCache: true
		}
	).addTo(map);

	L.tileLayer(
		'http://{s}.tile.openstreetmap.se/hydda/roads_and_labels/{z}/{x}/{y}.png',
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
		url: 'files/Stadt_Bonn-OSM.geojson',
		//url: 'files/Stadt_Bonn-offiziell.geojson',
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
}

function addBonnMunicipalityLimits(map) {
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
}

function configureBonnDistrictPopups(feature, layer, status) {
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

function addBonnDistricts(map, status) {
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
					configureBonnDistrictPopups(feature, layer, status);
				},
				error: function(XMLHttpRequest, textStatus, errorThrown) {
				}
			}).addTo(map);
		}
	});
}

function makeGeoJsonLayerFromOsmJson(osmJsonData, status) {
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
                           geborenGestorben = "geb. " + tags['person:date_of_birth']
                    }
                    if (tags['person:date_of_death']) {
                        if (geborenGestorben) {
                            geborenGestorben += ", gest. " + tags['person:date_of_death']
                        } else {
                            geborenGestorben = "gest. " + tags['person:date_of_death']
                        }
                    }
                    description.push('<tr><th>' + tags.name + ( geborenGestorben ? '<br>(' + geborenGestorben + ')' : '') + '</th></tr>');
                
					if (ort) {
						description.push('<tr><td>' + ort + '</td></tr>');
					}
					if (tags['memorial:text']) {
						description.push('<tr><td>' + linkPersonen(linkLocations(tags['memorial:text'])) + '</td></tr>');
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

function addStolpersteins(map, status) {
	var markers = L.markerClusterGroup({
		maxClusterRadius: 50
	});

	var popup = L.popup(
	).setLatLng(
		[50.7085234, 7.115605]
	).setContent(
		'<h3 style="text-align:center;">Einen Moment bitte</h3>' +
		'<p style="text-align:center;">Die aktuellen Stolperstein-Informationen werden bei OpenStreetMap abgefragt.</p>'
	).openOn(map);
	$.ajax({
		dataType: 'json',
		url: 'http://overpass-api.de/api/interpreter?' +
		'data=[out:json][timeout:25];' +
		'area(3600062508)->.area;' +
		'(' +
		'node["memorial:type"="stolperstein"](area.area);' +
		'way["memorial:type"="stolperstein"](area.area);' +
		'relation["memorial:type"="stolperstein"](area.area);' +
		');' +
		'out meta;>;out meta qt;',
		//url: './files/stolpersteine.geojson',
		success: function (jsonData) {
			map.closePopup(popup);

			var geoJsonLayer = makeGeoJsonLayerFromOsmJson(jsonData, status);
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
		var map = L.map(
			'map',
			{
				center: [50.7085234, 7.115605],
				//maxBounds: [[50.63, 7.01], [50.78, 7.22]],
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
		addBonnCityLimits(map);
		addBonnMunicipalityLimits(map);
		addBonnDistricts(map, status);
		addStolpersteins(map, status);
	}
);
