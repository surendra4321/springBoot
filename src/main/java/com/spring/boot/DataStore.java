package com.spring.boot;

import java.util.ArrayList;
import java.util.List;

public class DataStore {

	static private List<SignupDTO> signupDTOs=new ArrayList<SignupDTO>();

	public static List<SignupDTO> getSignupDTOs() {
		return signupDTOs;
	}

}
