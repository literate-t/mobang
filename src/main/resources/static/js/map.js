$(function() {

	// set property list/map width and height
	let browerWidth = $(window).width();
	let browerHeight = $(window).height();
	let mapBrowerWidth = browerWidth - 630;
	let mapBrowerHeight = browerHeight - 140;
	
	let propertyMap = $("#property-map");
	let propertyList = $("#property-list");
	let content = $("#content");
	let header = $("#header");
	let filter = $("#filter");
	
	header.width(browerWidth);
	filter.width(browerWidth);
	content.width(browerWidth);
	
	propertyMap.height(mapBrowerHeight);
	propertyMap.width(mapBrowerWidth);
	propertyList.height(mapBrowerHeight);
	
	// set variables
	let container = propertyMap.get(0);
	let options = makeMapOptions();
	let map = makeMap(container, options);
	let clusterer = makeClusterer(map);
	//let marker = makeImageMarker();

	// functions
	showList(clusterer, propertyList);
	updateWhenDragEnd(map, propertyList);
	updateWhenZoomChanged(map, propertyList);
	//showImageMarkerWhenMouseOver(postion, marker);
});

// function----------------------------------------------------------
function showImageMarkerWhenMouseOver(position, marker) {	
	kakao.maps.event.addListener(marker, 'mouseover', function() {
		marker.setMap(null); 
		let markerPosition = new kakao.maps.LatLng(postion.lat, position.lng);
		marker.setPosition(markerPosition);
		marker.setMap(map); 
	});
}

function makeImageMarker() {
	let imageSrc = '../images/marker.png';
	let imageSize = new kakao.maps.Size(64, 69);
	let imageOption = {offset: new kakao.maps.Point(27, 69)};
	let markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);
	//let markerPosition = new kakao.maps.LatLng(37.54699, 127.09598);
	let marker = new kakao.maps.Marker({
		image: markerImage
	});		  
}

function makeMap(container, options) {
	return new kakao.maps.Map(container, options);	
}

function makeClusterer(map) {
	return new kakao.maps.MarkerClusterer({
		map: map,
		averageCenter: true,
		minLevel: 5
	});
}

function makeMapOptions() {
	return {
		center: new kakao.maps.LatLng(37.602305, 126.920256),
		level: 3
	};
}

function showList(clusterer, propertyList) {
	fetch('list')
	.then(function(res) {
		return res.json();
	})
	.then(function(json) {
		let markers = $(json).map(function(i, position) {
			return new kakao.maps.Marker({
				position: new kakao.maps.LatLng(position.lat, position.lng)
			});
		});
		clusterer.addMarkers(markers);
		updateList(json, propertyList);
	})
	.catch(error=>console.error(error));
}

function updateList(json, propertyList) {
	$("ul").remove();
	let UlNode = $(document.createElement("ul"));
	json.forEach(function(data, idx){
		let liNode = $(document.createElement("li"));
		let divNode = $(document.createElement("div"));
		let aNode = $(document.createElement("a"));
		aNode.attr('href', '#').attr('target', '_blank');
		//divNode.append(data.lng);
		divNode.append(aNode);
		liNode.append(divNode);
		UlNode.append(liNode);
		propertyList.append(UlNode);
	});
}

function updateWhenDragEnd(map, propertyList) {
	kakao.maps.event.addListener(map, 'dragend', function() {
		let bounds = map.getBounds();
		let southWest = bounds.getSouthWest();
		let northEast = bounds.getNorthEast();
		let positionData = {
			"swLat": southWest.getLat(),
			"swLng": southWest.getLng(),
			"neLat": northEast.getLat(),
			"neLng": northEast.getLng()
		};

		let init = {
			method: 'POST',
			body: JSON.stringify(positionData),
			headers: {
				'Content-Type': 'application/json'
			}
		};

		fetch('boundlist', init)
			.then(function(res) {
				return res.json();
			})
			.then(function(json) {
				updateList(json, propertyList);
			})				
	});
}

function updateWhenZoomChanged(map, propertyList) {
	kakao.maps.event.addListener(map, 'zoom_changed', function() {
		let bounds = map.getBounds();
		let southWest = bounds.getSouthWest();
		let northEast = bounds.getNorthEast();
		let positionData = {
			"swLat": southWest.getLat(),
			"swLng": southWest.getLng(),
			"neLat": northEast.getLat(),
			"neLng": northEast.getLng()
		};

		let init = {
			method: 'POST',
			body: JSON.stringify(positionData),
			headers: {
				'Content-Type': 'application/json'
			}
		};

		fetch('boundlist', init)
			.then(function(res) {
				return res.json();
			})
			.then(function(json) {
				updateList(json, propertyList);
			})			
	});
}

$(window).resize(function() {
	let browerWidth = $(window).width();
	let browerHeight = $(window).height();
	let mapBrowerWidth = browerWidth - 630;
	let mapBrowerHeight = browerHeight - 140;
	
	let propertyMap = $("#property-map");
	let propertyList = $("#property-list");
	let content = $("#content");
	let header = $("#header");
	let filter = $("#filter");
	
	header.width(browerWidth);
	filter.width(browerWidth);
	content.width(browerWidth);
	
	propertyMap.height(mapBrowerHeight);
	propertyMap.width(mapBrowerWidth);
	propertyList.height(mapBrowerHeight);
});