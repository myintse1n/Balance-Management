package com.jdc.online.balances.controller.member.dto;

import java.time.LocalDateTime;
import java.util.Optional;

import org.springframework.util.StringUtils;

import com.jdc.online.balances.model.entity.District;
import com.jdc.online.balances.model.entity.Member;
import com.jdc.online.balances.model.entity.Township;

public record MemberProfileDetails(
		long id,
		String name,
		String phone,
		String mail,
		String address,
		LocalDateTime registeredAt,
		LocalDateTime lastAccess
		) {
	
	public static MemberProfileDetails from(Member member) {
		
		var builder = new MemberProfileDetails.Builder();
		
		var address = String.join(", ",
		        java.util.stream.Stream.of(
		        		Optional.ofNullable(member.getAddress()).orElse(null),
		        		Optional.ofNullable(member.getTownship())
		        		.map(Township::getName).orElse(null),
		        		Optional.ofNullable(member.getTownship())
		        		.map(Township::getDistrict)
		        		.map(District::getName).orElse(null))
	            .filter(StringUtils::hasText) // keep only non-empty
	            .toList()
	    );
		
		return builder
				.id(member.getId())
				.name(member.getName())
				.phone(member.getPhone())
				.mail(member.getEmail())
				.address(address)
				.build();
	}
	
	public static class Builder {
		private long id;
		private String name;
		private String phone;
		private String mail;
		private String address;
		private LocalDateTime registeredAt;
		private LocalDateTime lastAccess;
		
		public Builder id(long id) {
			this.id = id;
			return this;
		}
		
		public Builder name(String name) {
			this.name = name;
			return this;
		}
		
		public Builder phone(String phone) {
			this.phone = phone;
			return this;
		}
		
		public Builder mail(String mail) {
			this.mail = mail;
			return this;
		}
		
		public Builder address(String address) {
			this.address = address;
			return this;
		}
		
		public Builder registeredAt(LocalDateTime registeredAt) {
			this.registeredAt = registeredAt;
			return this;
		}
		
		public Builder lastAccess(LocalDateTime lastAccess) {
			this.lastAccess = lastAccess;
			return this;
		}
		
		public MemberProfileDetails build() {
			return new MemberProfileDetails(id, name, phone, mail, address, registeredAt, lastAccess);
		}
	}

}
