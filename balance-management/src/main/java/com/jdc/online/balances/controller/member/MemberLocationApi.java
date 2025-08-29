package com.jdc.online.balances.controller.member;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.jdc.online.balances.model.entity.District;
import com.jdc.online.balances.model.entity.Township;
import com.jdc.online.balances.services.LocationService;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("member/location/api")
@RequiredArgsConstructor
public class MemberLocationApi {
	
	private final LocationService service;
	
	@GetMapping("district")
	public List<District> getDistrictsByRegion(@RequestParam int regionId){
		return service.findDistrictsByRegion(regionId);
	}
	
	@GetMapping("township")
	public List<Township> getTownshipsByDistrict(@RequestParam int districtId){
		return service.findTownshipByDistrict(districtId);
	}
	
	
	

}
