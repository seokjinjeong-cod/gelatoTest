package com.gelato.app.test.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.gelato.app.rwmatr.Rwmatr;
import com.gelato.app.rwmatr.service.RwmatrService;

@RestController
public class TestAjaxController {

	@Autowired RwmatrService rwmatrService;
	
	@RequestMapping("/testAjax/info")
	public List<Rwmatr> info () {
		
		System.out.println("1111");
		System.out.println(rwmatrService.selectAll());
		
		return rwmatrService.selectAll();
	}
}
