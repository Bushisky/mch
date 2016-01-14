<%
    ui.decorateWith("appui", "standardEmrPage")
%>
<head>
    <link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css">
</head>

<div id="tabs">
    <ul>
        <li><a href="#tabs-1">MCH Queue</a></li>
    </ul>
    <div id="tabs-1">
        <div  style="margin-bottom: 15px">
            <table cellpadding="5" cellspacing="0" width="100%" id="mchQueueList">
                <thead>
                    <tr align="center">
                        <th>${ui.message("mch.patient.id")}</th>
                        <th>${ui.message("mch.patient.name")}</th>
                        <th>${ui.message("mch.patient.age")}</th>
                        <th>${ui.message("mch.patient.gender")}</th>
                        <th>${ui.message("mch.visitstatus")}</th>
                    </tr>
                </thead>
                <% if(mchqueue!=null || mchqueue!=""){ %>
                <% mchqueue.each { queue -> %>
                <tr align="center" >
                    <td>${queue.patientIdentifier}</td>
                    <td>${queue.patientName}</td>
                    <td>${queue.age}</td>
                    <td>${queue.sex}</td>
                    <td>${queue.visitStatus}</td>
                    <td><a class="button task" style=""><i class="icon-plus-sign"></i>  View More</a></td>
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
                    jq("#mchQueueList").dataTable();
                });
            </script>
        </div>
    </div>
</div>