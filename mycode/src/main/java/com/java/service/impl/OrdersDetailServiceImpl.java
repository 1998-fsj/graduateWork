package com.java.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.java.entity.OrdersDetail;
import com.java.mapper.OrdersDetailMapper;
import com.java.service.OrdersDetailService;
import com.java.util.ReturnData;
import com.java.util.ReturnDataForLayui;
import com.java.util.UpdateOrInsertResultDeal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class OrdersDetailServiceImpl implements OrdersDetailService {
    @Autowired
    private OrdersDetailMapper ordersDetailMapper;

    @Transactional(propagation = Propagation.REQUIRED,readOnly = true)
    @Override
    public ReturnDataForLayui getList(OrdersDetail ordersDetail) {
        PageHelper.startPage(ordersDetail.getPage(),ordersDetail.getLimit());
        List<OrdersDetail> list = ordersDetailMapper.getList(ordersDetail);
        PageInfo<OrdersDetail> info = new PageInfo<>(list);
        return ReturnDataForLayui.success(list,info.getTotal());
    }

    @Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
    @Override
    public ReturnData add(OrdersDetail ordersDetail) {
        int i = ordersDetailMapper.add(ordersDetail);
        return UpdateOrInsertResultDeal.dealWith(i);
    }

    @Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
    @Override
    public ReturnData update(OrdersDetail ordersDetail) {
        int i = ordersDetailMapper.update(ordersDetail);
        return UpdateOrInsertResultDeal.dealWith(i);
    }

}
