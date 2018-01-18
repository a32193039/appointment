package com.dhcc.calendar;

import java.util.ArrayList;
import java.util.List;

public class MonthData {
	private String info;
	private List opentime = new ArrayList();
	private String thedate;
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public List getOpentime() {
		return opentime;
	}
	public void setOpentime(List opentime) {
		this.opentime = opentime;
	}
	public String getThedate() {
		return thedate;
	}
	public void setThedate(String thedate) {
		this.thedate = thedate;
	}
	
	
}
