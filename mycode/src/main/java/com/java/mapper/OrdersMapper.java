package com.java.mapper;

import com.java.entity.Orders;

import java.util.List;

/**
 * 订单基本信息管理
 */
public interface OrdersMapper {
    List<Orders> getList(Orders orders);
    int add(Orders orders);
    int update(Orders orders);
    int updateState(Orders orders);
}
