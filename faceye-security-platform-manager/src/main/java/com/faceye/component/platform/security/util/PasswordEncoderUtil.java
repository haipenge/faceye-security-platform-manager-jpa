package com.faceye.component.platform.security.util;

import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;

public class PasswordEncoderUtil {

	public static String encoder(String password) {
		String res = "";
		PasswordEncoder passwordEncoder=PasswordEncoderFactories.createDelegatingPasswordEncoder();
//		Md5PasswordEncoder passwordEncoder = new Md5PasswordEncoder();
		res=passwordEncoder.encode(password);
//		passwordEncoder.setEncodeHashAsBase64(false);
//		res = passwordEncoder.encodePassword(password, salt);
		return res;
	}
	public static void main(String asrg[]) throws Exception{
		System.out.println(PasswordEncoderUtil.encoder("admin"));
	}
	
}
