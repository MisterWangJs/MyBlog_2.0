package wjs.blog.domain;

public class Ip {
	private int ipid;
	private String ip;
	private int count;
	public int getIpid() {
		return ipid;
	}
	public void setIpid(int ipid) {
		this.ipid = ipid;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	@Override
	public String toString() {
		return "Ip [ipid=" + ipid + ", ip=" + ip + ", count=" + count + "]";
	}
	
	
}
