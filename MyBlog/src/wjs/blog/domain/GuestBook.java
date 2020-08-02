package wjs.blog.domain;

public class GuestBook {
	private int guestid;
	private String guestname;
	private String guestemail;
	private String guestcontent;
	private String sendtime;
	public int getGuestid() {
		return guestid;
	}
	public void setGuestid(int guestid) {
		this.guestid = guestid;
	}
	public String getGuestname() {
		return guestname;
	}
	public void setGuestname(String guestname) {
		this.guestname = guestname;
	}
	public String getGuestemail() {
		return guestemail;
	}
	public void setGuestemail(String guestemail) {
		this.guestemail = guestemail;
	}
	public String getGuestcontent() {
		return guestcontent;
	}
	public void setGuestcontent(String guestcontent) {
		this.guestcontent = guestcontent;
	}
	public String getSendtime() {
		return sendtime;
	}
	public void setSendtime(String sendtime) {
		this.sendtime = sendtime;
	}
	@Override
	public String toString() {
		return "GuestBook [guestid=" + guestid + ", guestname=" + guestname + ", guestemail=" + guestemail
				+ ", guestcontent=" + guestcontent + ", sendtime=" + sendtime + "]";
	}
	
	
	
	
}
