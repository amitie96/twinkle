package com.mysite.banjjak.model;

public class Crochet {

	private int croId;
	private String croTitle;
	private String croContent;
	private String croDate;
	private String croRate;
	
	private String userId;
	private String nickname;
	
	private String croFilename;
	private String croUuid;
	public int getCroId() {
		return croId;
	}
	public void setCroId(int croId) {
		this.croId = croId;
	}
	public String getCroTitle() {
		return croTitle;
	}
	public void setCroTitle(String croTitle) {
		this.croTitle = croTitle;
	}
	public String getCroContent() {
		return croContent;
	}
	public void setCroContent(String croContent) {
		this.croContent = croContent;
	}
	public String getCroDate() {
		return croDate;
	}
	public void setCroDate(String croDate) {
		this.croDate = croDate;
	}
	public String getCroRate() {
		return croRate;
	}
	public void setCroRate(String croRate) {
		this.croRate = croRate;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getCroFilename() {
		return croFilename;
	}
	public void setCroFilename(String croFilename) {
		this.croFilename = croFilename;
	}
	public String getCroUuid() {
		return croUuid;
	}
	public void setCroUuid(String croUuid) {
		this.croUuid = croUuid;
	}
	
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
}
