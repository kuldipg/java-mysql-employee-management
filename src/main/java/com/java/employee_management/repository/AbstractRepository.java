package com.java.employee_management.repository;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import com.java.employee_management.exception.CustomException;
import com.java.employee_management.util.MySQLConnection;

abstract class AbstractRepository {
	protected Connection con;
	
	public AbstractRepository() throws IOException, CustomException {
		try {
			con = MySQLConnection.getConnection();
		} catch (IOException e) {
			e.printStackTrace();
			throw new CustomException(e.getMessage());
		}
	}	
}
