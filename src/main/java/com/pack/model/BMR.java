package com.pack.model;

import javax.persistence.Column;

public class BMR {

	private Sex sex;
	private double wiek;
	private double waga;
	private double wzrost;
	
	public Sex getSex() {
		return sex;
	}
	public void setSex(Sex sex) {
		this.sex = sex;
	}
	public enum Sex {M, F};
	
	public double getWiek() {
		return wiek;
	}
	public void setWiek(double wiek) {
		this.wiek = wiek;
	}
	public double getWaga() {
		return waga;
	}
	public void setWaga(double waga) {
		this.waga = waga;
	}
	public double getWzrost() {
		return wzrost;
	}
	public void setWzrost(double wzrost) {
		this.wzrost = wzrost;
	}
	@Column(precision = 5, scale = 2)
	public double wagaKobieta(){
		double wagak = 665+(9.6*waga)+(1.8*wzrost)-(4.7*wiek);
		wagak=Math.round(wagak);
		return wagak;
	}
	@Column(precision = 5, scale = 2)
	public double wagaMezczyzna(){
		double wagam = 66+(13.7*waga)+(5*wzrost)-(6.76*wiek);
		wagam=Math.round(wagam);
		return wagam;
	}
}
