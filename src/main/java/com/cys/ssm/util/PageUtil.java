package com.cys.ssm.util;

import org.springframework.ui.Model;

import com.github.pagehelper.Page;

public class PageUtil {

	public static void setPage(Model model, Page p) {
		model.addAttribute("pageNum",p.getPageNum());
	    model.addAttribute("pageTotal",p.getTotal());
	    model.addAttribute("pages", p.getPages());
	}

}
