package com.example.dao;

import java.util.List;

import com.example.domain.Diary;

public interface DiaryDao {

	//全てのデータの取得
	List<Diary> selectAll() throws Exception;

	//追加
	void insert(Diary diary) throws Exception;

}
