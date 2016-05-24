<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <title id='Description'>jqxChart Stacked Column Series Example</title>
    <meta name="description" content="jqxChart - Javascript Chart Stacked Column Series." />
    <meta name="keywords" content="jqwidgets charts, jquery charts, javascript charts, ajax charts, graphs, plots, line charts, bar charts, pie charts, javascript plots, ajax plots" />	
    <link rel="stylesheet" href="Myresources/jqwidgets/styles/jqx.base.css" type="text/css" />
    <script type="text/javascript" src="Myresources/scripts/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="Myresources/jqwidgets/jqxcore.js"></script>
    <script type="text/javascript" src="Myresources/jqwidgets/jqxdata.js"></script>
    <script type="text/javascript" src="Myresources/jqwidgets/jqxdraw.js"></script>
    <script type="text/javascript" src="Myresources/jqwidgets/jqxchart.core.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            // prepare chart data as an array
            var sampleData = [
                    { Day: 'Monday', Running: 30, Swimming: 0, Cycling: 25 },
                    { Day: 'Tuesday', Running: 25, Swimming: 25, Cycling: 0 },
                    { Day: 'Wednesday', Running: 30, Swimming: 0, Cycling: 25 },
                    { Day: 'Thursday', Running: 35, Swimming: 25, Cycling: 45 },
                    { Day: 'Friday', Running: 0, Swimming: 20, Cycling: 25 },
                    { Day: 'Saturday', Running: 30, Swimming: 0, Cycling: 30 },
                    { Day: 'Sunday', Running: 60, Swimming: 45, Cycling: 0 }
                ];
            // prepare jqxChart settings
            var settings = {
                title: "Fitness & exercise weekly scorecard",
                description: "Time spent in vigorous exercise by activity",
                enableAnimations: true,
                showLegend: true,
                padding: { left: 5, top: 5, right: 5, bottom: 5 },
                titlePadding: { left: 90, top: 0, right: 0, bottom: 10 },
                source: sampleData,
                xAxis:
                    {
                        dataField: 'Day',
                        unitInterval: 1,
                        axisSize: 'auto',
                        tickMarks: {
                            visible: true,
                            interval: 1,
                            color: '#BCBCBC'
                        },
                        gridLines: {
                            visible: true,
                            interval: 1,
                            color: '#BCBCBC'
                        }
                    },
                valueAxis:
                {
                    unitInterval: 10,
                    minValue: 0,
                    maxValue: 120,
                    title: { text: 'Time in minutes' },
                    labels: { horizontalAlignment: 'right' },
                    tickMarks: { color: '#BCBCBC' }
                },
                colorScheme: 'scheme06',
                seriesGroups:
                    [
                        {
                            type: 'stackedcolumn',
                            columnsGapPercent: 50,
                            seriesGapPercent: 0,
                            series: [
                                    { dataField: 'Running', displayText: 'Running' },
                                    { dataField: 'Swimming', displayText: 'Swimming' },
                                    { dataField: 'Cycling', displayText: 'Cycling' }
                                ]
                        }
                    ]
            };
            // setup the chart
            $('#chartContainer').jqxChart(settings);
        });
    </script>
</head>
<body class='default'>
    <div id='chartContainer' style="width:850px; height:500px;"/>
</body>
</html>