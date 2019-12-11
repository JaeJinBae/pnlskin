package com.webaid.persistence;

import java.util.List;

import com.webaid.domain.NoticeVO;
import com.webaid.domain.SearchCriteria;

public interface NoticeDao {
	public List<NoticeVO> selectAll();
	public NoticeVO selectOne(int no);
	public List<NoticeVO> selectFive();
	public NoticeVO selectBefore(int no);
	public NoticeVO selectAfter(int no);
	public List<NoticeVO> selectTopNotice(String use_state);
	public void insert(NoticeVO vo);
	public void update(NoticeVO vo);
	public void updateCnt(int no);
	public void updateUseState(NoticeVO vo);
	public void delete(int no);
	public List<NoticeVO> listSearch(SearchCriteria cri) throws Exception;
	public List<NoticeVO> listSearchAll(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
	public int listSearchCountAll(SearchCriteria cri) throws Exception;
}
