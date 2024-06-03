package com.ar.my_assistant.controller;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.ar.my_assistant.data.Remainder;
import com.ar.my_assistant.data.RemainderService;
import com.ar.my_assistant.jdbc.DBHelper;

import jakarta.servlet.http.HttpServletResponse;

@RestController
public class RemainderController {
    DBHelper dbHelper = new DBHelper();
    @PostMapping(
    value = "/create-new-remainder", consumes = "application/json", produces = "application/json")
    public List<Map<String, Object>> createNewRemainder(@RequestBody Remainder remainder, 
    HttpServletResponse response) {        
        return dbHelper.insert(remainder);
    }
    @PostMapping(
    value = "/get-all-remainders", consumes = "application/json", produces = "application/json")
    public List<Map<String, Object>> getAllRemainder(@RequestBody Remainder remainder, 
    HttpServletResponse response) {        
        return dbHelper.getAllRemainders();
    }
}
    
