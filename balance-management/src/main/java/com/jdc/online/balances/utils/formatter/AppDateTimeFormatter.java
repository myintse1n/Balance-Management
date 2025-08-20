package com.jdc.online.balances.utils.formatter;

import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
;
public class AppDateTimeFormatter {

	private final static DateTimeFormatter DTF = DateTimeFormatter.ofPattern("yyyy:MM:dd HH:mm:ss");
	
	public static String format(Instant instant) {
		var dateTime = LocalDateTime.ofInstant(instant, ZoneId.systemDefault());
		return dateTime.format(DTF);
	}
}
