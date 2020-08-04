package com.mobang.web.entity;

public class BoundPosition {
	public String getSwLat() {
		return swLat;
	}
	public void setSwLat(String swLat) {
		this.swLat = swLat;
	}
	public String getSwLng() {
		return swLng;
	}
	public void setSwLng(String swLng) {
		this.swLng = swLng;
	}
	public String getNeLat() {
		return neLat;
	}
	public void setNeLat(String neLat) {
		this.neLat = neLat;
	}
	public String getNeLng() {
		return neLng;
	}
	public void setNeLng(String neLng) {
		this.neLng = neLng;
	}
	private String swLat;
	private String swLng;
	private String neLat;
	private String neLng;
}
