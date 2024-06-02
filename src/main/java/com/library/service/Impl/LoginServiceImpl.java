package com.library.service.Impl;

import com.library.mapper.UserMapper;
import com.library.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author 云言月
 * 2024/5/16 18:06
 */
@Service
public class UserServiceImpl implements LoginService {
    @Autowired
    private UserMapper adminMapper;


    @Override
    public String login(String username, String password) {
        User user = userMapper.getUserByUsername(username);
        if (user != null && user.getPassword().equals(password)) {
            // 根据power字段判断用户类型
            if ("user".equals(user.getPower())) {
                // 处理用户登录逻辑
            } else if ("admin".equals(user.getPower())) {
                // 处理管理员登录逻辑
            }
            return user;
        }
        return null; // 登录失败
    }
}
