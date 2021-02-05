package com.myhouse.vo;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class goodsVO {

	String gno,ino,goods_image,goods_simage,goods_name,goods_price,savepath;
	
	CommonsMultipartFile gfile1, gfile2, gfile3, gfile4, gfile5;

	
	
	public String getGno() {
		return gno;
	}

	public void setGno(String gno) {
		this.gno = gno;
	}

	public String getIno() {
		return ino;
	}

	public void setIno(String ino) {
		this.ino = ino;
	}

	public String getGoods_image() {
		return goods_image;
	}

	public void setGoods_image(String goods_image) {
		this.goods_image = goods_image;
	}

	public String getGoods_simage() {
		return goods_simage;
	}

	public void setGoods_simage(String goods_simage) {
		this.goods_simage = goods_simage;
	}

	public String getGoods_name() {
		return goods_name;
	}

	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}

	public String getGoods_price() {
		return goods_price;
	}

	public void setGoods_price(String goods_price) {
		this.goods_price = goods_price;
	}

	public String getSavepath() {
		return savepath;
	}

	public void setSavepath(String savepath) {
		this.savepath = savepath;
	}

	public CommonsMultipartFile getGfile1() {
		return gfile1;
	}

	public void setFile1(CommonsMultipartFile file1) {
		this.gfile1 = file1;
	}

	public CommonsMultipartFile getGfile2() {
		return gfile2;
	}

	public void setGfile2(CommonsMultipartFile gfile2) {
		this.gfile2 = gfile2;
	}

	public CommonsMultipartFile getGfile3() {
		return gfile3;
	}

	public void setGfile3(CommonsMultipartFile gfile3) {
		this.gfile3 = gfile3;
	}

	public CommonsMultipartFile getGfile4() {
		return gfile4;
	}

	public void setGfile4(CommonsMultipartFile gfile4) {
		this.gfile4 = gfile4;
	}

	public CommonsMultipartFile getGfile5() {
		return gfile5;
	}

	public void setGfile5(CommonsMultipartFile gfile5) {
		this.gfile5 = gfile5;
	}

	public void setGfile1(CommonsMultipartFile gfile1) {
		this.gfile1 = gfile1;
	}
	
}
