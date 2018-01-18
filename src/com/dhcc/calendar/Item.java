package com.dhcc.calendar;

import java.util.ArrayList;
import java.util.List;

public class Item {
	private String themonth;
	//private String theyear;
//	private String maxDate;
//	private String nowdate;
//	private String showdate;
	private List item = new ArrayList();
	
	public List getItem() {
		return item;
	}
	public void setItem(List item) {
		this.item = item;
	}
	public String getThemonth() {
		return themonth;
	}
	public void setThemonth(String themonth) {
		this.themonth = themonth;
	}

	
	
}
