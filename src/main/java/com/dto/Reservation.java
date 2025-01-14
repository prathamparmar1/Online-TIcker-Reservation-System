package com.dto;

public class Reservation 
{
private String username;
private String nameofevent;
private String Busid;

public String getBusid() {
	return Busid;
}
public void setBusid(String busid) {
	Busid = busid;
}
private String id;
private String Start;
public String getNameofevent() {
	return nameofevent;
}
public void setNameofevent(String nameofevent) {
	this.nameofevent = nameofevent;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getStartat() {
	return startat;
}
public void setStartat(String startat) {
	this.startat = startat;
}
public String getEndat() {
	return endat;
}
public void setEndat(String endat) {
	this.endat = endat;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
private String startat;
private String End;
private String endat;
private String Fare;
private double price;
private String city;
private String Type;


public String getType() {
	return Type;
}
public void setType(String type) {
	Type = type;
}
public String getFare() {
	return Fare;
}
public void setFare(String fare) {
	Fare = fare;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getid() {
	return id;
}
public void setid(String id) {
	this.id = id;
}
public String getStart() {
	return Start;
}
public void setStart(String start) {
	Start = start;
}
public String getEnd() {
	return End;
}
public void setEnd(String end) {
	End = end;
}

}