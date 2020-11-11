<%--
  Created by IntelliJ IDEA.
  User: ibrahim
  Date: 11/10/2020
  Time: 12:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="for" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Student Form</title>
</head>
<body>

    <form:form action="/student/processForm" modelAttribute="student" method="get">

        First name: <form:input path="firstName"/>
        <br><br>
        Last name: <form:input path="lastName"/>
        <br><br>

        Country:

        <%--DROPDOWN LIST--%>

        <form:select path="country">

            <form:option value="Brazil" label="Brazil"/>
            <form:option value="France" label="France"/>
            <form:option value="Germany" label="Germany"/>
            <form:option value="USA" label="USA"/>

           <%-- <for:options items="${student.countryOptions}" />--%>
        </form:select>

        <br><br>

        <%--RADIO BUTTONS--%>

        Favorite Language:

        Java<form:radiobutton path="favoriteLanguage" value="Java"/>
        C#<form:radiobutton path="favoriteLanguage" value="C#"/>
        PHP<form:radiobutton path="favoriteLanguage" value="PHP"/>
        Ruby<form:radiobutton path="favoriteLanguage" value="Ruby"/>
        <br><br>

        <%--CHECKBOXES--%>

        Operating Systems:

        Linux <form:checkbox path="os" value="Linux"/>
        OSX <form:checkbox path="os" value="OSX"/>
        Windows <form:checkbox path="os" value="Windows"/>

        <input type="submit" value="Submit"/>


    </form:form>


</body>
</html>
