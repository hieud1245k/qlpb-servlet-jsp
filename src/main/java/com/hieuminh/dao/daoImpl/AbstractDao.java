package com.hieuminh.dao.daoImpl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;

import com.hieuminh.dao.GenericDao;
import com.hieuminh.mapper.RowMapper;

public class AbstractDao<T> implements GenericDao<T> {
	ResourceBundle resourceBundle = ResourceBundle.getBundle("db");
	
	public Connection getConnection() {
		try {
			Class.forName("org.postgresql.Driver");
			String url = "jdbc:postgresql://ec2-54-170-109-0.eu-west-1.compute.amazonaws.com:5432/dc64gsdb5msq26";
			String user = "bgznhzctynergd";
			String password = "3e617c6afb9116b893e305cf4408b302240ab257e5a4d83e518882cc764d5f39";
			return DriverManager.getConnection(url,user,password);
		} catch (ClassNotFoundException e) {
			System.out.println(e);
			return null;
		} catch (SQLException e) {
			System.out.println(e);
			return null;
		}
	}
	
	@Override
	public <T> List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters) {
		List<T> result = new ArrayList<>();
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			connection = getConnection();
			statement = connection.prepareStatement(sql);
			setParameter(statement,parameters);
			resultSet = statement.executeQuery();
			while(resultSet.next()) {
				result.add(rowMapper.mapRow(resultSet));
			}
			return result;
		} catch (SQLException e) {
			// TODO: handle exception
			return null;
		} finally {
			try {
				if(connection!=null) {
					connection.close();
				}
				if(statement!=null) {
					statement.close();
				}
				if(resultSet!=null) {
					resultSet.close();
				}
			} catch (SQLException e2) {
				// TODO: handle exception
				return null;
			}
		}
	}

	private void setParameter(PreparedStatement statement,Object...parameters) {
		try {
			for (int i = 0;i<parameters.length;i++) {
				Object parameter = parameters[i];
				int index = i + 1;
				if(parameter instanceof Long) {
					statement.setLong(index, (Long)parameter);
				} else if(parameter instanceof String) {
					statement.setString(index, (String)parameter);
				} else if(parameter instanceof Integer) {
					statement.setInt(index, (Integer)parameter);
				} else if(parameter instanceof Timestamp) { 
					statement.setTimestamp(index, (Timestamp)parameter);
				} 
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void update(String sql, Object... parameters) {
		Connection connection = null;
		PreparedStatement statement = null;
		try {
			connection = getConnection();
			connection.setAutoCommit(false);
			statement = connection.prepareStatement(sql);
			setParameter(statement, parameters);
			statement.executeUpdate();
			connection.commit();
		} catch (SQLException e) {
			try {
				if(connection!=null) {
					connection.rollback();
				}
			} catch (SQLException e2) {
				// TODO: handle exception
			}
		} finally {
			try {
				if(connection != null) {
					connection.close();
				}
				if(statement != null) {
					statement.close();
				}
			} catch (SQLException e2) {
				// TODO: handle exception
			}
		}
	}

	@Override
	public boolean insert(String sql, Object... parameters) {
		ResultSet resultSet = null;
		Connection connection = null;
		PreparedStatement statement = null;
		try {
			Long id = null;
			connection = getConnection();
			connection.setAutoCommit(false);
			statement = connection.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
			setParameter(statement, parameters);
			statement.executeUpdate();
//			resultSet = statement.getGeneratedKeys();
//			if(resultSet.next()) {
//				id = resultSet.getLong(1);
//			}
			connection.commit();
			return true;
		} catch (SQLException e) {
			try {
				if(connection!=null) {
					connection.rollback();
				}
			} catch (SQLException e2) {
				// TODO: handle exception
			}
			return false;
		} finally {
			try {
				if(connection != null) {
					connection.close();
				}
				if(statement != null) {
					statement.close();
				}
				if(resultSet != null) {
					resultSet.close();
				}
			} catch (SQLException e2) {
				// TODO: handle exception
			}
		}
	}

	@Override
	public int count(String sql, Object... parameter) {
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			int count = 0;
			connection = getConnection();
			statement = connection.prepareStatement(sql);
			setParameter(statement,parameter);
			resultSet = statement.executeQuery();
			if(resultSet.next()) {
				count = resultSet.getInt(1);
			}
			return count;
		} catch (SQLException e) {
			// TODO: handle exception
			return 0;
		} finally {
			try {
				if(connection!=null) {
					connection.close();
				}
				if(statement!=null) {
					statement.close();
				}
				if(resultSet!=null) {
					resultSet.close();
				}
			} catch (SQLException e2) {
				// TODO: handle exception
				return 0;
			}
		}
	}

}
