package com.goodee.market.meetingboard.like;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MeetingLikeDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.goodee.market.meetingboard.like.MeetingLikeDAO.";
	
	public int setLike(MeetingLikeDTO meetingLikeDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "setLike", meetingLikeDTO);
	}

	public int getLikeExist(MeetingLikeDTO meetingLikeDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "getLikeExist", meetingLikeDTO);
	}
	
	public int setUnlike(MeetingLikeDTO meetingLikeDTO) throws Exception {
		return sqlSession.delete(NAMESPACE + "setUnlike", meetingLikeDTO);
	}
	
}
