package com.kmerz.app.service;

import java.util.List;

import com.kmerz.app.dto.PostPagingDto;
import com.kmerz.app.vo.PostsVo;

public interface PostService {
	public int getCountPosts(PostPagingDto postPagingDto);
	public List<PostsVo> selectAllPosts(PostPagingDto postPagingDto);
	public List<PostsVo> selectAllowPosts();
	public PostsVo selectPost(int post_no);
	public PostsVo viewPost(int post_no);
	public List<PostsVo> getCommunityPostList(String community_id);
	public List<PostsVo> getCategoryPostList(String community_id, int category_no);
	public void posting(PostsVo vo);
	public List<PostsVo> getUserPostList(int user_no);
	public int getUserPostCount(int user_no);
	public int getNewPostSeq();
	public PostsVo selectLoadPost(int init_post);
	public void updatePost(PostsVo postsVo);
	public void deletePost(int post_no);
	public void lockPost(int post_no);
	public void lockPostList(List<Integer> postnoList);
	public void unlockPost(int post_no);
	public void uplockPostList(List<Integer> postnoList);
}
