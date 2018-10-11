package com.cys.ssm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cys.ssm.dao.IUrlControlDao;
import com.cys.ssm.model.UrlControl;
import com.cys.ssm.service.IUrlControlService;

@Service("urlControlService")
public class UrlControlServiceImpl implements IUrlControlService {
	
	@Resource    
    private IUrlControlDao urlControlDao;

	public List<UrlControl> getList(UrlControl urlControl) {
		return urlControlDao.queryList(urlControl);
	}

	public UrlControl get(int id) {
		return urlControlDao.queryById(id);
	}

	public void add(UrlControl urlControl) {
		urlControlDao.insert(urlControl);
	}

	public void update(UrlControl urlControl) {
		urlControlDao.updateById(urlControl);
	}

	public void delete(int id) {
		urlControlDao.deleteById(id);
	}    

}
