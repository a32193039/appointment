package com.dhcc.calendar;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class Opentime {
	private String fid;
	private String fname;
	private String myrowid;
	private String operatedate;
	private String upflag;
	public String getFid() {
		return fid;
	}
	public void setFid(String fid) {
		this.fid = fid;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getMyrowid() {
		return myrowid;
	}
	public void setMyrowid(String myrowid) {
		this.myrowid = myrowid;
	}
	public String getOperatedate() {
		return operatedate;
	}
	public void setOperatedate(String operatedate) {
		this.operatedate = operatedate;
	}
	public String getUpflag() {
		return upflag;
	}
	public void setUpflag(String upflag) {
		this.upflag = upflag;
	}
	
	
	public static void main(String[] args) {
		//{"fid":"5","fname":"10:00-10:30","myrowid":"7C56270AADF546CDAB8E44E885ED1483","operatedate":1243872000000,"upflag":"0"}
		//{"item":[{"item":[{"info":"1","openTime":[],"thedate":"28"}],"themonth":"02"}],"theyear":"2018"}
		List list = new ArrayList();
		//item封装
		Item item = new Item();
		//data封装
		Data data = new Data();
		List fid = new ArrayList();
		
		MonthData m = new MonthData();
		m.setInfo("1");
		m.setOpentime(new ArrayList());
		m.setThedate("18");
		fid.add(m);
		item.setItem(fid);
		item.setThemonth("03");
		list.add(item);
		
		List itemlist = new ArrayList();
		
		data.setData(list);
		data.setTheyear("2018");
		itemlist.add(data);
		itemlist.add(data);
		//最外层
		ListData listdata = new ListData();
		listdata.setList(itemlist);
		listdata.setMaxDate("2018-3-31");
		listdata.setNowdate("2018-1-12");
		listdata.setShowdate("");
		JSONArray json = JSONArray.fromObject(listdata);
		System.out.println(json);
	}
}
