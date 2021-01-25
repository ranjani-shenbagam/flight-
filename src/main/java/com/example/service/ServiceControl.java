package com.example.service;

import java.io.BufferedReader;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.example.controller.LoginBean;
import com.example.model.Flight;

@Component
public class ServiceControl {
	
	public List<Flight> generateFlights(String filePath) throws IOException {
		FileReader fr = new FileReader(new File(filePath));
		BufferedReader br = new BufferedReader(fr);
		String l;

		List<Flight> fl = new ArrayList<>();
		while ((l = br.readLine()) != null) {
			String[] split = l.split(",");
			Flight f = new Flight();
			
			f.setF_name(split[0]);
			f.setF_from(split[1]);
			f.setF_to(split[2]);
			f.setF_date(split[3]);
			f.setF_type(split[4]);
			f.setF_dur(Float.valueOf(split[6]));
			f.setF_stops(Integer.valueOf(split[5]));
			f.setF_offers(Float.valueOf(split[7]));
			f.setF_price(Float.valueOf(split[8]));
			fl.add(f);
		}
		return fl;
	}

	public void addItem() throws SQLException, IOException {
		Connection con;
		ConnectionHandler c = new ConnectionHandler();
		List<Flight> bill = generateFlights("C:\\Users\\DELL\\eclipse new one\\p_67\\src\\main\\java\\flights.txt");

	
		con = ConnectionHandler.getConnection();
		for (Flight fl : bill) {

			String name = fl.getF_name();
			String type = fl.getF_type();
			float price = fl.getF_price();
			String from = fl.getF_from();
			String to = fl.getF_to();
			String date = fl.getF_date();
			Float dur = fl.getF_dur();
			int stops = fl.getF_stops();
			float offers = fl.getF_offers();
		
			PreparedStatement stmt = con.prepareStatement(
					"insert into flight (f_name,f_from,f_to,f_date,f_type,f_stops,f_dur_in_min,f_offers,f_price) values(?,?,?,?,?,?,?,?,?)");
			stmt.setString(1, name);
			stmt.setString(2, from);
			stmt.setString(3, to);
			stmt.setString(4, date);
			stmt.setString(5, type);
			stmt.setFloat(7, dur);
			stmt.setInt(6, stops);
			stmt.setFloat(8, offers);
			stmt.setFloat(9, price);
			stmt.execute();

		}
	}

	public void addUser(String username, String Password) throws SQLException {
		Connection con;
		ConnectionHandler c = new ConnectionHandler();

		con = ConnectionHandler.getConnection();

		PreparedStatement stmt = con.prepareStatement("insert into users values(?,?)");
		stmt.setString(1, username);
		stmt.setString(2, Password);

		stmt.execute();

	}

	public List<LoginBean> getUsers() throws SQLException {
		Connection con;
		ConnectionHandler c = new ConnectionHandler();
		List<LoginBean> l = new ArrayList<>();

		con = c.getConnection();
		
		PreparedStatement stmt = con.prepareStatement("select * from users");
		ResultSet r = stmt.executeQuery();

		while (r.next()) {
			l.add(new LoginBean(r.getString("username"), r.getString("password")));
		}
		con.close();

		return l;

	}

	public List<Flight> getMenuItemList() throws SQLException, IOException {
		Connection con;
		ConnectionHandler c = new ConnectionHandler();
		List<Flight> l = new ArrayList<>();

		con = c.getConnection();
		PreparedStatement stmt = con.prepareStatement("select * from flight");
		ResultSet r = stmt.executeQuery();

		while (r.next()) {
			l.add(new Flight( r.getString("f_name"), r.getString("f_from"), r.getString("f_to"),
					r.getString("f_date"), r.getString("f_type"), r.getFloat("f_dur_in_min"), r.getInt("f_stops"),
					r.getFloat("f_offers"), r.getFloat("f_price")));
		}
		con.close();

		return l;
	}
}
