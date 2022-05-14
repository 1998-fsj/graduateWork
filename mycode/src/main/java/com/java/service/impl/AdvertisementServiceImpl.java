package com.java.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.java.entity.Advertisement;
import com.java.mapper.AdvertisementMapper;
import com.java.service.AdvertisementService;
import com.java.util.ReturnData;
import com.java.util.ReturnDataForLayui;
import com.java.util.UpdateOrInsertResultDeal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class AdvertisementServiceImpl implements AdvertisementService {
    @Autowired
    private AdvertisementMapper advertisementMapper;

    @Transactional(propagation = Propagation.REQUIRED,readOnly = true)
    @Override
    public ReturnDataForLayui getList(Advertisement advertisement) {
        PageHelper.startPage(advertisement.getPage(),advertisement.getLimit());
        List<Advertisement> list = advertisementMapper.getList(advertisement);
        PageInfo<Advertisement> info = new PageInfo<>(list);
        return ReturnDataForLayui.success(list,info.getTotal());
    }

    @Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
    @Override
    public ReturnData add(Advertisement advertisement) {
        int i = advertisementMapper.add(advertisement);
        return UpdateOrInsertResultDeal.dealWith(i);
    }

    @Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
    @Override
    public ReturnData delete(Advertisement advertisement) {
        int i = advertisementMapper.delete(advertisement);
        return UpdateOrInsertResultDeal.dealWith(i);
    }

    @Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
    @Override
    public ReturnData update(Advertisement advertisement) {
        int i = advertisementMapper.update(advertisement);
        return UpdateOrInsertResultDeal.dealWith(i);
    }

    @Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
    @Override
    public ReturnData updateState(Advertisement advertisement) {
        int i = advertisementMapper.updateState(advertisement);
        return UpdateOrInsertResultDeal.dealWith(i);
    }
}
