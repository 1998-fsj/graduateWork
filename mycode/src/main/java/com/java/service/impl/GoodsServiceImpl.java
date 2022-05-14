package com.java.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.java.entity.Goods;
import com.java.mapper.GoodsMapper;
import com.java.service.GoodsService;
import com.java.util.ReturnData;
import com.java.util.ReturnDataForLayui;
import com.java.util.UpdateOrInsertResultDeal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class GoodsServiceImpl implements GoodsService {
    @Autowired
    private GoodsMapper goodsMapper;

    @Transactional(propagation = Propagation.REQUIRED,readOnly = true)
    @Override
    public ReturnDataForLayui getList(Goods goods) {
        PageHelper.startPage(goods.getPage(),goods.getLimit());
        List<Goods> list = goodsMapper.getList(goods);
        PageInfo<Goods> info = new PageInfo<>(list);
        return ReturnDataForLayui.success(list,info.getTotal());
    }

    @Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
    @Override
    public ReturnData add(Goods goods) {
        int i = goodsMapper.add(goods);
        return UpdateOrInsertResultDeal.dealWith(i);
    }

    @Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
    @Override
    public ReturnData delete(Goods goods) {
        int i = goodsMapper.delete(goods);
        return UpdateOrInsertResultDeal.dealWith(i);
    }

    @Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
    @Override
    public ReturnData update(Goods goods) {
        int i = goodsMapper.update(goods);
        return UpdateOrInsertResultDeal.dealWith(i);
    }

    @Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
    @Override
    public ReturnData updateState(Goods goods) {
        int i = goodsMapper.updateState(goods);
        return UpdateOrInsertResultDeal.dealWith(i);
    }
}
