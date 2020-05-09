package egovframework.example.sample.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import egovframework.example.sample.service.impl.SampleDAO;
import egovframework.rte.psl.dataaccess.util.EgovMap;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller

public class mainController {
	@Resource(name = "sampleDAO")
	private SampleDAO sampleDAO;
	@Resource(name= "multipartResolver")
	CommonsMultipartResolver multipartResolver;

	@RequestMapping(value="/main/main.do")
	public String main(HttpServletRequest request, ModelMap model) throws Exception
	{
		String nums = ""+request.getParameter("nums");
		EgovMap in =new EgovMap();
		in.put("nums", nums);
		System.out.println(nums);
		model.addAttribute("item",  sampleDAO.select("todayitem",in)  );
		System.out.println("dodo");
		return "/main/main";
	}
	
	@RequestMapping(value="/main/burger.do")
	public String burger(HttpServletRequest request, ModelMap model) throws Exception
	{
		String nums = ""+request.getParameter("nums");
		EgovMap in =new EgovMap();
		in.put("nums", nums);
		System.out.println(nums);
		model.addAttribute("item",  sampleDAO.select("todayitem",in)  );
		System.out.println("dodo");
		return "/main/burger";
	}
	
	
	@RequestMapping(value = "/main/sale.do")
	public String sale(HttpServletRequest request, ModelMap model) throws Exception {
		//페이징
		PaginationInfo paginationInfo = new PaginationInfo();
		if (request.getParameter("pageIndex") == null) {
			paginationInfo.setCurrentPageNo(1);
		} else {
			paginationInfo.setCurrentPageNo(Integer.parseInt("" + request.getParameter("pageIndex")));
		}
		paginationInfo.setRecordCountPerPage(10);
		paginationInfo.setPageSize(7);

		String search = ""+request.getParameter("search");
		String ch = ""+request.getParameter("ch");
		//인자생성
		EgovMap in = new EgovMap();
		in.put("search", search);
		in.put("ch", ch);
		System.out.println(search);
		in.put("firstindex", "" + paginationInfo.getFirstRecordIndex());
		in.put("recordperpage", "" + paginationInfo.getRecordCountPerPage());
		List<?> list = (List<?>) sampleDAO.list("salelistt", in);
		model.addAttribute("resultList", list);
		EgovMap count = (EgovMap) sampleDAO.select("salelistl",in);
		String total = "" + count.get("num");
		paginationInfo.setTotalRecordCount(Integer.parseInt(total));
		model.addAttribute("paginationInfo", paginationInfo);
		return "/main/sale";
	}
	
	
	
	@RequestMapping(value="/main/saledetail.do")
	public String saledetail(HttpServletRequest request, ModelMap model) throws Exception
	{
		String idx = ""+request.getParameter("idx");
		EgovMap in =new EgovMap();
		in.put("idx", idx);
		model.addAttribute("item",  sampleDAO.select("adsaledetail",in)  );

		return "/main/saledetail";
	}
	
	@RequestMapping(value="/main/salegood.do")
	public String salegood(HttpServletRequest request, ModelMap model) throws Exception
	{
		String idx = ""+request.getParameter("idx");
		EgovMap in =new EgovMap();
		in.put("idx", idx);
		sampleDAO.update("salegood", in );//DB에 질의 해서

		return "redirect:/main/saledetail.do?idx="+idx;
	}
	
	@RequestMapping(value="/main/salebad.do")
	public String salebad(HttpServletRequest request, ModelMap model) throws Exception
	{
		String idx = ""+request.getParameter("idx");
		EgovMap in =new EgovMap();
		in.put("idx", idx);
		sampleDAO.update("salebad", in );//DB에 질의 해서

		return "redirect:/main/saledetail.do?idx="+idx;
	}
	
	@RequestMapping(value="/main/burgergood.do")
	public String burgergood(HttpServletRequest request, ModelMap model) throws Exception
	{
		String idx = ""+request.getParameter("idx");
		EgovMap in =new EgovMap();
		in.put("idx", idx);
		sampleDAO.update("burgergood", in );//DB에 질의 해서

		return "redirect:/main/main.do?nums="+idx;
	}
	@RequestMapping(value="/main/bburgergood.do")
	public String bburgergood(HttpServletRequest request, ModelMap model) throws Exception
	{
		String idx = ""+request.getParameter("idx");
		EgovMap in =new EgovMap();
		in.put("idx", idx);
		sampleDAO.update("burgergood", in );//DB에 질의 해서

		return "redirect:/main/burger.do?nums="+idx;
	}
	

	
	@RequestMapping(value = "/main/all.do")
	public String all(HttpServletRequest request, ModelMap model) throws Exception {
		//페이징
		PaginationInfo paginationInfo = new PaginationInfo();
		if (request.getParameter("pageIndex") == null) {
			paginationInfo.setCurrentPageNo(1);
		} else {
			paginationInfo.setCurrentPageNo(Integer.parseInt("" + request.getParameter("pageIndex")));
		}
		paginationInfo.setRecordCountPerPage(9);
		paginationInfo.setPageSize(7);

		//인자생성
		EgovMap in = new EgovMap();
		in.put("firstindex", "" + paginationInfo.getFirstRecordIndex());
		in.put("recordperpage", "" + paginationInfo.getRecordCountPerPage());
		List<?> list = (List<?>) sampleDAO.list("allt", in);
		model.addAttribute("resultList", list);
		EgovMap count = (EgovMap) sampleDAO.select("alll",in);
		String total = "" + count.get("num");
		paginationInfo.setTotalRecordCount(Integer.parseInt(total));
		model.addAttribute("paginationInfo", paginationInfo);
		return "/main/all";
	}
	
	@RequestMapping(value = "/frame/top.do")
	public String top(HttpServletRequest request, ModelMap model) throws Exception {
		System.out.println("/frame/top.do");
		
		
		return "frame/top";
	}
	

	
}
