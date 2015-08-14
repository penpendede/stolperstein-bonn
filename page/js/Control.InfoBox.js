L.Control.InfoBox = L.Control.extend({
	options: {
		position: 'bottomleft'
	},

	onAdd: function (map) {
		this._container = L.DomUtil.create('div', 'leaflet-control-infobox');
		L.DomEvent.disableClickPropagation(this._container);
		this._container.innerHTML = '';
		return this._container;
	},

	onRemove: function (map) {
	},

	display: function (text) {
		this._container.innerHTML = text;
	},
	hide: function () {
		$('.leaflet-control-infobox').css('visibility', 'hidden');
	},
	show: function () {
		$('.leaflet-control-infobox').css('visibility', 'visible');
	}
});

L.Map.mergeOptions({
	positionControl: false
});

L.Map.addInitHook(function () {
	if (this.options.positionControl) {
		this.positionControl = new L.Control.InfoBox();
		this.addControl(this.positionControl);
	}
});

L.control.infoBox = function (options) {
	return new L.Control.InfoBox(options);
};
