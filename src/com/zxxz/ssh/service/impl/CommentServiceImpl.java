package com.zxxz.ssh.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.zxxz.ssh.dao.BaseDAO;
import com.zxxz.ssh.dao.CommentDao;
import com.zxxz.ssh.entity.Comment;
import com.zxxz.ssh.entity.UserVoComment;
import com.zxxz.ssh.service.CommentService;

@Transactional
@Service("CommentService")
public class CommentServiceImpl implements CommentService{
	
	@Resource
	 private BaseDAO<Comment> baseDAO;
	@Resource
	private CommentDao commentDao; 
        
	
	@Override
	public void saveOrUpdate(Comment comment) {
		// TODO Auto-generated method stub
		baseDAO.saveOrUpdate(comment);
	}

	@Override
	public Comment findCommentById(int id) {
		// TODO Auto-generated method stub
		return  baseDAO.get(Comment.class, id);
	}

	@Override
	public void deleteComment(Comment comment) {
		// TODO Auto-generated method stub
		baseDAO.delete(comment);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		commentDao.delete(id);
	}

	@Override
	public List<Comment> findListbypage(Integer id,Integer page,Integer rows) {
		// TODO Auto-generated method stub
		Object[] params;//定义
		params = new Object[1];//构建,这时只有定义的4个引用，没有实际对象
		params[0] = new Object();//初始化
		params[0]=id;
		return baseDAO.find("from Comment e WHERE e.status=1 and e.infoId=?",params, page, rows);
	}

	@Override
	public long count(Integer id) {
		// TODO Auto-generated method stub
		//return baseDAO.count("select count(*) from Comment e WHERE e.status=1 ");
		return commentDao.infoByIdCount(id);
	}
	@Override
	public void check(Integer id) {
		// TODO Auto-generated method stub
		
		 commentDao.check(id);
	}
	@Override
	public void recheck(Integer id) {
		// TODO Auto-generated method stub
		
		 commentDao.recheck(id);
	}
	@Override
    public long checkCount(){
    	
    	return baseDAO.count("select count(*) from Comment e WHERE e.status=2");
    }
	@Override
	public List<Comment> findCheckListbypage(Integer page,Integer rows) {
		return baseDAO.find("from Comment e WHERE e.status=2",new Object[]{}, page,rows);
	}

	@Override
	public List<UserVoComment> findListbypage1(Integer id,Integer page,Integer rows) {
		// TODO Auto-generated method stub
		Object[] params;//定义
		params = new Object[1];//构建,这时只有定义的4个引用，没有实际对象
		params[0] = new Object();//初始化
		params[0]=id;
		return commentDao.find("select new com.zxxz.ssh.entity.UserVoComment(e.comment_id,u.username,e.context,e.commTime)  from Comment e,User u  WHERE e.status=1 and u.userid=e.userId  and e.infoId=?",params, page, rows);
	}



             
}
