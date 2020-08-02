package wjs.blog.domain;

public class Saying {
	private int sid;
	private String img;
	private String saycontent;
	private String saytime;
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getSaycontent() {
		return saycontent;
	}
	public void setSaycontent(String saycontent) {
		this.saycontent = saycontent;
	}
	public String getSaytime() {
		return saytime;
	}
	public void setSaytime(String saytime) {
		this.saytime = saytime;
	}
	@Override
	public String toString() {
		return "Saying [sid=" + sid + ", img=" + img + ", saycontent=" + saycontent + ", saytime=" + saytime + "]";
	}
	
	
}
