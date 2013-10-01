package com.castrati.capcitypetcare.beans;

import java.util.Map;

public class Gallery {
	Map<String,String> imageList;

	public Map<String, String> getScrollingImages() {
		return imageList;
	}

	public void setScrollingImages(Map<String, String> imageList) {
		this.imageList = imageList;
	}
	
	
}
