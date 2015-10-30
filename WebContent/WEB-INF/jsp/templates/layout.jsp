  
<%@ include file="/WEB-INF/jsp/templates/taglibs.jsp" %>

<tiles:importAttribute name="javascripts"/>
<tiles:importAttribute name="stylesheets"/>
  
<html>  
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Modern Business - Start Bootstrap Template</title>

	<!-- stylesheets -->
    <c:forEach var="css" items="${stylesheets}">
        <link rel="stylesheet" type="text/css" href="<c:url value="${css}"/>">
    </c:forEach>
    <!-- end stylesheets -->

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head> 
<body>  
        <tiles:insertAttribute name="header" />  
        <tiles:insertAttribute name="body" />  
        <tiles:insertAttribute name="footer" />  

    <!-- scripts -->
    <c:forEach var="script" items="${javascripts}">
        <script src="<c:url value="${script}"/>"></script>
    </c:forEach>
    <!-- end scripts -->

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>
</body>  
</html>  