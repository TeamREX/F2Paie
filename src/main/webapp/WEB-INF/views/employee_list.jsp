<%--
  Created by IntelliJ IDEA.
  User: ytalab
  Date: 11/04/2018
  Time: 08:22
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template>
<body>
<h2>Submitted Employee Information</h2>

<c:if test="${not empty employees}">
    <table>
        <c:forEach var="emp" items="${employees}">

                <tr>
                    <td>Name :</td>
                    <td>${emp.nom}</td>
                </tr>
                <tr>
                    <td>ID :</td>
                    <td>${emp.id}</td>
                </tr>
                <tr>
                    <td>Contact Number :</td>
                    <td>${emp.prenom}</td>
                </tr>

        </c:forEach>
    </table>

</c:if>
</body>
</t:template>