package com.cn.impl;


import com.cn.dao.CitiesDao;
import com.cn.dao.ProvincesDao;
import com.cn.entity.Provinces;
import com.cn.service.ProvincesService;
import com.cn.until.DbContextHolder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ProvincesServiceImpl implements ProvincesService {
    @Autowired
    private ProvincesDao provincesDao;

    @Override
    public List<Provinces> queryProvinces(Integer temp){
        DbContextHolder.setDbType("dateSource_first");
        return provincesDao.queryProvinces(temp);
    }
}
