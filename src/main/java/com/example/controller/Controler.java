package com.example.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.model.Flight;
import com.example.service.ServiceControl;

@Controller
public class Controler {

	String from1;
	String to1;
	String date1;

	@GetMapping("/")
	public String First(@ModelAttribute("login") LoginBean loginBean) throws SQLException, IOException {
		ServiceControl s = new ServiceControl();
		s.addItem();
		return "main";
	}

	@PostMapping("/register")
	public String Register(@RequestParam("username") String name, @RequestParam("password") String pass)
			throws SQLException {
		ServiceControl s = new ServiceControl();
		s.addUser(name, pass);
		return "sucess";
	}

	@PostMapping("/submitlogin")
	public String checkLoginDetailsCustomer(ModelMap model, @ModelAttribute("login") LoginBean loginBean,
			BindingResult result) throws SQLException {
		ServiceControl s = new ServiceControl();
		boolean dummy = false;
		List<LoginBean> l = s.getUsers();
		for (LoginBean l2 : l) {

			if (l2.getPassword().equals(loginBean.getPassword()) && l2.getUserName().equals(loginBean.getUserName())) {
				dummy = true;
			}
		}
		if (dummy) {

			return "mainpage";
		} else {
			model.addAttribute("error", 1);
			return "main";
		}
	}

	@GetMapping("/newuser")
	public String NewUser() {
		return "newuser";
	}

	@GetMapping("/book-item")
	public String BookItem() {
		return "book-item";
	}

	@GetMapping("/search1")
	public String Search() {
		return "mainpage";
	}

	@PostMapping("/search")
	public String Search(@RequestParam("from") String from, @RequestParam("to") String to,
			@RequestParam("date") String date) {
		from1 = from;
		to1 = to;
		date1 = date;
		
		return "search";

	}

	@GetMapping("/results")
	public String Result(@RequestParam("stops") String stops, @RequestParam("airlines") String airlines,
			@RequestParam("offers") String offers, @RequestParam("price") String price,
			@RequestParam("duration") String duration, ModelMap model) throws SQLException, IOException {
		ServiceControl s = new ServiceControl();
		List<Flight> l = s.getMenuItemList();
		List<Flight> li1 = new ArrayList<>();
		
		
		for (Flight f : l) {
			if (f.getF_price() == Float.valueOf(price) && f.getF_stops() == Integer.valueOf(stops)
					&& f.getF_from().equals(from1) && f.getF_to().equals(to1)
					&& f.getF_offers() == Float.valueOf(offers) && f.getF_date().equals(date1)
					&& f.getF_dur() == Float.valueOf(duration) && f.getF_name().equals(airlines)) {
				li1.add(f);
			}

		}
		
		model.addAttribute("list", li1);
		if (li1.size() == 0) {
			return "empty";
		}
		return "data";

	}

}
