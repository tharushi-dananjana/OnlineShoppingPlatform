package com.eshopper.model;

public class Product {

	private int id;
    private String title;
    private double price;
    private String fileName;
    
	public int getId() {
		return id;
	}
	public String getTitle() {
		return title;
	}
	public double getPrice() {
		return price;
	}
	public String getFileName() {
		return fileName;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
}
