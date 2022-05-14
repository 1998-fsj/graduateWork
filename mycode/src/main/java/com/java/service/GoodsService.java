package com.java.service;

import com.java.entity.Goods;
import com.java.util.ReturnData;
import com.java.util.ReturnDataForLayui;

/**
 * 图书service接口
 */
public interface GoodsService {
    ReturnDataForLayui getList(Goods goods);
    ReturnData add(Goods goods);
    ReturnData delete(Goods goods);
    ReturnData update(Goods goods);
    ReturnData updateState(Goods goods);
}
