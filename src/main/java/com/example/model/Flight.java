package com.example.model;

public class Flight {
	
	private String f_name;
	private String f_from;
	private String f_to;
	private String f_date;
	private String f_type;
	private float f_dur;
	private int f_stops;
	private float f_offers;

	private float f_price;

	public Flight() {
		// TODO Auto-generated constructor stub
	}

	

	public String getF_name() {
		return f_name;
	}

	public void setF_name(String f_name) {
		this.f_name = f_name;
	}

	public String getF_from() {
		return f_from;
	}

	public void setF_from(String f_from) {
		this.f_from = f_from;
	}

	public String getF_to() {
		return f_to;
	}


	public void setF_to(String f_to) {
		this.f_to = f_to;
	}

	public String getF_date() {
		return f_date;
	}

	public void setF_date(String f_date) {
		this.f_date = f_date;
	}

	public String getF_type() {
		return f_type;
	}

	public void setF_type(String f_type) {
		this.f_type = f_type;
	}

	public float getF_price() {
		return f_price;
	}

	public void setF_price(float f_price) {
		this.f_price = f_price;
	}

	public float getF_dur() {
		return f_dur;
	}

	public void setF_dur(float f_dur) {
		this.f_dur = f_dur;
	}

	public int getF_stops() {
		return f_stops;
	}

	public void setF_stops(int f_stops) {
		this.f_stops = f_stops;
	}

	public float getF_offers() {
		return f_offers;
	}

	public void setF_offers(float f_offers) {
		this.f_offers = f_offers;
	}

	public Flight( String f_name, String f_from, String f_to, String f_date, String f_type, float f_dur,
			int f_stops, float f_offers, float f_price) {
		super();
		//this.f_id = f_id;
		this.f_name = f_name;
		this.f_from = f_from;
		this.f_to = f_to;
		this.f_date = f_date;
		this.f_type = f_type;
		this.f_dur = f_dur;
		this.f_stops = f_stops;
		this.f_offers = f_offers;
		this.f_price = f_price;
	}
	

}
