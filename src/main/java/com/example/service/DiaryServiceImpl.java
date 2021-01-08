package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.dao.DiaryDao;
import com.example.domain.Diary;

@Service
@Transactional(rollbackFor = Exception.class)
public class DiaryServiceImpl implements DiaryService{

	@Autowired
	DiaryDao diaryDao;

	@Override
	public List<Diary> getDiaryList() throws Exception {
		return diaryDao.selectAll();
	}

	@Override
	public void addDiary(Diary diary) throws Exception {
		diaryDao.insert(diary);

	}

}
