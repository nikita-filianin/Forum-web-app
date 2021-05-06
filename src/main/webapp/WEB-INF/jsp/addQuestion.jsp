<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Add Question</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<%@ include file="../jspf/nav.jspf" %>
<form style="padding: 2%" action="addQuestion" method="post">
    <div class="form-group">
        <label>Question text</label>
        <input type="text" name="question" class="form-control" placeholder="Any Question">
    </div>
    <div class="form-group">
        <label>Text</label>
        <textarea name="text" class="form-control" rows="6" placeholder="Some text"></textarea>
    </div>
    <div class="form-group">
        <input type="submit" value="Add question">
    </div>
</form>
</body>
</html>