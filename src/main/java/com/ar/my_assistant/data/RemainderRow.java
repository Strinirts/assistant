package com.ar.my_assistant.data;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class RemainderRow implements RowMapper<Remainder> {
    @Override
    public Remainder mapRow(ResultSet rs, int rowNum) throws SQLException {
        Remainder Remainder = new Remainder();

        Remainder.setId(rs.getInt("id"));
        Remainder.setUserId(rs.getInt("user_id"));
        Remainder.setWhat(rs.getString("what"));
        Remainder.setHappensOn(rs.getString("happens_on"));
        Remainder.setPlace(rs.getString("place"));
        Remainder.setStatus(rs.getString("status"));
        Remainder.setDesription(rs.getString("description"));

        return Remainder;
    }
}
