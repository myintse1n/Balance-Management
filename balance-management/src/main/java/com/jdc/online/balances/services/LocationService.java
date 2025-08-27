package com.jdc.online.balances.services;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jdc.online.balances.model.entity.District;
import com.jdc.online.balances.model.entity.Region;
import com.jdc.online.balances.model.entity.Township;
import com.jdc.online.balances.model.repo.DistrictRepo;
import com.jdc.online.balances.model.repo.RegionRepo;
import com.jdc.online.balances.model.repo.TownshipRepo;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class LocationService {
	
	private final TownshipRepo townshipRepo;
	private final DistrictRepo districtRepo;
	private final RegionRepo regionRepo;
	
	public List<Region> getAllRegions() {
		return regionRepo.findAll();
	}
	
	public List<District> findDistrictsByRegion(int regionId){
		return districtRepo.findDistrictByRegionId(regionId);
	}
	
	public List<Township> findTownshipByDistrict(int townshipId){
		return townshipRepo.findTownshipByDistrictId(townshipId);
	}
	
	

}
