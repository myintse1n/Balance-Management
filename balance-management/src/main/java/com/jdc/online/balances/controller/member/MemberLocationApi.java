package com.jdc.online.balances.controller.member;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jdc.online.balances.model.entity.District;
import com.jdc.online.balances.model.entity.Region;
import com.jdc.online.balances.services.LocationService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("location/api")
@RequiredArgsConstructor
public class MemberLocationApi {
	
	private final LocationService service;
	
	@GetMapping("region")
	public List<Region> getRegions() {
		return service.getAllRegions();
	}
	
	@GetMapping("district")
	public List<District> selectedDistrictByRegion(@RequestParam int regionId){
		return service.findDistrictsByRegion(regionId);
	}
	
	@GetMapping("district")
	public List<District> selectedTownshipByDistrict(@RequestParam int districtId){
		return service.findDistrictsByRegion(districtId);
	}
	
	
	

}
