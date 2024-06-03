package com.ar.my_assistant.jdbc;

import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.JdbcTemplate;

import com.ar.my_assistant.data.Remainder;
import com.ar.my_assistant.data.RemainderRow;

public class DBHelper {
    SpringJdbcConfig springJdbcConfig = new SpringJdbcConfig();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(springJdbcConfig.mysqlDataSource());
    public List<Map<String, Object>> getAllRemainders(){
        String selectQuery = "SELECT * FROM remainder WHERE user_id = ?";
        
        List<Map<String, Object>> remainder = jdbcTemplate.queryForList(selectQuery, 101);
        return remainder;
    }
    public Remainder getRemainder(int id){
        String selectQuery = "SELECT * FROM remainder WHERE ID = ?";
        
        Remainder remainder = jdbcTemplate.queryForObject(selectQuery, new RemainderRow(), id);
        return remainder;
    }
    public List<Map<String, Object>> insert(Remainder remainder) {
        String insertQuery = "insert into remainder (user_id, what, happens_on, place, status, description) values ( 101, ?, ?, ?, ?, ?)";
        jdbcTemplate.update(insertQuery, remainder.getWhat(), remainder.getHappensOn(), remainder.getPlace(), remainder.getStatus(), remainder.getDesription());
        return getAllRemainders();
    }
}
