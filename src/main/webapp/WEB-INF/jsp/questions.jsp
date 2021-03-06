<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Questions</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<%@ include file="../jspf/nav.jspf" %>

<c:if test="${!empty user}">
    <nav class="navbar justify-content-center " style="margin-top: 20px">
        <form action="addQuestion" method="post">
            <input type="submit" value="Add new question">
        </form>
    </nav>
</c:if>
<div class="container" style="margin-top: 30px">
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-lg-12">
            <div id="postlist">
                <c:forEach var="question" items="${requestScope.questions}">
                    <div>
                        <div class="text-center">
                            <div class="row">
                                <div class="col-sm-9">
                                    <c:if test="${!question.solved}">
                                    <a href="question?id=${question.id}"><h3 class="float-left"><c:out
                                            value="${question.text}"/></h3></a>
                                    </c:if>

                                    <c:if test="${question.solved}">
                                        <a href="question?id=${question.id}" style="color: green"><h3 class="float-left"><c:out
                                                value="${question.text}"/></h3></a>
                                        <span style="color: green"><b>Solved</b></span>

                                    </c:if>

                                </div>
                            </div>
                        </div>
                    </div>
                    <hr>
                </c:forEach>

            </div>
        </div>
    </div>
</div>
</body>
</html>
