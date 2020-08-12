package com.mobang.web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mobang.web.entity.BoundPosition;
import com.mobang.web.entity.Position;

@Controller
@RequestMapping("/mobang/")
public class MobangController {
	
	@GetMapping("home")
	public String index() {
		return "mobang.home";
	}
	
	@GetMapping("roomadd")
	public String roomadd(HttpServletResponse response) {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		return "mobang.roomadd";
	}
	
	@GetMapping("login")
	public String login() {
		return "inc/login/login";
	}
	
	@GetMapping("signup")
	public String signup() {
		return "inc/login/signup";
	}
	
	@GetMapping("search")
	public String search(HttpServletResponse response) {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		return "mobang.search.main";
	}
	
	@ResponseBody
	@GetMapping("list")
	public List<Position> list() {
		int size = 10;
		Position[] pos = new Position[size];
		List<Position> positionList = new ArrayList<>();
		for (int i = 0; i < size; ++i) {
			pos[i] = new Position();
		}
		
		// 서부 경찰서
		pos[0].setLat(37.60212784112205);
		pos[0].setLng(126.92130672619108);
		
		// 벼링 은평구 집
		pos[1].setLat(37.60212784112205);
		pos[1].setLng(126.92025337254043);
		
		// 응암 이마트
		pos[2].setLat(37.60025302381061);
		pos[2].setLng(126.92017912027282);
		
		// 브릭스
		pos[3].setLat(37.59990231503847);
		pos[3].setLng(126.92118733659322);
		
		// 자금성
		pos[4].setLat(37.59941546187588);
		pos[4].setLng(126.92071224257575);
		
		// 응암역
		pos[5].setLat(37.59935355015845);
		pos[5].setLng(126.91587696878629);
		
		// 탐앤탐스
		pos[6].setLat(37.59998435733665);
		pos[6].setLng(126.91926498818187);

		// 던킨도너츠
		pos[7].setLat(37.59954587588207);
		pos[7].setLng(126.9170997452277);
		
		// 큰솔약국
		pos[8].setLat(37.60012877962521);
		pos[8].setLng(126.91640832851999);
		
		// 병원
		pos[9].setLat(37.6003955389349);
		pos[9].setLng(126.92108489906923);
		
		for (int i = 0; i < size; ++i) {
			positionList.add(pos[i]);
		}
		return positionList;
	}
	
	@ResponseBody
	@PostMapping("boundlist")
	public List<Position> boundList(@RequestBody BoundPosition boundPos, Model model) {
		int size = 10;
		Position[] pos = new Position[size];
		List<Position> positionList = new ArrayList<>();
		for (int i = 0; i < size; ++i) {
			pos[i] = new Position();
		}
		// 서울 서부 경찰서
		pos[0].setLat(37.60212784112205);
		pos[0].setLng(126.92130672619108);
		
		// 벼링 은평구 집
		pos[1].setLat(37.60212784112205);
		pos[1].setLng(126.92025337254043);
		
		// 응암 이마트
		pos[2].setLat(37.60025302381061);
		pos[2].setLng(126.92017912027282);
		
		// 브릭스
		pos[3].setLat(37.59990231503847);
		pos[3].setLng(126.92118733659322);
		
		// 자금성
		pos[4].setLat(37.59941546187588);
		pos[4].setLng(126.92071224257575);
		
		// 응암역
		pos[5].setLat(37.59935355015845);
		pos[5].setLng(126.91587696878629);
		
		// 탐앤탐스
		pos[6].setLat(37.59998435733665);
		pos[6].setLng(126.91926498818187);

		// 던킨도너츠
		pos[7].setLat(37.59954587588207);
		pos[7].setLng(126.9170997452277);
		
		// 큰솔약국
		pos[8].setLat(37.60012877962521);
		pos[8].setLng(126.91640832851999);
		
		// 병원
		pos[9].setLat(37.6003955389349);
		pos[9].setLng(126.92108489906923);
		
		double neLat = Double.parseDouble(boundPos.getNeLat());
		double neLng = Double.parseDouble(boundPos.getNeLng());
		double swLat = Double.parseDouble(boundPos.getSwLat());
		double swLng = Double.parseDouble(boundPos.getSwLng());
		
		for (int i = 0; i < size; ++i) {
			double posLat = pos[i].getLat();
			double posLng = pos[i].getLng();
			
			if(posLat >= swLat && posLat <= neLat &&
					posLng <= neLng	&& posLng >= swLng) {
				positionList.add(pos[i]);
			}
		}		
		return positionList;
	}
}