package com.java.employee_management.repository;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.java.employee_management.exception.CustomException;
import com.java.employee_management.model.StatusReport;

public class StatusReportRepository extends AbstractRepository{

	public StatusReportRepository() throws IOException {
		super();
	}

	//Create StatusReport
	public void createStatusReport(StatusReport stsrpt) throws SQLException, CustomException {
		PreparedStatement pstmt = con.prepareStatement("INSERT INTO status_report(compid,empid,deptid,comments,create_date) VALUES (?,?,?,?,?)");
		pstmt.setInt(1,stsrpt.getCompId());
		pstmt.setInt(2,stsrpt.getEmpId());
		pstmt.setInt(3,stsrpt.getDeptId());
		pstmt.setString(4,stsrpt.getComments());
		pstmt.setDate(5,new java.sql.Date(stsrpt.getCreateDate().getTime()));
		try {
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			throw new CustomException(e.getMessage());
		}
	}

	//Get StatusReport
	public StatusReport getStatusReportById(Integer id) throws SQLException, CustomException{
		StatusReport stsrpt = new StatusReport();
		PreparedStatement preparedStatement = con.prepareStatement("SELECT * FROM status_report where id=?");
		preparedStatement.setInt(1, id);
		try {
			ResultSet rs = preparedStatement.executeQuery();

			if(rs.next()){
				stsrpt.setId(rs.getInt("id"));
				stsrpt.setCompId(rs.getInt("compid"));
				stsrpt.setEmpId(rs.getInt("empid"));
				stsrpt.setDeptId(rs.getInt("deptid"));
				stsrpt.setComments(rs.getString("comments"));
				stsrpt.setCreateDate(rs.getDate("create_date"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new CustomException(e.getMessage());
		}

		return stsrpt;
	}
	
	//Update StatusReport
	public void updateStatusReport(StatusReport stsrpt) throws SQLException, CustomException{
		PreparedStatement upstmt = con.prepareStatement("UPDATE status_report SET compid = ?, comments = ?, create_date = ?, empid = ?, deptid = ? WHERE id = ?");
		upstmt.setInt(1, stsrpt.getCompId());
		upstmt.setString(2, stsrpt.getComments());
		upstmt.setDate(3, new java.sql.Date(stsrpt.getCreateDate().getTime()));
		upstmt.setInt(4, stsrpt.getEmpId());
		upstmt.setInt(5, stsrpt.getDeptId());
		upstmt.setInt(6, stsrpt.getId());
		try {
			upstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			throw new CustomException(e.getMessage());
		}
	}
	
	//delete StatusReport
	public void deleteStatusReport(Integer srId) throws SQLException, CustomException{
		PreparedStatement dpstmt = con.prepareStatement("DELETE FROM status_report WHERE id = ?");
		dpstmt.setInt(1, srId);
		try {
			dpstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			throw new CustomException(e.getMessage());
		}
	}
	
	//get List of all StatusReport
	public List<StatusReport> getAllStatusReport() throws SQLException, CustomException{
		Statement stm = con.createStatement();
		List<StatusReport> stsrptList = new ArrayList<StatusReport>();
		String sql = "Select * from status_report;";
		try {
			ResultSet rs= stm.executeQuery(sql);
			while(rs.next()){
				StatusReport stsrpt = new StatusReport();
				stsrpt.setId(rs.getInt("id"));
				stsrpt.setCompId(rs.getInt("compid"));
				stsrpt.setEmpId(rs.getInt("empid"));
				stsrpt.setDeptId(rs.getInt("deptid"));
				stsrpt.setCreateDate(new Date(rs.getDate("create_date").getTime()));
				stsrpt.setComments(rs.getString("comments"));
				stsrptList.add(stsrpt);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new CustomException(e.getMessage());
		}

		return stsrptList;
	}
}