<%--
  Created by IntelliJ IDEA.
  User: ytalab
  Date: 11/04/2018
  Time: 08:22
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:template>
<body>
<h2>Submitted Employee Information</h2>
<table>
    <tr>
        <td>Name :</td>
        <td>${nom}</td>
    </tr>
    <tr>
        <td>ID :</td>
        <td>${id}</td>
    </tr>
    <tr>
        <td>Contact Number :</td>
        <td>${prenom}</td>
    </tr>
</table>
</body>
</t:template>