<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
	<!-- <title><tiles:insertAttribute name="title" ignore="true"></tiles:insertAttribute></title> -->
	<title>부동산 정보</title>
    <link href="/css/reset.css" rel="stylesheet" type="text/css">
    <link href="/css/layout.css" rel="stylesheet" type="text/css">
</head>
<body>
	<!-- header -->
	<tiles:insertAttribute name="header" />
	
	<!-- header -->
	<tiles:insertAttribute name="filter" ignore="true"/>

	<!-- main -->
	<tiles:insertAttribute name="main" />

</body>
	<!-- <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4d4798f8bba1813ecd98af145d7714a6"></script> -->
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4d4798f8bba1813ecd98af145d7714a6&libraries=clusterer"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script type="text/javascript" src="/js/map.js" charset="UTF-8"></script>
</html>