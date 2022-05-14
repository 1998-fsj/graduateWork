package com.java.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.java.entity.Address;
import com.java.mapper.AddressMapper;
import com.java.service.AddressService;
import com.java.util.ReturnData;
import com.java.util.ReturnDataForLayui;
import com.java.util.UpdateOrInsertResultDeal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class AddressServiceImpl implements AddressService {
    @Autowired
    private AddressMapper addressMapper;

    @Transactional(propagation = Propagation.REQUIRED,readOnly = true)
    @Override
    public ReturnDataForLayui getList(Address address) {
        PageHelper.startPage(address.getPage(),address.getLimit());
        List<Address> list = addressMapper.getList(address);
        PageInfo<Address> info = new PageInfo<>(list);
        return ReturnDataForLayui.success(list,info.getTotal());
    }

    @Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
    @Override
    public ReturnData add(Address address) {
        int i = addressMapper.add(address);
        return UpdateOrInsertResultDeal.dealWith(i);
    }

    @Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
    @Override
    public ReturnData delete(Address address) {
        int i = addressMapper.delete(address);
        return UpdateOrInsertResultDeal.dealWith(i);
    }

    @Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
    @Override
    public ReturnData update(Address address) {
        int i = addressMapper.update(address);
        return UpdateOrInsertResultDeal.dealWith(i);
    }

    @Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
    @Override
    public ReturnData updateState(Address address) {
        int i = addressMapper.updateState(address);
        return UpdateOrInsertResultDeal.dealWith(i);
    }
}
