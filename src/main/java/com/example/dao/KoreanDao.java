package com.example.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.domain.Korean;
@Mapper
public interface KoreanDao {
    //全てのデータの取得
	List<Korean> selectAll() throws Exception;

	//ランダムに並べ替えて取得
	List<Korean> selectByRandom() throws Exception;

	//カテゴリ別に取得
	List<Korean> selectByCategory(String category) throws Exception;

	//追加
	void insert(Korean korean) throws Exception;

	Korean selectById(Integer id) throws Exception;

	//更新
	void update(Korean korean) throws Exception;

	//削除
	void delete(Integer id) throws Exception;

	// ページネーション用
	Long count() throws Exception;
	List<Korean> selectLimited(@Param("offset") int offset,
			                   @Param("num") int num) throws Exception;



}
