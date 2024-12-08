package com.example.sdpproject;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class AdminDAO {
	@Autowired
	AdminRepository ar;
	
	public List<Admin> getAll() {
		List<Admin> l=ar.findAll(); 
		return l;
	}

	public Admin findUser(Admin admin) {
		System.out.println(admin.toString());
		Admin rec =  ar.findByUsernameAndPassword(admin.getUsername(), admin.getPassword());
		System.out.println(rec.toString());
		return rec;
	}

}
