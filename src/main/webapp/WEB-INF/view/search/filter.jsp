<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/css/component.css" rel="stylesheet" type="text/css">	
</head>

<body>
	<div id="filter">
		<div class = "bar">
	          <div class = "searchbar">
	              <input type = "text" name ="word" class = "input-sc" placeholder = "수원대학교 원룸">
	              <i class = "fa fa-search"></i>
	          </div>
	          <div class = "filter-wrap">
	              <div class = "housing-type">
	                  <div class="housing-btn">
	                      <span>월세, 전세, 사랑</span>
	                      <i class = "fa fa-angle-down"></i>
	                  </div>
	                  <div class = "filterbox-housing d-none">
	                      <h1>매물 종류
	                          <p>중복선택이 가능합니다.</p>
	                      </h1>
                             <label class = "check-label">
                                 <input class = "checkbox" type = "checkbox">
                                 <span>월세</span>
                             </label>
                             <label class = "check-label">
                                 <input class = "checkbox" type = "checkbox">
                                 <span>전세</span>
                             </label>
                             <label class = "check-label">
                                 <input class = "checkbox" type = "checkbox">
                                 <span>매매</span>
                             </label>
	                  </div>
	              </div>
	              <div class = "price-range">
	                  <div class = "price-btn">
	                      <span>가격대</span>
	                      <i class = "fa fa-angle-down"></i>
	                  </div>
	                  <div class = "filterbox-price d-none">
	                      <div class = "deposit">
	                          <h1>보증금/전세가</h1>
	                          <input type="range" min="1" max="100" value="50" class="slider" id="myRange">
	                      </div>
	                      <div class = "monthly">
	                          <h1>월세</h1>
	                          <input type="range" min="1" max="100" value="50" class="slider" id="myRange">
	                      </div>
	                      <div class = "price">
	                          <h1>매매가</h1>
	                          <input type="range" min="1" max="100" value="50" class="slider" id="myRange">
	                      </div>
	                  </div>
	              </div>
	          </div>
	      </div>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script type="text/javascript" src="/js/filter.js" charset="UTF-8"></script>
</body>