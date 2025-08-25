package com.jdc.online.balances.utils.formatter;

import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;


public class AppDateTimeFormatter {

	private final static DateTimeFormatter DTF = DateTimeFormatter.ofPattern("yyyy:MM:dd HH:mm:ss");
	private final static DateTimeFormatter DTF_SHORT = DateTimeFormatter.ofPattern("yyyy:MM:dd HH:mm");
	
	public static String format(Instant instant) {
		var dateTime = LocalDateTime.ofInstant(instant, ZoneId.systemDefault());
		return dateTime.format(DTF);
	}
	
	public static String format(LocalDateTime dateTime) {
		return dateTime.format(DTF);
	}
	
	public static String formatShort(LocalDateTime dateTime) {
	    return dateTime.format(DTF_SHORT);
	}

	public static String formatShort(Instant instant) {
	    var dateTime = LocalDateTime.ofInstant(instant, ZoneId.systemDefault());
	    return dateTime.format(DTF_SHORT);
	}

}
