package com.goodee.market.meetingboard.comment;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.goodee.market.meetingboard.util.MeetingBoardCommentPager;

@Repository
public class MeetingBoardCommentDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE = "com.goodee.market.meetingboard.comment.MeetingBoardCommentDAO.";

	public int commentAdd(MeetingBoardCommentDTO meetingBoardCommentDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "commentAdd", meetingBoardCommentDTO);
	}
	
	public List<MeetingBoardCommentDTO> getCommentList(MeetingBoardCommentPager meetingBoardCommentPager) throws Exception {
		return sqlSession.selectList(NAMESPACE + "getCommentList", meetingBoardCommentPager);
	}
	
	public int setCommentDelete(MeetingBoardCommentDTO meetingBoardCommentDTO) throws Exception {
		return sqlSession.delete(NAMESPACE + "setCommentDelete", meetingBoardCommentDTO);
	}
	
	public Long getTotalCount(MeetingBoardCommentPager meetingBoardCommentPager) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "getTotalCount", meetingBoardCommentPager);
	}
	
	public List<MeetingBoardCommentDTO> getMyCommentList(MeetingBoardCommentDTO meetingBoardCommentDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE + "getMyCommentList", meetingBoardCommentDTO);
	}
	
}
