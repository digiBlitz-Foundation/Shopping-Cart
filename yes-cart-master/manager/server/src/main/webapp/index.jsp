<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--
  ~ Copyright 2009 Denys Pavlov, Igor Azarnyi
  ~
  ~    Licensed under the Apache License, Version 2.0 (the "License");
  ~    you may not use this file except in compliance with the License.
  ~    You may obtain a copy of the License at
  ~
  ~        http://www.apache.org/licenses/LICENSE-2.0
  ~
  ~    Unless required by applicable law or agreed to in writing, software
  ~    distributed under the License is distributed on an "AS IS" BASIS,
  ~    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  ~    See the License for the specific language governing permissions and
  ~    limitations under the License.
  --%>

<html>
<head>
    <meta charset="UTF-8">
    <title>YUM Yes cart update manager</title>
    <link rel="stylesheet" href="../style/style.css" type="text/css"/>
</head>
<body>
<div class="container">
    <div class="inside">
        <div class="lang lang-uk"><a class="btn btn-info" href="<c:url value='/app/pages/index' />">Старт Українська</a></div>

    </div>
</div>

<script type="text/javascript">
    <!--

    var browserLanguage = "en" ;
    if (navigator.userLanguage) { // IE
        browserLanguage = navigator.userLanguage.substr(0,2);
    } else if (navigator.language) {// FF
        browserLanguage = navigator.language.substr(0,2);
    }

    var redirectToPage = "ShopManagerApplication.html";

    if(browserLanguage == "ru" || browserLanguage == "be") {
        redirectToPage = "ru_RU/" + redirectToPage;
    } else if(browserLanguage == "ua") {
        redirectToPage = "uk_UK/" + redirectToPage;
    } else if(browserLanguage == "de") {
        redirectToPage = "de_DE/" + redirectToPage;
    } else {
        redirectToPage = "en_US/" + redirectToPage;
    }
    redirectToPage = "<c:url value='/app/pages/index' />";

    setTimeout('redirectTo()', 1);
    function redirectTo() {
        window.location = redirectToPage;
    }
    //-->
</script>

</body>
</html>
