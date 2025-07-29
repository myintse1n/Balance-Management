package com.ms.learning.balances.model.entity.consts;

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
