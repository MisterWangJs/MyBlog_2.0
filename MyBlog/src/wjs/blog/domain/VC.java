package wjs.blog.domain;

public class VC {
	private int vid;
	private int vcount;
	public int getVid() {
		return vid;
	}
	public void setVid(int vid) {
		this.vid = vid;
	}
	public int getVcount() {
		return vcount;
	}
	public void setVcount(int vcount) {
		this.vcount = vcount;
	}
	@Override
	public String toString() {
		return "VC [vid=" + vid + ", vcount=" + vcount + "]";
	}
	
	
}
