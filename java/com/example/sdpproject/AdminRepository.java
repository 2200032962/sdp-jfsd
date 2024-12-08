package com.example.sdpproject;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;


public interface AdminRepository extends JpaRepository<Admin, Integer>{
	
	Admin findByUsernameAndPassword(String username, String password);
}
