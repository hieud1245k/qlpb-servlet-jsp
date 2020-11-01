package com.hieuminh.dao.daoImpl;

import java.util.List;

import com.hieuminh.dao.IDepartmentDao;
import com.hieuminh.mapper.DepartmentMapper;
import com.hieuminh.model.DepartmentModel;

public class DepartmentDao extends AbstractDao<DepartmentModel> implements IDepartmentDao {

	@Override
	public List<DepartmentModel> findAll() {
		StringBuilder sql = new StringBuilder("SELECT * FROM phongban");
		return query(sql.toString(), new DepartmentMapper());
	}

	@Override
	public boolean save(DepartmentModel model) {
		StringBuilder sql = new StringBuilder("INSERT INTO phongban (IDPB, Tenph, Mota) ");
		sql.append("VALUES (?,?,?);");
		return insert(sql.toString(), model.getId(),model.getName(), model.getDescription());
	}

	@Override
	public DepartmentModel findOne(String id) {
		StringBuilder sql = new StringBuilder("SELECT * FROM phongban WHERE IDPB = ?");
		List<DepartmentModel> list = query(sql.toString(), new DepartmentMapper(), id);
		return list.isEmpty()?null:list.get(0);
	}

	@Override
	public void update(DepartmentModel model) {
		StringBuilder sql = new StringBuilder("UPDATE phongban SET Tenph=?, Mota=? WHERE IDPB=?");
		update(sql.toString(), model.getName(), model.getDescription(), model.getId());
	}
	
}
