package basic.web.app;

import java.io.*;
import java.util.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class LottoTag extends SimpleTagSupport {

	private String id;
	private int digits = 8;
	private static Random rdm = new Random();

	public void setId(String name) { id = name; }

	public void setDigits(int value) { digits = value; }

	public void doTag() throws JspException, IOException {
		JspContext context = getJspContext();
		JspFragment body = getJspBody();
		for(int i = 0; i < digits; ++i) {
			int digit = rdm.nextInt(10);
			context.setAttribute(id, digit);
			body.invoke(null);
		}
	}
}

