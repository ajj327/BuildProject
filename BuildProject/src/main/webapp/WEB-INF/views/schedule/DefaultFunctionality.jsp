<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <title id='Description'>jqxScheduler widget displays a set of Appointments in Day, Week, Month, Timeline Day, Timeline Week and Timeline Month views
    </title>
    <link rel="stylesheet" href="Myresources/jqwidgets/styles/jqx.base.css" type="text/css" />
    <script type="text/javascript" src="Myresources/scripts/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="Myresources/scripts/demos.js"></script>
    <script type="text/javascript" src="Myresources/jqwidgets/jqxcore.js"></script>
    <script type="text/javascript" src="Myresources/jqwidgets/jqxbuttons.js"></script>
    <script type="text/javascript" src="Myresources/jqwidgets/jqxscrollbar.js"></script>
    <script type="text/javascript" src="Myresources/jqwidgets/jqxdata.js"></script>
    <script type="text/javascript" src="Myresources/jqwidgets/jqxdate.js"></script>
    <script type="text/javascript" src="Myresources/jqwidgets/jqxscheduler.js"></script>
    <script type="text/javascript" src="Myresources/jqwidgets/jqxscheduler.api.js"></script>
    <script type="text/javascript" src="Myresources/jqwidgets/jqxdatetimeinput.js"></script>
    <script type="text/javascript" src="Myresources/jqwidgets/jqxmenu.js"></script>
    <script type="text/javascript" src="Myresources/jqwidgets/jqxcalendar.js"></script>
    <script type="text/javascript" src="Myresources/jqwidgets/jqxtooltip.js"></script>
    <script type="text/javascript" src="Myresources/jqwidgets/jqxwindow.js"></script>
    <script type="text/javascript" src="Myresources/jqwidgets/jqxcheckbox.js"></script>
    <script type="text/javascript" src="Myresources/jqwidgets/jqxlistbox.js"></script>
    <script type="text/javascript" src="Myresources/jqwidgets/jqxdropdownlist.js"></script>
    <script type="text/javascript" src="Myresources/jqwidgets/jqxnumberinput.js"></script>
    <script type="text/javascript" src="Myresources/jqwidgets/jqxradiobutton.js"></script>
    <script type="text/javascript" src="Myresources/jqwidgets/jqxinput.js"></script>
    <script type="text/javascript" src="Myresources/jqwidgets/globalization/globalize.js"></script>
    <script type="text/javascript" src="Myresources/jqwidgets/globalization/globalize.culture.de-DE.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var appointments = new Array();
            var appointment1 = {
                id: "id1",
                description: "George brings projector for presentations.",
                location: "",
                subject: "Quarterly Project Review Meeting",
                calendar: "Room 1",
                start: new Date(2016, 10, 23, 9, 0, 0),
                end: new Date(2016, 10, 23, 16, 0, 0)
            }
            var appointment2 = {
                id: "id2",
                description: "",
                location: "",
                subject: "IT Group Mtg.",
                calendar: "Room 2",
                start: new Date(2016, 10, 24, 10, 0, 0),
                end: new Date(2016, 10, 24, 15, 0, 0)
            }
            var appointment3 = {
                id: "id3",
                description: "",
                location: "",
                subject: "Course Social Media",
                calendar: "Room 3",
                start: new Date(2016, 10, 27, 11, 0, 0),
                end: new Date(2016, 10, 27, 13, 0, 0)
            }
            var appointment4 = {
                id: "id4",
                description: "",
                location: "",
                subject: "New Projects Planning",
                calendar: "Room 2",
                start: new Date(2016, 10, 23, 16, 0, 0),
                end: new Date(2016, 10, 23, 18, 0, 0)
            }
            var appointment5 = {
                id: "id5",
                description: "",
                location: "",
                subject: "Interview with James",
                calendar: "Room 1",
                start: new Date(2016, 10, 25, 15, 0, 0),
                end: new Date(2016, 10, 25, 17, 0, 0)
            }
            var appointment6 = {
                id: "id6",
                description: "",
                location: "",
                subject: "Interview with Nancy",
                calendar: "Room 4",
                start: new Date(2016, 10, 26, 14, 0, 0),
                end: new Date(2016, 10, 26, 16, 0, 0)
            }
            appointments.push(appointment1);
            appointments.push(appointment2);
            appointments.push(appointment3);
            appointments.push(appointment4);
            appointments.push(appointment5);
            appointments.push(appointment6);
            // prepare the data
            var source =
            {
                dataType: "array",
                dataFields: [
                    { name: 'id', type: 'string' },
                    { name: 'description', type: 'string' },
                    { name: 'location', type: 'string' },
                    { name: 'subject', type: 'string' },
                    { name: 'calendar', type: 'string' },
                    { name: 'start', type: 'date' },
                    { name: 'end', type: 'date' }
                ],
                id: 'id',
                localData: appointments
            };
            var adapter = new $.jqx.dataAdapter(source);
            $("#scheduler").jqxScheduler({
                date: new $.jqx.date(2016, 11, 23),
                width: 850,
                height: 600,
                source: adapter,
                view: 'weekView',
                showLegend: true,
                ready: function () {
                    $("#scheduler").jqxScheduler('ensureAppointmentVisible', 'id1');
                },
                resources:
                {
                    colorScheme: "scheme05",
                    dataField: "calendar",
                    source:  new $.jqx.dataAdapter(source)
                },
                appointmentDataFields:
                {
                    from: "start",
                    to: "end",
                    id: "id",
                    description: "description",
                    location: "location",
                    subject: "subject",
                    resourceId: "calendar"
                },
                views:
                [
                    'dayView',
                    'weekView',
                    'monthView'
                ]
            });
        });
    </script>
</head>
<body class='default'>
    <div id="scheduler"></div>
</body>
</html>