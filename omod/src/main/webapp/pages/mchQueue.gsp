<% ui.decorateWith("appui", "standardEmrPage") %>

<head>
    <link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css">
</head>

<script>
    var jq1 = jQuery;
    jq1(function() {
        jq1("#tabs").tabs();
    });
</script>

<div id="tabs">
    <ul>
        <li><a href="#tabs-1">MCH Queue</a></li>
        <li><a href="#tabs-2">Appointment</a></li>
    </ul>

    <div id="tabs-1">
            <table cellpadding="5" cellspacing="0" width="100%" id="mchQueueList">
                <thead>
                    <tr>
                        <th>${ui.message("mch.patient.id")}</th>
                        <th>${ui.message("mch.patient.name")}</th>
                        <th>${ui.message("mch.patient.age")}</th>
                        <th>${ui.message("mch.patient.gender")}</th>
                        <th>${ui.message("mch.visitstatus")}</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                <% if(mchQueue!=null || mchQueue!=""){ %>
                <% mchQueue.each { queue -> %>
                <tr >
                    <td>${queue.patientIdentifier}</td>
                    <td>${queue.patientName}</td>
                    <td>${queue.age}</td>
                    <td>${queue.sex}</td>
                    <td>${queue.visitStatus}</td>
                    <td><span><a class="button" href="${ui.pageLink("mch", "mchDashboard", [patientId: queue.patient.id])}" title="${ui.message("mch.clerk")}"><i class="icon-stethoscope"></i></a></span></td>
                </tr>
                <% } %>
                <% } else { %>
                <tr align="center" >
                    <td colspan="6">No patient found</td>
                </tr>
                <% } %>
            </tbody>
            </table>
            <script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
            <script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
            <script>
                var jq = jQuery;
                jq(function () {
                    //jq("#mchQueueList").dataTable();
                });
            </script>
        </div>
        <div id="tabs-2">
            ${ui.includeFragment("uicommons", "field/datetimepicker", [id: 'datetime', label: 'Date', formFieldName: 'date picker', useTime: false])}
            <br><br>
            <table cellpadding="5" cellspacing="0" width="100%" id="mchQueueList2">
                <thead>
                <tr>
                    <th>${ui.message("mch.patient.id")}</th>
                    <th>${ui.message("mch.patient.name")}</th>
                    <th>${ui.message("mch.patient.age")}</th>
                    <th>${ui.message("mch.patient.gender")}</th>
                    <th>${ui.message("mch.visitstatus")}</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                    <% if(mchQueue!=null || mchQueue!=""){ %>
                    <% mchQueue.each { queue -> %>
                    <tr >
                        <td>${queue.patientIdentifier}</td>
                        <td>${queue.patientName}</td>
                        <td>${queue.age}</td>
                        <td>${queue.sex}</td>
                        <td>${queue.visitStatus}</td>
                        <td><span><a class="button" href="${ui.pageLink("mch", "mchDashboard", [patientId: queue.patient.id])}" title="${ui.message("mch.clerk")}"><i class="icon-stethoscope"></i></a></span></td>
                    </tr>
                    <% } %>
                    <% } else { %>
                    <tr align="center" >
                        <td colspan="6">No patient found</td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </div>
</div>