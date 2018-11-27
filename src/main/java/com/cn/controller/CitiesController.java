package com.cn.controller;

import com.cn.entity.Cities;
import com.cn.entity.Provinces;
import com.cn.service.CitiesService;
import com.cn.service.ProvincesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/city")
public class CitiesController {
    @Autowired
    private CitiesService citiesService;
    @Autowired
    private ProvincesService provincesService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    private Map<String, Object> listCities(String temp){
        Map<String, Object> modelMap = new LinkedHashMap<String, Object>();
        List<Cities> list = citiesService.queryCities(temp);
        List<Provinces> list1=provincesService.queryProvinces(Integer.valueOf(temp));
        modelMap.put("id",list1.get(0).getId());
        modelMap.put("name",list1.get(0).getName());
        modelMap.put("children",list);
        return  modelMap;
    }
}
