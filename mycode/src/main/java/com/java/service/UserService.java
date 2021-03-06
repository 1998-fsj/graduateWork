package com.java.service;

import com.java.entity.User;
import com.java.util.ReturnData;
import com.java.util.ReturnDataForLayui;

import javax.servlet.ServletContext;

public interface UserService {
    /**
     * 根据微信给的code查询openid，返回token
     */
    public ReturnData selectUserByCode(String code);

    /**
     * 更新用户信息的微信部分
     */
    public ReturnData updateUserOfWxPart(ServletContext servletContext, User user);

    public ReturnDataForLayui getList(User user);
}
