package com.cn.service;

import com.cn.entity.Cities;

import java.util.List;

public interface CitiesService {
    List<Cities> queryCities(String temp);
}
