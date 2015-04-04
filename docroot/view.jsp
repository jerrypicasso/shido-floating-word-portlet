<%@ page pageEncoding="utf-8"%>
<%@page import="com.liferay.portal.kernel.util.StringPool"%>
<%@page import="javax.portlet.PortletPreferences"%>
<%@page import="com.njshido.component.ShidoFloatingWordConfigurationAction" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://liferay.com/tld/security" prefix="liferay-security"%>
<%@ taglib uri="http://liferay.com/tld/theme" prefix="liferay-theme"%>
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui"%>
<portlet:defineObjects />

<%
	PortletPreferences preferences = renderRequest.getPreferences();
	String color = preferences.getValue(ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_COLOR, ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_COLOR_DEFAULT_VAL);
	String bgColor = preferences.getValue(ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_BG_COLOR, ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_BG_COLOR_DEFAULT_VAL);
	String bgImgUrl = preferences.getValue(ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_BG_IMG_URL, StringPool.BLANK);
	String detail = preferences.getValue(ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_DETAIL, StringPool.BLANK);
	String height = preferences.getValue(ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_HEIGHT, ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_HEIGHT_DEFAULT_VAL);
	String iconUrl = preferences.getValue(ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_ICON_URL, StringPool.BLANK);
	String link = preferences.getValue(ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_LINK, StringPool.BLANK);
	String title = preferences.getValue(ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_TITLE, StringPool.BLANK);
	String zoom = preferences.getValue(ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_ZOOM_PERCENT, ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_ZOOM_PERCENT_DEFAULT_VAL);
	String duration = preferences.getValue(ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_ZOOM_DURATION, ShidoFloatingWordConfigurationAction.SHIDO_FLOATING_WORD_ZOOM_DURATION_DEFAULT_VAL);
%>

<div id="<portlet:namespace/>shido-floating-word" class="shido-floating-word" 
	style="height:<%= height%>px;text-align:center;display:table;width:100%;background-color:<%= bgColor%>;
		background-image:url(<%= bgImgUrl%>);background-repeat:no-repeat;background-position:center center;">
	<div style="display:table-cell;vertical-align:middle;text-align:center;color:<%= color%>;width:100%;">
<%
	if(!StringPool.BLANK.equals(iconUrl)) {
%>
		<img alt="" style="margin-bottom: 15px;" src="<%= iconUrl%>"/><br/>
<%	
	}
%>
		<div style="font-size:40px;"><%= title%></div>
<%
	if(!StringPool.BLANK.equals(detail)) {
%>
		<br/><div style="font-size:16px;"><%= detail.replaceAll("\\n", "<br/>")%></div>
<%	
	}
	if(!StringPool.BLANK.equals(link)) {
%>
		<br/><a href="<%= link%>" style="display:block;">了解更多 &gt;</a>
<%		
	}
%>
	</div>
</div>

<script>
	$(document).ready(function() {
		var controller = $.superscrollorama();
		var beginHeight = <%= height%>;
		var beginWidth = 1920;
		var endHeight = beginHeight*<%= zoom%>;
		var endWidth = beginWidth*<%= zoom%>;
		controller.addTween(
				'#<portlet:namespace/>shido-floating-word', 
				TweenMax.fromTo(
						'#<portlet:namespace/>shido-floating-word', 
						5, 
						{css:{'background-size':beginWidth + 'px ' + beginHeight + 'px'}}, 
						{css:{'background-size':endWidth + 'px ' + endHeight + 'px'}}
				),
				0,
				0,
				false
		);
	});
</script>