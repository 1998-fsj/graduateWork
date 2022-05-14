package com.java.service;

import com.java.entity.Orders;
import com.java.util.ReturnData;
import com.java.util.ReturnDataForLayui;

/**
 * 订单基本信息service接口
 */
public interface OrdersService {
    ReturnDataForLayui getList(Orders orders);
    ReturnData add(Orders orders);
    ReturnData update(Orders orders);
    ReturnData updateState(Orders orders);
}
