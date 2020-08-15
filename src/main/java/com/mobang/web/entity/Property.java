package com.mobang.web.entity;

public class Property {
	private int roomType; 		// 0: 원룸, 1:투룸, 2:쓰리룸
	private int buildingType;	// 0: 단독주택, 1:다가구주택
	private String address;		
	private int dealType;
	private String[] monthlyDeposit;
	private String monthlyPrice;
	private String deposit;
	private double supplyPyeong;
	private double supplyM2;
	private String buildingFloor;
	private double exclusivePyeong;
	private double exclusiveM2;
	private String selectedFloor;
	private String heat;
	private String moveInto;
	private int maintenanceFee;
	private String maintenanceItems;
	private String parkingAvail;
	private String petsAvail;
	private int parkingFee;
	private String elevatorAvail;
	private String verandaAvail;
	private String builtInAvail;
	private String roomOptions;
	private String loanAvail;
	private String title;
	private String memo;
	private String privateMemo;
	private String pictureLoc;
	
	public int getRoomType() {
		return roomType;
	}
	public void setRoomType(int roomType) {
		this.roomType = roomType;
	}
	public int getBuildingType() {
		return buildingType;
	}
	public void setBuildingType(int buildingType) {
		this.buildingType = buildingType;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getDealType() {
		return dealType;
	}
	public void setDealType(int dealType) {
		this.dealType = dealType;
	}
	
	public String[] getMonthlyDeposit() {
		return monthlyDeposit;
	}
	public void setMonthlyDeposit(String[] monthlyDeposit) {
		this.monthlyDeposit = monthlyDeposit;
	}
	public String getMonthlyPrice() {
		return monthlyPrice;
	}
	public void setMonthlyPrice(String monthlyPrice) {
		this.monthlyPrice = monthlyPrice;
	}
	public String getDeposit() {
		return deposit;
	}
	public void setDeposit(String deposit) {
		this.deposit = deposit;
	}
	public double getSupplyPyeong() {
		return supplyPyeong;
	}
	public void setSupplyPyeong(double supplyPyeong) {
		this.supplyPyeong = supplyPyeong;
	}
	public double getSupplyM2() {
		return supplyM2;
	}
	public void setSupplyM2(double supplyM2) {
		this.supplyM2 = supplyM2;
	}
	public String getBuildingFloor() {
		return buildingFloor;
	}
	public void setBuildingFloor(String buildingFloor) {
		this.buildingFloor = buildingFloor;
	}
	public double getExclusivePyeong() {
		return exclusivePyeong;
	}
	public void setExclusivePyeong(double exclusivePyeong) {
		this.exclusivePyeong = exclusivePyeong;
	}
	public double getExclusiveM2() {
		return exclusiveM2;
	}
	public void setExclusiveM2(double exclusiveM2) {
		this.exclusiveM2 = exclusiveM2;
	}
	public String getSelectedFloor() {
		return selectedFloor;
	}
	public void setSelectedFloor(String selectedFloor) {
		this.selectedFloor = selectedFloor;
	}
	public String getHeat() {
		return heat;
	}
	public void setHeat(String heat) {
		this.heat = heat;
	}
	public String getMoveInto() {
		return moveInto;
	}
	public void setMoveInto(String moveInto) {
		this.moveInto = moveInto;
	}
	public int getMaintenanceFee() {
		return maintenanceFee;
	}
	public void setMaintenanceFee(int maintenanceFee) {
		this.maintenanceFee = maintenanceFee;
	}
	public String getMaintenanceItems() {
		return maintenanceItems;
	}
	public void setMaintenanceItems(String maintenanceItems) {
		this.maintenanceItems = maintenanceItems;
	}
	public String getParkingAvail() {
		return parkingAvail;
	}
	public void setParkingAvail(String parkingAvail) {
		this.parkingAvail = parkingAvail;
	}
	public String getPetAvail() {
		return petsAvail;
	}
	public void setPetAvail(String petAvail) {
		this.petsAvail = petAvail;
	}
	public int getParkingFee() {
		return parkingFee;
	}
	public void setParkingFee(int parkingFee) {
		this.parkingFee = parkingFee;
	}
	public String getElevatorAvail() {
		return elevatorAvail;
	}
	public void setElevatorAvail(String elevatorAvail) {
		this.elevatorAvail = elevatorAvail;
	}
	public String getBalconyAvail() {
		return verandaAvail;
	}
	public void setBalconyAvail(String balconyAvail) {
		this.verandaAvail = balconyAvail;
	}
	public String getBuiltInAvail() {
		return builtInAvail;
	}
	public void setBuiltInAvail(String builtInAvail) {
		this.builtInAvail = builtInAvail;
	}
	public String getOptions() {
		return roomOptions;
	}
	public void setOptions(String roomOptions) {
		this.roomOptions = roomOptions;
	}
	public String getLoanAvail() {
		return loanAvail;
	}
	public void setLoanAvail(String loanAvail) {
		this.loanAvail = loanAvail;
	}
	public String getDetailTitle() {
		return title;
	}
	public void setDetailTitle(String title) {
		this.title = title;
	}
	public String getMemo() {
		return memo;
	}
	public void setDetailBody(String memo) {
		this.memo = memo;
	}
	public String getNotPublicMemo() {
		return privateMemo;
	}
	public void setNotPublicMemo(String privateMemo) {
		this.privateMemo = privateMemo;
	}
	public String getPictureLoc() {
		return pictureLoc;
	}
	public void setPictureLoc(String pictureLoc) {
		this.pictureLoc = pictureLoc;
	}
}