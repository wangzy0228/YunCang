package com.yuncang.service.impl;

import com.yuncang.dao.user.UserDao;
import com.yuncang.entity.UserEntity;
import com.yuncang.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by lzw on 2017/4/22.
 * 用户逻辑类
 */
@Service
public class UserServiceImpl implements UserService {

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private UserDao userDao;


    public boolean loginCheck(String user_name, String user_password) throws Exception {
        if (user_name != null && user_password != null) {
            UserEntity userEntity = userDao.loginCheck(user_name, user_password);
            if (userEntity != null) {
                return true;
            } else {
                return false;
            }
        }
        return false;
    }


    @Transactional
    public int insertUser(UserEntity user) throws Exception {
        int state = userDao.insertUser(user);
        return state;
    }


    public boolean isExist(UserEntity userEntity) {
        Map<String, Object> param = new HashMap<String, Object>();
        String username = userEntity.getUsername();
        long phone = userEntity.getPhone();
        param.put("phone", phone);
        param.put("username", username);
        try {
            int exist = userDao.isExist(param);
            //如果返回数据不为0，说明数据已存在,返回true
            if (exist != 0) {
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            return false;
        }

    }

    @Override
    public UserEntity queryPersonInfoByUserName(String username) throws Exception {
        return userDao.queryPersonInfoByUserName(username);
    }

    @Override
    @Transactional
    public boolean editPersonInfo(int id, String username, String userphone, String useremail, String sex) throws Exception {

        int isSuccess = userDao.editPersonInfoByUserId(id, username, userphone, useremail, sex);
        if (isSuccess > 0) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    @Transactional
    public boolean editPassword(String username, String newPassword) throws Exception {
        int isSuccess = userDao.editPassword(username, newPassword);
        if (isSuccess > 0) {
            return true;
        } else {
            return false;
        }

    }


}
