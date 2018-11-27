package com.cn.dao;


import com.cn.entity.Provinces;

import java.util.List;

public interface ProvincesDao {
    List<Provinces> queryProvinces(Integer temp);
}
