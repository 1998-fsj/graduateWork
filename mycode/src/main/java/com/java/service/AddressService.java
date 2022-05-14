package com.java.service;

import com.java.entity.Address;
import com.java.util.ReturnData;
import com.java.util.ReturnDataForLayui;

/**
 * 收货地址service接口
 */
public interface AddressService {
    ReturnDataForLayui getList(Address address);
    ReturnData add(Address address);
    ReturnData delete(Address address);
    ReturnData update(Address address);
    ReturnData updateState(Address address);
}
