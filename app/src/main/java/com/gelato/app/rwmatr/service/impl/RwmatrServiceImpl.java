package com.gelato.app.rwmatr.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gelato.app.rwmatr.Rwmatr;
import com.gelato.app.rwmatr.dao.RwmatrMapper;
import com.gelato.app.rwmatr.service.RwmatrService;

@Service
public class RwmatrServiceImpl implements RwmatrService {

	@Autowired RwmatrMapper mapper;

	@Override
	public List<Rwmatr> selectAll() {
		return mapper.selectAll();
	}
}
