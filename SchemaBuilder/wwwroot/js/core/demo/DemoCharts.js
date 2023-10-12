(function (namespace, $) {
	"use strict";

	var DemoCharts = function () {
		// Create reference to this instance
		var o = this;
		// Initialize app when document is ready
		$(document).ready(function () {
			o.initialize();
		});

	};
	var p = DemoCharts.prototype;

	// =========================================================================
	// MEMBERS
	// =========================================================================

	p.rickshawSeries = [[], []];
	p.rickshawGraph = null;
	p.rickshawRandomData = null;
	p.rickshawTimer = null;

	// =========================================================================
	// INIT
	// =========================================================================

	p.initialize = function () {
		// Rickshaw
		//this._initRickshaw();
	//	this._initRickshawDemo2();
		
		// Sparkline
//		this._initResponsiveSparkline();
	//	this._initInlineSparkline();

		// Knob
//		this._initKnob();

		// Flot
	//	this._initFlotLine();
//		this._initFlotRealtime();

		// Morris
		this._initMorris();
	};


	// =========================================================================
	// MORRIS
	// =========================================================================

	p._initMorris = function () {
		if (typeof Morris !== 'object') {
			return;
		}

		// Morris Donut demo
		
	};

	// =========================================================================
	namespace.DemoCharts = new DemoCharts;
}(this.materialadmin, jQuery)); // pass in (namespace, jQuery):
