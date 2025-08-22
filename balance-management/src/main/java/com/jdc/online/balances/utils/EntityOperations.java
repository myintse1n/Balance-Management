package com.jdc.online.balances.utils;

import java.util.Optional;

import com.jdc.online.balances.utils.exceptions.AppBusinessException;

public class EntityOperations {

	public static <T,ID> T safeCall(Optional<T> optional,String resourceName, String keyName, ID keyvalue){
		return optional
				.orElseThrow(()-> new  AppBusinessException("Thres is no %s with %s : %s"
						.formatted(resourceName, keyName, keyvalue)));
		
	}
}
