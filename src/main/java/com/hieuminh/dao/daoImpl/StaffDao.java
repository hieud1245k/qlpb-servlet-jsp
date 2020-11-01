package com.hieuminh.dao.daoImpl;

import java.util.List;

import com.hieuminh.dao.IStaffDao;
import com.hieuminh.mapper.StaffMapper;
import com.hieuminh.model.StaffModel;

public class StaffDao extends AbstractDao<StaffModel> implements IStaffDao {
	
	@Override
	public List<StaffModel> findAll() {
		StringBuilder sql = new StringBuilder("SELECT * FROM nhanvien");
		return query(sql.toString(), new StaffMapper());
	}
	
	@Override
	public List<StaffModel> findById(String idPB) {
		StringBuilder sql = new StringBuilder("SELECT * FROM nhanvien WHERE IDPB=?");
		return query(sql.toString(), new StaffMapper(), idPB);
	}

	@Override
	public StaffModel findOne(String idNV) {
		StringBuilder sql = new StringBuilder("SELECT * FROM nhanvien WHERE IDNV=?");
		List<StaffModel> list = query(sql.toString(), new StaffMapper(), idNV);
		return list.isEmpty()?null:list.get(0);
	}

	@Override
	public boolean save(StaffModel model) {
		try {
			StringBuilder sql = new StringBuilder("INSERT INTO nhanvien (IDNV, Hoten, IDPB, Diachi) "); 
			sql.append("VALUES (?, ?, ?, ?);");
		return insert(sql.toString(), model.getId(),model.getFullName(),model.getIdPB(),model.getAddress());
		} catch (Exception e) {
			System.out.println(e);
			return false;
		}
	}

	@Override
	public void delete(String id) {
		String sql = "DELETE FROM nhanvien WHERE IDNV = ?";
		update(sql, id);
	}

	@Override
	public void update(StaffModel model) {
		StringBuilder sql = new StringBuilder("UPDATE nhanvien SET Hoten=?, IDPB=?,Diachi=? WHERE IDNV=?"); 
		update(sql.toString(), model.getFullName(), model.getIdPB(), model.getAddress(), model.getId());
	}
	
	

}
