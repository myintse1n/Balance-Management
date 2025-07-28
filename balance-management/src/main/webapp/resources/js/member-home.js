document.addEventListener('DOMContentLoaded', () => {

	am5.ready(() => {
		LoadBalanceChart(balanceData)
		loadPieChart(epensesData,'expensePieChart')
		loadPieChart(epensesData,'incomePieChart')
	})

})

function LoadBalanceChart(balanceData) {
	var root = am5.Root.new("balanceChart");

	root.setThemes([
		am5themes_Animated.new(root)
	]);

	var chart = root.container.children.push(am5xy.XYChart.new(root, {
		panX: false,
		panY: false,
		paddingLeft: 0,
		wheelX: "panX",
		wheelY: "zoomX",
		layout: root.verticalLayout
	}));

	var legend = chart.children.push(
		am5.Legend.new(root, {
			centerX: am5.p50,
			x: am5.p50
		})
	);

	var xRenderer = am5xy.AxisRendererX.new(root, {
		cellStartLocation: 0.1,
		cellEndLocation: 0.9,
		minorGridEnabled: true
	})

	var xAxis = chart.xAxes.push(am5xy.CategoryAxis.new(root, {
		categoryField: "date",
		renderer: xRenderer,
		tooltip: am5.Tooltip.new(root, {})
	}));

	xRenderer.grid.template.setAll({
		location: 1
	})

	xAxis.data.setAll(balanceData);

	var yAxis = chart.yAxes.push(am5xy.ValueAxis.new(root, {
		renderer: am5xy.AxisRendererY.new(root, {
			strokeOpacity: 0.1
		})
	}));

	function makeSeries(name, fieldName) {
		var series = chart.series.push(am5xy.ColumnSeries.new(root, {
			name: name,
			xAxis: xAxis,
			yAxis: yAxis,
			valueYField: fieldName,
			categoryXField: "date"
		}));

		series.columns.template.setAll({
			tooltipText: "{name}, {categoryX}:{valueY}",
			width: am5.percent(90),
			tooltipY: 0,
			strokeOpacity: 0
		});

		series.data.setAll(balanceData);

		series.appear();

		series.bullets.push(function() {
			return am5.Bullet.new(root, {
				locationY: 0,
				sprite: am5.Label.new(root, {
					text: "{valueY}",
					fill: root.interfaceColors.get("alternativeText"),
					centerY: 0,
					centerX: am5.p50,
					populateText: true
				})
			});
		});

		legend.data.push(series);
	}

	makeSeries("Expenses", "expenses");
	makeSeries("Incomes", "incomes");

	chart.appear(1000, 100);
	// end am5.ready()


}

function loadPieChart(data, chartDiv) {
	var root = am5.Root.new(chartDiv);

	root.setThemes([
		am5themes_Animated.new(root)
	]);

	var chart = root.container.children.push(
		am5percent.PieChart.new(root, {
			endAngle: 270
		})
	);

	var series = chart.series.push(
		am5percent.PieSeries.new(root, {
			valueField: "value",
			categoryField: "category",
			endAngle: 270
		})
	);

	series.states.create("hidden", {
		endAngle: -90
	});
	
	series.labels.template.set("visible", false);

	// Optional: Hide ticks (lines connecting label to slice)
	series.ticks.template.set("visible", false);

	series.data.setAll(data);

	series.appear(1000, 100);

	// end am5.ready()

}

const balanceData = [
	{
		"date": "2025-07-25",
		"expenses": 100000,
		"incomes": 50000
	},
	{
		"date": "2025-07-26",
		"expenses": 80000,
		"incomes": 60000
	},
	{
		"date": "2025-07-27",
		"expenses": 50000,
		"incomes": 70000
	},
	{
		"date": "2025-07-28",
		"expenses": 100000,
		"incomes": 20000
	},
]

const epensesData = [
	{
		category: "Electric Fees",
		value: 501.9
	},
	{
		category: "Phone",
		value: 301.9
	}, {
		category: "Internet",
		value: 165.8
	}
]

const incomesData = [
	{
		category: "Services Charges",
		value: 501.9
	},
	{
		category: "Student Fees",
		value: 301.9
	}, {
		category: "Online Fees",
		value: 165.8
	}
]
