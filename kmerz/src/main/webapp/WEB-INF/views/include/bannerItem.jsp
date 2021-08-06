<%@page import="com.kmerz.app.vo.SteamAppVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<SteamAppVo> bannerList = (List<SteamAppVo>) request.getAttribute("bannerList");
%>
<%
	if (bannerList != null) {
%>
<%
	for (int i = 0; i < bannerList.size(); i++) {
%>
<div id="bannerApp-<%=bannerList.get(i).getApp_id()%>">
	<div style="width:100%; height:100%; background:url('<%=bannerList.get(i).getApp_background()%>');">
		<div id="video_container">
			<video>
				<source src="<%=bannerList.get(i).getApp_movie()%>" />
			</video>
		</div>
		<div id="info_container">
			<div id="title_container">
				<%=bannerList.get(i).getApp_name()%>
			</div>
			<div id="description_container">
				<p><%=bannerList.get(i).getApp_description()%></p>
			</div>
			<div id="price_container">
				<%=bannerList.get(i).getApp_price()%>
			</div>
		</div>
	</div>
</div>
<%
	}
}
%>