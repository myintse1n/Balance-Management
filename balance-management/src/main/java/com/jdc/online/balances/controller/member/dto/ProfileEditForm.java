package com.jdc.online.balances.controller.member.dto;

import java.time.LocalDate;
import java.util.Optional;

import com.jdc.online.balances.model.entity.District;
import com.jdc.online.balances.model.entity.Member;
import com.jdc.online.balances.model.entity.Region;
import com.jdc.online.balances.model.entity.Township;
import com.jdc.online.balances.model.entity.consts.Gender;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class ProfileEditForm {
	@NotBlank(message = "Please enter name")
	private String name;
	@NotNull(message = "Please select gender.")
	private Gender gender;
	@NotNull(message = "Please select date of birth.")
	private LocalDate dateOfBirth;
	@NotBlank(message = "Please enter phone number.")
	private String phone;
	@NotNull(message = "Please enter mail address.")
	private String mail;
	@NotNull(message = "Please select region.")
	private Integer region;
	@NotNull(message = "Please select district.")
	private Integer district;
	@NotNull(message = "Please select township.")
	private Integer township;
	@NotBlank(message = "Please enter address.")
	private String address;
	
	private String profileImage;
	
	public static ProfileEditForm from(Member member) {
		return ProfileEditForm.builder()
				.name(member.getName())
				.gender(member.getGender())
				.dateOfBirth(member.getDob())
				.phone(member.getPhone())
				.mail(member.getEmail())
				.region(Optional.ofNullable(member.getTownship())
						.map(Township::getDistrict)
						.map(District::getRegion)
						.map(Region::getId)
						.orElse(null))
				.district(Optional.ofNullable(member.getTownship())
						.map(Township::getDistrict)
						.map(District::getId)
						.orElse(null))
				.township(Optional.ofNullable(member.getTownship())
						.map(Township::getId)
						.orElse(null))
				.address(member.getAddress())
				.profileImage(Optional.ofNullable(member.getProfileImage())
						.orElse("defual-profile.png"))
				.build();
	}

}
