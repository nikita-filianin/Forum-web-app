<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Log In</title>
    <link type="text/css" rel="stylesheet" href="../../css/styles.css"/>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<body>

<%@ include file="../jspf/nav.jspf" %>
<div class="wrapper ">
    <div id="formContent">

        <div>
            <img src="/images/user.png" id="icon" height="100" alt="User Icon"/>
        </div>

        <form action="./login" method="post">
            <input type="text" name="login" placeholder="login">
            <input type="password" name="password" placeholder="password">
            <c:if test="${!empty errorMessage}">
                <div style="color: red">
                    <c:out value="${errorMessage}"/>
                </div>
            </c:if>
            <c:if test="${!empty success}">
                <div style="color: #56baed">
                    <c:out value="${success}"/>
                </div>
            </c:if>

            <div style="padding-top: 20px; padding-bottom: 0px">
                <input type="submit" value="Log In">
            </div>
        </form>

        <div style="padding-bottom: 30px">
            <a href="signup">Sign Up</a>
        </div>
    </div>
</div>
</body>
</html>