package com.cn.impl;

import com.cn.dao.CitiesDao;
import com.cn.entity.Cities;
import com.cn.service.CitiesService;
import com.cn.until.DbContextHolder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CitiesServiceImpl implements CitiesService {
    @Autowired
    private CitiesDao citiesDao;

    @Override
    public List<Cities> queryCities(String temp){
        DbContextHolder.setDbType("dateSource_first");
        return citiesDao.queryCities(temp);
    }

}
