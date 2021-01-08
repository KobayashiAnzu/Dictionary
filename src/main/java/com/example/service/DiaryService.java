package com.example.service;

import java.util.List;

import com.example.domain.Diary;

public interface DiaryService {

	    //全件取得
		List<Diary> getDiaryList() throws Exception;

		//追加
		void addDiary(Diary diary) throws Exception;


}
