package com.pack.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.Valid;

import org.hibernate.annotations.Cascade;

@Entity
@Table(name = "product")
public class Product implements Serializable {
	
	//private static final long serialVersionUID = -573514507307807945L;

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "productId")
	private int productId;
	
	@Column
	private String nazwa;
	
	@Column
	private String ilosc;
	
	@Column
	private String opis;
	
	@Column
	private int cal;
	
	@OneToOne
    @JoinColumn(name = "categoryId")
	private Category category;
    
	/*@Valid
	@ManyToOne(cascade = {CascadeType.ALL},fetch = FetchType.EAGER)
    @JoinColumn(name="userid")
	private User user;*/
	
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getNazwa() {
		return nazwa;
	}
	public void setNazwa(String nazwa) {
		this.nazwa = nazwa;
	}
	public String getIlosc() {
		return ilosc;
	}
	public void setIlosc(String ilosc) {
		this.ilosc = ilosc;
	}
	public String getOpis() {
		return opis;
	}
	public void setOpis(String opis) {
		this.opis = opis;
	}
	public int getCal() {
		return cal;
	}
	public void setCal(int cal) {
		this.cal = cal;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	/*public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}*/
	
}
