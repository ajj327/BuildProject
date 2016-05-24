<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <title id='Description'>jqxChart Line serie symbols and custom labels</title>
    <meta name="description" content="jqxChart - Javascript Chart Line series with symbols and custom labels." />
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
                    { Day: 'Monday', Running: 30, Swimming: 10, Cycling: 25, Goal: 40 },
                    { Day: 'Tuesday', Running: 25, Swimming: 15, Cycling: 10, Goal: 50 },
                    { Day: 'Wednesday', Running: 30, Swimming: 10, Cycling: 25, Goal: 60 },
                    { Day: 'Thursday', Running: 40, Swimming: 20, Cycling: 25, Goal: 40 },
                    { Day: 'Friday', Running: 45, Swimming: 20, Cycling: 25, Goal: 50 },
                    { Day: 'Saturday', Running: 30, Swimming: 20, Cycling: 30, Goal: 60 },
                    { Day: 'Sunday', Running: 20, Swimming: 30, Cycling: 10, Goal: 90 }
                ];
            // prepare jqxChart settings
            var settings = {
                title: "Fitness & exercise weekly scorecard",
                description: "Time spent in vigorous exercise by activity",
                enableAnimations: true,
                showLegend: true,
                padding: { left: 10, top: 10, right: 15, bottom: 10 },
                titlePadding: { left: 90, top: 0, right: 0, bottom: 10 },
                source: sampleData,
                colorScheme: 'scheme05',
                xAxis: {
                    dataField: 'Day',
                    unitInterval: 1,
                    tickMarks: { visible: true, interval: 1 },
                    gridLinesInterval: { visible: true, interval: 1 },
                    valuesOnTicks: false,
                    padding: { bottom: 10 }
                },
                valueAxis: {
                    unitInterval: 10,
                    minValue: 0,
                    maxValue: 50,
                    title: { text: 'Time in minutes<br><br>' },
                    labels: { horizontalAlignment: 'right' }
                },
                seriesGroups:
                    [
                        {
                            type: 'line',
                            series:
                            [
                                {
                                    dataField: 'Swimming',
                                    symbolType: 'square',
                                    labels:
                                    {
                                        visible: true,
                                        backgroundColor: '#FEFEFE',
                                        backgroundOpacity: 0.2,
                                        borderColor: '#7FC4EF',
                                        borderOpacity: 0.7,
                                        padding: { left: 5, right: 5, top: 0, bottom: 0 }
                                    }
                                },
                                {
                                    dataField: 'Running',
                                    symbolType: 'square',
                                    labels:
                                    {
                                        visible: true,
                                        backgroundColor: '#FEFEFE',
                                        backgroundOpacity: 0.2,
                                        borderColor: '#7FC4EF',
                                        borderOpacity: 0.7,
                                        padding: { left: 5, right: 5, top: 0, bottom: 0 }
                                    }
                                }
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
    <div id='chartContainer' style="width:850px; height:500px">
    </div>
</body>
</html>