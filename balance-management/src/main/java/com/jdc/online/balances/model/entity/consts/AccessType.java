package com.jdc.online.balances.model.entity.consts;

public enum AccessType {
	Login, Logout, Singup{
		@Override
		public String dispalyName() {
			return "Sign Up";
		}
	}, Timeout;
	
	public String dispalyName() {
		return this.name();
	}
}
