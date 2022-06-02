package com.poke.DAO;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.poke.domain.UserInfoVO;

public class UserDAO {
	private static SqlSessionFactory sqlSessionFactory;
	static {
		try {
			String resource = "com/poke/DAO/mybatis-config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public UserInfoVO UserLogin(UserInfoVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		UserInfoVO result = session.selectOne("UserLogin", vo);
		session.close();
		return result;
	}
}
