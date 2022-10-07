package com.Kavindu;

public class FlightList {
	
	String Airline,Depature,Destination,DateTime;
	int id;
	float price;
	
	public FlightList(String airline, String depature, String destination, String dateTime, int id, float price) {
		super();
		Airline = airline;
		Depature = depature;
		Destination = destination;
		DateTime = dateTime;
		this.id = id;
		this.price = price;
	}
   
	public FlightList() {
		
	}
	
	public String getAirline() {
		return Airline;
	}
	public void setAirline(String airline) {
		Airline = airline;
	}
	public String getDepature() {
		return Depature;
	}
	public void setDepature(String depature) {
		Depature = depature;
	}
	public String getDestination() {
		return Destination;
	}
	public void setDestination(String destination) {
		Destination = destination;
	}
	public String getDateTime() {
		return DateTime;
	}
	public void setDateTime(String dateTime) {
		DateTime = dateTime;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
		

}
