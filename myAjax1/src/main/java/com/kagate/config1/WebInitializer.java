package com.kagate.config1;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class WebInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return new Class[] { Webconfig.class };
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		Class<?>[] classes = new Class<?>[] { Webconfig.class };
		return classes;
	}

	@Override
	protected String[] getServletMappings() {
		// TODO Auto-generated method stub
		return new String[] { "/" };
	}

}
