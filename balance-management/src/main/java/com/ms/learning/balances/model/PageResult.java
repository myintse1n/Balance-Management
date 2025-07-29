package com.ms.learning.balances.model;

import java.util.List;

public record PageResult<T> (
		List<T> contents,
		long count,
		int size,
		int page
		){

}
