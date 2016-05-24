<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <title id='Description'>jqxChart Partial Pie Example</title>
    <meta name="description" content="jqxChart - JavaScript Chart Partial Pie series." />
    <meta name="keywords" content="jqwidgets charts, jquery charts, javascript charts, ajax charts, graphs, plots, line charts, bar charts, pie charts, javascript plots, ajax plots" />	
	
    <link rel="stylesheet" href="Myresources/jqwidgets/styles/jqx.base.css" type="text/css" />
    <script type="text/javascript" src="Myresources/scripts/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="Myresources/jqwidgets/jqxcore.js"></script>
    <script type="text/javascript" src="Myresources/jqwidgets/jqxdraw.js"></script>
    <script type="text/javascript" src="Myresources/jqwidgets/jqxchart.core.js"></script>
    <script type="text/javascript" src="Myresources/jqwidgets/jqxdata.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var dataStatCounter =
            [
                { Browser: 'Chrome', Share: 45.6 },
                { Browser: 'IE', Share: 24.6 },
                { Browser: 'Firefox', Share: 20.4 },
                { Browser: 'Safari', Share: 5.1 },
                { Browser: 'Opera', Share: 1.3 },
                { Browser: 'Other', Share: 3.0 }
            ];
            var dataW3CCounter =
            [
                { Browser: 'Chrome', Share: 34.1 },
                { Browser: 'IE', Share: 20.3 },
                { Browser: 'Firefox', Share: 18.3 },
                { Browser: 'Safari', Share: 17.8 },
                { Browser: 'Opera', Share: 2.7 },
                { Browser: 'Other', Share: 6.8 }
            ];
            var dataWikimedia =
            [
                { Browser: 'Chrome', Share: 42.7 },
                { Browser: 'IE', Share: 18.0 },
                { Browser: 'Firefox', Share: 15.3 },
                { Browser: 'Safari', Share: 6.1 },
                { Browser: 'Opera', Share: 2.4 },
                { Browser: 'Other', Share: 15.6 }
            ];
            var dataNetApplications =
            [
                { Browser: 'Chrome', Share: 16.4 },
                { Browser: 'IE', Share: 55.2 },
                { Browser: 'Firefox', Share: 18.0 },
                { Browser: 'Safari', Share: 5.8 },
                { Browser: 'Opera', Share: 1.3 },
                { Browser: 'Other', Share: 3.4 }
            ];
            var charts = [
                { title: 'Stat counter', label: 'Stat', dataSource: dataStatCounter },
                { title: 'W3C counter', label: 'W3C', dataSource: dataW3CCounter },
                { title: 'Wikimedia', label: 'Wikimedia', dataSource: dataWikimedia },
                { title: 'Net Applications', label: 'NetApp', dataSource: dataNetApplications }
            ];
            for (var i = 0; i < charts.length; i++) {
                var chartSettings = {
                    source: charts[i].dataSource,
                    title: '',
                    description: charts[i].title,
                    enableAnimations: false,
                    showLegend: true,
                    showBorderLine: true,
                    padding: { left: 5, top: 5, right: 5, bottom: 5 },
                    titlePadding: { left: 0, top: 0, right: 0, bottom: 10 },
                    colorScheme: 'scheme03',
                    seriesGroups: [
                        {
                            type: 'pie',
                            showLegend: true,
                            enableSeriesToggle: true,
                            series:
                                [
                                    {
                                        dataField: 'Share',
                                        displayText: 'Browser',
                                        showLabels: true,
                                        labelRadius: 160,
                                        labelLinesEnabled: true,
                                        labelLinesAngles: true,
                                        labelsAutoRotate: false,
                                        initialAngle: 0,
                                        radius: 125,
                                        minAngle: 0,
                                        maxAngle: 180,
                                        centerOffset: 0,
                                        offsetY: 170,
                                        formatFunction: function (value, itemIdx, serieIndex, groupIndex) {
                                            if (isNaN(value))
                                                return value;
                                            return value + '%';
                                        }
                                    }
                                ]
                        }
                    ]
                };
                // select container and apply settings
                var selector = '#chartContainer' + (i + 1);
                $(selector).jqxChart(chartSettings);
            } // for
        });
    </script>
</head>
<body class='default'>
    <table>
        <tr>
            <td>
                <div id='chartContainer1' style="width: 400px; height: 250px;">
                </div>
            </td>
            <td>
                <div id='chartContainer2' style="width: 400px; height: 250px;">
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div id='chartContainer3' style="width: 400px; height: 250px;">
                </div>
            </td>
            <td>
                <div id='chartContainer4' style="width: 400px; height: 250px;">
                </div>
            </td>
        </tr>
    </table>
</body>
</html>