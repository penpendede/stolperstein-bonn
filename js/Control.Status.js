/* globals L, $*/

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

L.Control.Status = L.Control.extend({
	options: {
		position: 'bottomleft'
	},

	onAdd: function (map) {
		this._container = L.DomUtil.create('div', 'leaflet-control-status');
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
		$('.leaflet-control-status').css('visibility', 'hidden');
	},
	show: function () {
		$('.leaflet-control-status').css('visibility', 'visible');
	}
});

L.Map.mergeOptions({
	positionControl: false
});

L.Map.addInitHook(function () {
	if (this.options.positionControl) {
		this.positionControl = new L.Control.Status();
		this.addControl(this.positionControl);
	}
});

L.control.Status = function (options) {
	return new L.Control.Status(options);
};
