package com.java.service;

import com.java.entity.OrdersDetail;
import com.java.util.ReturnData;
import com.java.util.ReturnDataForLayui;

/**
 * 订单详情service接口
 */
public interface OrdersDetailService {
    ReturnDataForLayui getList(OrdersDetail ordersDetail);
    ReturnData add(OrdersDetail ordersDetail);
    ReturnData update(OrdersDetail ordersDetail);
}
