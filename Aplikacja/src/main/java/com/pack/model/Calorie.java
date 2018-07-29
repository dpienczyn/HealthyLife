package com.pack.model;

public class Calorie {

	private double bialko;
	private double wb;
	private double ww;
	private double wt;
	private double weglowodany;
	private double tluszcz;
	private double mililitry;
	private double gram;
	private String rodzaj;
	
	public double getBialko() {
		return bialko;
	}
	public void setBialko(double bialko) {
		this.bialko = bialko;
	}
	public double getWeglowodany() {
		return weglowodany;
	}
	public void setWeglowodany(double weglowodany) {
		this.weglowodany = weglowodany;
	}
	public double getTluszcz() {
		return tluszcz;
	}
	public void setTluszcz(double tluszcz) {
		this.tluszcz = tluszcz;
	}
	public double getMililitry() {
		return mililitry;
	}
	public void setMililitry(double mililitry) {
		this.mililitry = mililitry;
	}
	public double getGram() {
		return gram;
	}
	public void setGram(double gram) {
		this.gram = gram;
	}
	
	public String getRodzaj() {
		return rodzaj;
	}
	public double getWb() {
		return wb;
	}
	public void setWb(double wb) {
		this.wb = wb;
	}
	public double getWw() {
		return ww;
	}
	public void setWw(double ww) {
		this.ww = ww;
	}
	public double getWt() {
		return wt;
	}
	public void setWt(double wt) {
		this.wt = wt;
	}
	public void setRodzaj(String rodzaj) {
		this.rodzaj = rodzaj;
	}
	public double resultBialko(){
		double addBialko = (bialko/100)*wb;
		return addBialko;
	}
	public double resultWeg(){
		double addWeg = (weglowodany/100)*ww;
		return addWeg;
	}
	public double resultTluszcz(){
		double addTluszcz = (tluszcz/100)*wt;
		return addTluszcz;
	}
}
