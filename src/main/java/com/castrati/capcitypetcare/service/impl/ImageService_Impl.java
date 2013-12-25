package com.castrati.capcitypetcare.service.impl;

import java.io.File;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.castrati.capcitypetcare.service.ImageService;

@Service("imageService")
@Qualifier("imageService")
public class ImageService_Impl implements ImageService{

	@Value("${image.folder}")
	String imageFolder;

	@Override
	public List getThumbnails() {
		// TODO Auto-generated method stub
		String thumbsFolder = imageFolder + File.separator + "thumbnails";
		File f = new File(thumbsFolder);
		if(f.exists() && f.isDirectory() && f.canRead()){
			return Arrays.asList(f.list());
		}else{
			throw new RuntimeException("Unable to access image folder because it either does not exist, or cannot be read:" + thumbsFolder);
		}
	}
	
	
}
