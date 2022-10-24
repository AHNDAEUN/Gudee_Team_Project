<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <mapper namespace="com.goodee.market.trade.item.comment.ItemcommentDAO">
    
    
    <insert id="ItemCommentAdd" parameterType="ItemCommentDTO">
    
    INSERT INTO ITEMCOMMENT
    VALUES (ITEM_SEQ.NEXTVAL, #{itemNum}, #{MEMBERNUM} #{writer}, #{contents},sysdate)
    </insert>

	
	<select id="getCommentList" parameterType="MeetingBoardCommentPager" resultMap="getListResult">
		SELECT *
		FROM (
		    SELECT ROWNUM R, J.*
		    FROM (
		        SELECT M.membernum, M.id, M.name, M.nickname, MBC.*, MI.filenum, MI.filename
		        FROM member M
		        INNER JOIN meetingboardcomment MBC
		        ON(M.membernum = MBC.mbcwriter)
		        LEFT JOIN MEMBERIMAGE MI
                ON(M.membernum = MI.membernum)
		        WHERE MBC.mbcmeetingboardnum = #{meetingBoardNum}
		        ORDER BY MBC.mbcnum DESC
		    ) J)
		    WHERE R BETWEEN #{startRow} AND #{lastRow}
	</select>
	
	<resultMap type="MeetingBoardCommentDTO" id="getListResult">
		<id column="MBCNUM" property="num"/>
		<result column="MBCWRITER" property="writer"/>
		<result column="MBCMEETINGBOARDNUM" property="meetingBoardNum"/>
		<result column="MBCCONTENTS" property="contents"/>
		<result column="MBCREGDATE" property="regDate"/>
		
		<association property="memberDTO" javaType="MemberDTO">
			<id column="MEMBERNUM" property="memberNum"/>
			<result column="ID" property="id"/>
			<result column="NAME" property="name"/>
			<result column="NICKNAME" property="nickname"/>
		</association>
		
		<association property="memberFileDTO" javaType="MemberFileDTO">
			<id column="FILENUM" property="fileNum"/>
			<result column="FILENAME" property="fileName"/>
		</association>
		
	</resultMap>
	
	<delete id="setCommentDelete" parameterType="MeetingBoardCommentDTO">
		DELETE FROM MEETINGBOARDCOMMENT WHERE MBCNUM = #{num}
	</delete>
	
	<select id="getTotalCount" parameterType="MeetingBoardCommentPager" resultType="Long">
		SELECT COUNT(mbcnum) FROM meetingboardcomment WHERE mbcmeetingboardnum = #{meetingBoardNum}
	</select>
	
	<select id="getMyCommentList" parameterType="MeetingBoardCommentDTO" resultMap="getMyCommentListResult">
		SELECT * FROM meetingboardcomment WHERE mbcwriter = #{writer}
	</select>
	
	<resultMap type="MeetingBoardCommentDTO" id="getMyCommentListResult">
		<id column="MBCNUM" property="num"/>
		<result column="MBCWRITER" property="writer"/>
		<result column="MBCMEETINGBOARDNUM" property="meetingBoardNum"/>
		<result column="MBCCONTENTS" property="contents"/>
		<result column="MBCREGDATE" property="regDate"/>
	</resultMap>


</body>
</html>