<%@page import="com.njshido.component.ShidoFloatingWordConfigurationAction" %>
<%@ page pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://liferay.com/tld/security" prefix="liferay-security" %>
<%@ taglib uri="http://liferay.com/tld/theme" prefix="liferay-theme" %>
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui" %>
<%@ taglib uri="http://liferay.com/tld/portlet" prefix="liferay-portlet" %>

<portlet:defineObjects />

<liferay-theme:defineObjects />

<%
	String color = String.valueOf(request.getAttribute(ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_COLOR));
	String height = String.valueOf(request.getAttribute(ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_HEIGHT));
	String bgColor = String.valueOf(request.getAttribute(ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_BG_COLOR));
	String detail = String.valueOf(request.getAttribute(ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_DETAIL));	
	String bgImgUrl = String.valueOf(request.getAttribute(ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_BG_IMG_URL));
	String iconUrl = String.valueOf(request.getAttribute(ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_ICON_URL));
	String link = String.valueOf(request.getAttribute(ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_LINK));
	String title = String.valueOf(request.getAttribute(ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_TITLE));
	String zoom = String.valueOf(request.getAttribute(ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_ZOOM_PERCENT));
	String duration = String.valueOf(request.getAttribute(ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_ZOOM_DURATION));
	String actSwitch = String.valueOf(request.getAttribute(ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_ACT_SWITCH));
	String titleFontSize = String.valueOf(request.getAttribute(ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_TITLE_FONT_SIZE));
	String titleLineHeight = String.valueOf(request.getAttribute(ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_TITLE_LINE_HEIGHT));
	String detailFontSize = String.valueOf(request.getAttribute(ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_DETAIL_FONT_SIZE));
	String detailLineHeight = String.valueOf(request.getAttribute(ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_DETAIL_LINE_HEIGHT));
%>
<liferay-ui:success key="success" message="your-configuration-was-saved-sucessfully"/>
<form action="<liferay-portlet:actionURL portletConfiguration='true' />" method="post">
	<div id="" style="background:#ddd;padding:20px 0px;opacity:0.8">
		<ul>
			<li>
				<span>高度：</span>
				<input name="<portlet:namespace/><%=ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_HEIGHT%>" type="number" style="width:30%;" value="<%=height%>"/>
			</li>
			<li>
				<span>标题：</span>
				<input name="<portlet:namespace/><%=ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_TITLE%>" type="text" style="width:30%;"  value="<%=title%>"/>
			</li>
			<li>
				<span>标题文字大小(px)：</span>
				<input name="<portlet:namespace/><%=ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_TITLE_FONT_SIZE%>" type="number" style="width:30%;"  value="<%=titleFontSize%>"/>
			</li>
			<li>
				<span>标题行高(px)：</span>
				<input name="<portlet:namespace/><%=ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_TITLE_LINE_HEIGHT%>" type="number" style="width:30%;"  value="<%=titleLineHeight%>"/>
			</li>
			<li>
				<span>内容：</span>
				<textarea name="<portlet:namespace/><%=ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_DETAIL%>" style="width:30%;"><%=detail%></textarea>
			</li>
			<li>
				<span>内容文字大小(px)：</span>
				<input type="number" name="<portlet:namespace/><%=ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_DETAIL_FONT_SIZE%>" style="width:30%;" value="<%=detailFontSize%>"/>
			</li>
			<li>
				<span>内容行高(px)：</span>
				<input type="number" name="<portlet:namespace/><%=ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_DETAIL_LINE_HEIGHT%>" style="width:30%;" value="<%=detailLineHeight%>"/>
			</li>
			<li>
				<span>背景色：</span>
				<input name="<portlet:namespace/><%=ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_BG_COLOR%>" type="text" style="width:30%;"  value="<%=bgColor%>"/>
			</li>
			<li>
				<span>文字颜色：</span>
				<input name="<portlet:namespace/><%=ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_COLOR%>" type="text" style="width:30%;"  value="<%=color%>"/>
			</li>
			<li>
				<span>背景图片地址：</span>
				<input name="<portlet:namespace/><%=ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_BG_IMG_URL%>" type="text" style="width:80%;"  value="<%=bgImgUrl%>"/>
			</li>
			<li>
				<span>标题图标地址：</span>
				<input name="<portlet:namespace/><%=ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_ICON_URL%>" type="text" style="width:80%;"  value="<%=iconUrl%>"/>
			</li>
			<li>
				<span>链接地址：</span>
				<input name="<portlet:namespace/><%=ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_LINK%>" type="text" style="width:80%;"  value="<%=link%>"/>
			</li>
			<li>
				<span>动画效果：</span>
				<input name='<portlet:namespace/><%=ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_ACT_SWITCH%>' 
					type="radio" value="on" <%="on".equals(actSwitch) ? "checked":"" %> />开
				<input name='<portlet:namespace/><%=ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_ACT_SWITCH%>' 
					type="radio" value="off" <%=!"on".equals(actSwitch) ? "checked":"" %>/>关
			</li>
			<li>
				<span>背景动画(放大倍数)：</span>
				<input name="<portlet:namespace/><%=ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_ZOOM_PERCENT%>" type="text" style="width:80%;"  value="<%=zoom%>"/>
			</li>
			<li>
				<span>背景动画(播放时长)：</span>
				<input name="<portlet:namespace/><%=ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_ZOOM_DURATION%>" type="text" style="width:80%;"  value="<%=duration%>"/>
			</li>
		</ul>
	</div>
	<input type="submit" value="save"/>
</form>