package com.java.service;

import com.java.entity.GoodsType;
import com.java.util.ReturnData;
import com.java.util.ReturnDataForLayui;

/**
 * 分类service接口
 */
public interface GoodsTypeService {
    ReturnDataForLayui getList(GoodsType goodsType);
    ReturnData add(GoodsType goodsType);
    ReturnData delete(GoodsType goodsType);
    ReturnData update(GoodsType goodsType);
    ReturnData updateState(GoodsType goodsType);
}
