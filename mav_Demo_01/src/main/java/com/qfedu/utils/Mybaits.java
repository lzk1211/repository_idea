package com.qfedu.utils;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

public class Mybaits {

    private static SqlSessionFactory factory;
    private static ThreadLocal<SqlSession> local =new ThreadLocal();
    static {
        try {
            InputStream is = Resources.getResourceAsStream("mybatis-config.xml");
            factory = new SqlSessionFactoryBuilder().build(is);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private static SqlSession openSession(){
        SqlSession sqlSession = local.get();
        if (sqlSession==null){
             sqlSession = factory.openSession();
            local.set(sqlSession);
        }
        return sqlSession;
    }

    private static void colseSession(){
        SqlSession sqlSession = local.get();
        sqlSession.close();
        local.remove();
    }

    public static void commit(){
        SqlSession sqlSession = openSession();
        sqlSession.commit();
        colseSession();
    }

    public static void rollback(){
        SqlSession sqlSession = openSession();
        sqlSession.rollback();
        colseSession();
    }


    public static <T extends Object>T getmapper(Class<T> clazz){
        SqlSession sqlSession = openSession();
        return sqlSession.getMapper(clazz);
    }

}
