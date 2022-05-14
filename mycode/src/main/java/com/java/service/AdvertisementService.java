package com.java.service;

import com.java.entity.Advertisement;
import com.java.util.ReturnData;
import com.java.util.ReturnDataForLayui;

/**
 * 轮播图service接口
 */
public interface AdvertisementService {
    ReturnDataForLayui getList(Advertisement advertisement);
    ReturnData add(Advertisement advertisement);
    ReturnData delete(Advertisement advertisement);
    ReturnData update(Advertisement advertisement);
    ReturnData updateState(Advertisement advertisement);
}
