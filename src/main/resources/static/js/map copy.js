
$(function() {
	let browerWidth = screen.availWidth;
	let browerHeight = screen.availHeight;
	let mapBrowerWidth = browerWidth - 500;
	let mapBrowerHeight = browerHeight - 140;
	
	let propertyMap = $("#property-map");
	let propertyList = $("#property-list");
	let header = $("#header");
	let filter = $("#filter");
	
	header.width(browerWidth);
	filter.width(browerWidth);
	
	propertyMap.height(mapBrowerHeight);
	propertyMap.width(mapBrowerWidth);
	propertyList.height(mapBrowerHeight);
	
	// 지도 생성
	let container = propertyMap.get(0);
	let options = {
				center: new kakao.maps.LatLng(37.602305, 126.920256),
				level: 3
	};
	let map = new kakao.maps.Map(container, options);
	
	// 주소-좌표 변환 객체 생성
	let geocoder = new kakao.maps.services.Geocoder();
	
	// 주소로 좌표 검색
	geocoder.addressSearch('서울특별시 은평구 진흥로 57-4', function(result, status) {
		if (status === kakao.maps.services.Status.OK) {
			var coord = new kakao.maps.LatLng(result[0].y, result[0].x);
	
			// 결과값으로 받은 위치를 마커로 표시
			var marker = new kakao.maps.Marker({
				map: map,
				position: coord
			});
	
			// 인포윈도우로 장소에 대한 설명을 표시
			var infowindow = new kakao.maps.InfoWindow({
				content: '<div style="width:150px; text-align:center; padding:6px 0;">벼링 은평구 집</div>'
			});
			infowindow.open(map, marker);
	
			map.setCenter(coord);
		}
	});
});