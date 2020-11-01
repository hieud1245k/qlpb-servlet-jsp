package com.hieuminh.dao;

import java.util.List;

import com.hieuminh.mapper.RowMapper;

public interface GenericDao<T> {
	<T> List<T> query(String sql,RowMapper<T> rowMapper,Object...parameter);
	void update(String sql, Object...parameter);
	boolean insert(String sql, Object...parameter);
	int count(String sql, Object...parameter);
}
