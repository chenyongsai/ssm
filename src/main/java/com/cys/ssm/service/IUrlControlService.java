package com.cys.ssm.service;

import java.util.List;

import com.cys.ssm.model.UrlControl;

public interface IUrlControlService {

	public List<UrlControl> getList(UrlControl urlControl);
	
	public UrlControl get(int id);

	public void add(UrlControl urlControl);

	public void update(UrlControl urlControl);
	
	public void delete(int id);
}
