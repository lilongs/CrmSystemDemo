package com.cn.dao;

import com.cn.entity.Cities;


import java.util.List;

public interface CitiesDao {
    List<Cities> queryCities(String temp);
}
