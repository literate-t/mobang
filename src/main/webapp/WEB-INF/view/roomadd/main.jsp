<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
	<meta charset="UTF-8">
	<link href="/css/room.css" rel="stylesheet" type="text/css">	
</head>

<body>
<main id="main">
	<div class="content-container">
		<div class="main-header">
			<h1>방 내놓기</h1>
			<ul class="main-top">
				<li><a href="" class="active">방 내놓기</a></li>
				<li><a href="">내 방 관리</a></li>
			</ul>
		</div>
		<!-- ===========================roomtype========================== -->
		<div class="roomtype">
			<h1>매물 종류</h1>
			<table class="roomtype-table">
				<tbody>
					<tr>
						<th class="table-head">종류선택</th>
						<td class="roomtypetds">
							<div class="roomtype-btns">
								<label class="radio-btn"> <input type="radio"
									name="room_type" value="원룸" checked>
									<p>원룸</p>
								</label> <label class="radio-btn"> <input type="radio"
									name="room_type" value="투룸">
									<p>투룸</p>
								</label> <label class="radio-btn"> <input type="radio"
									name="room_type" value="쓰리룸">
									<p>쓰리룸</p>
								</label>
							</div>
						</td>
					</tr>
					<tr>
						<th class="table-head">건물유형</th>
						<td class="roomtypetds">
							<div class="buildingtype-btns">
								<label class="radio-btn"> <input type="radio"
									name="building_type" value="단독주택" checked>
									<p>단독주택</p>
								</label> <label class="radio-btn"> <input type="radio"
									name="building_type">
									<p>다가구주택</p>
								</label> <label class="radio-btn"> <input type="radio"
									name="building_type">
									<p>빌라/연립/다세대</p>
								</label>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- ==============================location======================== -->
		<div class="location">
			<h1>
				위치 정보 <span>*등기부등본 상의 주소를 입력해 주세요.</span>
			</h1>
			<table>
				<tbody>
					<tr>
						<th>주소</th>
						<td class="locationtds">
							<div class="location-left">
								<p class="location-text">
									<span>도로명, 건물명, 지번에 대해 통합검색이 가능합니다.</span>
								</p>
								<form class="location-search">
									<input type="text" placeholder="안녕북길114-1">
									<button type="submit">주소검색</button>
								</form>
								<div class="location-display"></div>
								<div class="location-detail">
									<div class="detail1">
										<input type="text" placeholder="101동">
									</div>
									<div class="detail2">
										<input type="text" placeholder="201호">
									</div>
								</div>
								<div class="location-checkbox">
									<label class="check-label"> <input type="checkbox"
										class="check-box"> <span class="checkbox-span"></span>
										<span class="span-text">등본에 동정보가 없는 경우 선택해주세요</span>
									</label>
								</div>
								<p class="location-notice">
									<a href="#none">주소가 검색되지 않을 때</a>
								</p>
							</div>
							<div class="location-map">
								<!-- <div class = "map-pointer">
                                    <svg width="52" height="52" viewBox="0 0 52 52">
                                        <g fill="none" fill-rule="evenodd" transform="translate(1 1)">
                                            <circle cx="25.2" cy="25.2" r="25.2" fill="#FFF" stroke="#EEE" stroke-width="1.2"></circle>
                                            <path fill="#000" d="M28.286 21.257a3.435 3.435 0 0 0-3.429-3.428 3.435 3.435 0 0 0-3.428 3.428 3.435 3.435 0 0 0 3.428 3.429 3.435 3.435 0 0 0 3.429-3.429zm3.428 0c0 .817-.093 1.66-.442 2.397l-4.875 10.367c-.28.589-.897.95-1.54.95s-1.259-.361-1.527-.95l-4.888-10.367c-.348-.736-.442-1.58-.442-2.397a6.853 6.853 0 0 1 6.857-6.857 6.853 6.853 0 0 1 6.857 6.857z">                                                
                                            </path></g></svg>
                                </div> -->
								<p>주소를 검색하시면</p>
								<p>해당 위치가 지도에 표시됩니다.</p>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- ================================dealtype============================== -->
		<div class="dealtype">
			<h1>거래 정보</h1>
			<table>
				<tbody class="dealtype-table">
					<tr>
						<th class="deal-title" rowspan="2">거래종류</th>
						<td class="deal-wrap">
							<button class = "dealbtn1">월세</button>
                            <button class = "dealbtn2">전세</button>
						</td>
					</tr>
					<tr>
						<td class = "info-area">
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- ==============================baseinfo================================= -->
		<div class="baseinfo">
			<h1>기본 정보</h1>
			<table class="baseinfo-table">
				<tbody>
					<tr>
						<th class="table-head" rowspan="2">건물크기</th>
						<td class="provision-area">
							<p class="area-type">공급면적</p> <input type="text">
							<p class="area-unit">평</p> <input type="text">
							<p class="area-unit">㎡</p>
						</td>
						<th class="table-head" rowspan="2">건물층수</th>
						<td class="building-floor">
							<p>건물층수</p> <select>
								<option value>건물층수 선택</option>
								<option value="1">1층</option>
								<option value="2">2층</option>
								<option value="3">3층</option>
								<option value="4">4층</option>
								<option value="5">5층</option>
								<option value="6">6층</option>
								<option value="7">7층</option>
						</select>
						</td>
					</tr>
					<tr>
						<td class="exclusive-area">
							<p class="area-type">전용면적</p> <input type="text">
							<p class="area-unit">평</p> <input type="text">
							<p class="area-unit">㎡</p>
						</td>
						<td class="floors">
							<p>해당층수</p> <select>
								<option value>해당층수 선택</option>
								<option value="1">반지층</option>
								<option value="2">옥탑</option>
								<option value="3">1층</option>
								<option value="4">2층</option>
								<option value="5">3층</option>
								<option value="6">4층</option>
								<option value="7">5층</option>
								<option value="8">6층</option>
								<option value="9">7층</option>
						</select>
						</td>
					</tr>
					<tr>
						<th class="table-head">난방종류</th>
						<td class="heating" colspan="3"><select>
								<option value>난방종류 선택</option>
								<option value="1">중앙난방</option>
								<option value="2">지역난방</option>
								<option value="3">개별난방</option>
						</select></td>
					</tr>
					<tr>
						<th class="table-head"">입주가능일</th>
                        <td class = "moving-date" colspan="3">
                            <button style = "background : rgb(255, 255, 255)">즉시입주</button>
                            <button style = "background : rgb(255, 255, 255)">날짜협의</button>
                            <button style = "background : rgb(255, 255, 255)">날짜선택</button>
                        </td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- ==============================additional================================= -->
		<div class="additional">
			<h1>추가정보</h1>
			<table class="additional-table">
				<tr>
					<th class="table-head" rowspan="2">관리비</th>
					<td class="management-row" colspan="3">
						<div class="management-fee">
							<input type="text">
							<p class="fee-text">만원</p>
							<div class="checkwrap">
								<label class="fee-check"> <input type="checkbox"
									name="maintenance-option" value=checked>
									<p>협의가능</p>
								</label> <label class="fee-check"> <input type="checkbox"
									name="maintenance">
									<p>관리비없음</p>
								</label>
							</div>
						</div>
						<div class="management-notice">
							<p>협의가능 옵션은 금액을 입력해야만 선택이 가능합니다.</p>
						</div>
					</td>
				</tr>

				<tr>
					<td colspan="3">
						<div class="management-option">
							<div class="option-text">
								<p>관리비항목</p>
								<p>(다중선택가능)</p>
							</div>
							<label class="checkbox-btn"> <input type="checkbox"
								name="maintenance-items">
								<p>인터넷</p>
							</label> <label class="checkbox-btn"> <input type="checkbox"
								name="maintenance-items" checked>
								<p>유선TV</p>
							</label> <label class="checkbox-btn"> <input type="checkbox"
								name="maintenance-items">
								<p>청소비</p>
							</label> <label class="checkbox-btn"> <input type="checkbox"
								name="maintenance-items">
								<p>수도세</p>
							</label> <label class="checkbox-btn"> <input type="checkbox"
								name="maintenance-items">
								<p>도시가스</p>
							</label> <label class="checkbox-btn"> <input type="checkbox"
								name="maintenance-items">
								<p>전기세</p>
							</label> <label class="checkbox-btn"> <input type="checkbox"
								name="maintenance-items">
								<p>기타</p>
							</label>
						</div>
					</td>
				</tr>

				<tr>
					<th class="table-head">주차여부</th>
					<td>
						<div class="parking">
							<label class="radio-btn"> <input type="radio"
								name="parking" checked>
								<p>불가능</p>
							</label> <label class="radio-btn"> <input type="radio"
								name="parking">
								<p>가능</p>
							</label>
							<div class="parking-fee">
								<input type="text">
								<p>만원</p>
							</div>
						</div>
					</td>
					<th class="table-head">반려동물</th>
					<td>
						<div class="pets">
							<label class="radio-btn"> <input type="radio" name="pets"
								checked>
								<p>불가능</p>
							</label> <label class="radio-btn"> <input type="radio"
								name="pets">
								<p>가능</p>
							</label>
						</div>
					</td>
				</tr>
				<tr>
					<th class="table-head">엘리베이터</th>
					<td>
						<div class="elevator">
							<label class="radio-btn"> <input type="radio"
								name="elevator" checked>
								<p>없음</p>
							</label> <label class="radio-btn"> <input type="radio"
								name="elevator">
								<p>있음</p>
							</label>
						</div>
					</td>
					<th class="table-head">베란다/발코니</th>
					<td>
						<div class="veranda">
							<label class="radio-btn"> <input type="radio"
								name="veranda" checked>
								<p>없음</p>
							</label> <label class="radio-btn"> <input type="radio"
								name="veranda">
								<p>있음</p>
							</label>
						</div>
					</td>
				</tr>
				<tr>
					<th class="table-head">빌트인</th>
					<td colspan="3">
						<div class="built-in">
							<label class="radio-btn"> <input type="radio"
								name="built-in" checked>
								<p>없음</p>
							</label> <label class="radio-btn"> <input type="radio"
								name="built-in">
								<p>있음</p>
							</label>
						</div>
					</td>
				</tr>
				<tr>
					<th class="table-head">옵션항목</th>
					<td colspan="3">
						<div class="checkbox-wrap">
							<label class="checkbox-btn"> <input type="checkbox"
								name="roomoption" checked>
								<p>에이컨</p>
							</label> <label class="checkbox-btn"> <input type="checkbox"
								name="roomoption">
								<p>세탁기</p>
							</label> <label class="checkbox-btn"> <input type="checkbox"
								name="roomoption">
								<p>침대</p>
							</label> <label class="checkbox-btn"> <input type="checkbox"
								name="roomoption">
								<p>책상</p>
							</label> <label class="checkbox-btn"> <input type="checkbox"
								name="roomoption">
								<p>옷장</p>
							</label> <label class="checkbox-btn"> <input type="checkbox"
								name="roomoption">
								<p>TV</p>
							</label> <label class="checkbox-btn"> <input type="checkbox"
								name="roomoption">
								<p>신발장</p>
							</label> <label class="checkbox-btn"> <input type="checkbox"
								name="roomoption">
								<p>냉장고</p>
							</label> <label class="checkbox-btn"> <input type="checkbox"
								name="roomoption">
								<p>가스레인지</p>
							</label> <label class="checkbox-btn"> <input type="checkbox"
								name="roomoption">
								<p>인덕션</p>
							</label>
						</div>
					</td>
				</tr>
				<tr>
					<th class="table-head">전세자금대출</th>
					<td colspan="3">
						<div class="loan">
							<label class="radio-btn"> <input type="radio" name="loan"
								checked>
								<p>불가능</p>
							</label> <label class="radio-btn"> <input type="radio"
								name="loan">
								<p>가능</p>
							</label>
						</div>
					</td>
				</tr>
			</table>
		</div>
		<!-- =================================detail-description============= -->

		<div class="detail-description">
			<h1>상세 설명</h1>
			<table class="detail-table">
				<tr>
					<th class="table-head">제목</th>
					<td><input class="detail-title" type="text" name="title">
					</td>
				</tr>
				<tr>
					<th class="table-head">상세설명</th>
					<td class="detail-explanation"><input type="textarea"
						class="detail-textarea" name="memo"></td>
				</tr>
				<tr>
					<th class="table-head">비공개 메모</th>
					<td class="private-memo"><input type="textarea"
						class="private-textarea" name="private-memo"></td>
				</tr>
			</table>
		</div>
		<!-- ============================photo=============================== -->
		<div class="photo">
			<h1>사진 등록</h1>
			<div class="photo-container">
				<!-- <div class="photo-btns">
					<button class="abc">일반사진</button>
					<button class="def">360˚</button>
				</div> -->
				<div class="photo-notice">
					<p>-사진은 가로로 찍은 사진을 권장</p>
					<p>-사진 용량은 한 장당 10mb까지 등록 가능</p>
					<p>-사진은 최소 3장 이상 등록해야하며, 최대 15장까지 권장</p>
				</div>
				<div class="photo-box">
					<div class="photo-registration">
						<p>실 사진 최소 3장 이상 등록하셔야 하며, 가로 사진을 권장</p>
						<p class="photo-textstyle">다방 로고를 제외한 불필요한 정보(상호, 전화번호 등)가 있는
							매물은 비공개 처리</p>
					</div>
					<div class="photo-file">
						<button id="upload-phto" class="upload-btn">일반 사진 등록</button>
						<div id="html5-container" class="html5">
							<input id="html5" type="file" multiple accept=".jpg, .jpeg, .png"
								tabindex="1">
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- ===============================agree-wrap============================ -->

		<div class="agree-wrap">
			<button>취소</button>
			<button class="submit">매물 등록</button>
		</div>
	</div>
</main>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" src="/js/roomadd.js" charset="UTF-8"></script>
</body>