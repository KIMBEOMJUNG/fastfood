package egovframework.example.sample.web;

import javax.servlet.ServletContext;

import org.springframework.web.context.ServletContextAware;

import egovframework.rte.ptl.mvc.tags.ui.pagination.AbstractPaginationRenderer;

public class customPagination extends AbstractPaginationRenderer implements ServletContextAware{

	private ServletContext servletContext;
	
	private void customPagination() {
		firstPageLabel = "<li class=\"prev disabled\"><a href=\"#\" onclick=\"{0}({1}); return false;\">처음으로</a></li>";
		previousPageLabel = "<li class=\"prev disabled\"><a href=\"#\" onclick=\"{0}({1}); return false;\">이전</a></li>";
		currentPageLabel = "<li class=\"active\"><a href=\"#\">{0}</a></li>";
		otherPageLabel = "<li><a href=\"#\" onclick=\"{0}({1}); return false;\">{2}</a></li>";
		nextPageLabel = "<li class=\"next\"><a href=\"#\" onclick=\"{0}({1}); return false;\">다음</a></li>";
		lastPageLabel = "<li class=\"next\"><a href=\"#\" onclick=\"{0}({1}); return false;\">마지막</a></li>";
	}

	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
		customPagination();
	}

	
}
