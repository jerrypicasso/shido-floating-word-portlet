package com.njshido.component;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletConfig;
import javax.portlet.PortletPreferences;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;

import com.liferay.portal.kernel.portlet.DefaultConfigurationAction;
import com.liferay.portal.kernel.servlet.SessionMessages;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.kernel.util.StringPool;
import com.liferay.portal.kernel.util.Validator;
import com.liferay.portlet.PortletPreferencesFactoryUtil;

public class ShidoFloatingWordConfigurationAction extends DefaultConfigurationAction {
	
	public static final String SHIDO_FLOATING_WORD_HEIGHT = "shido_floating_word_height";
	public static final String SHIDO_FLOATING_WORD_COLOR = "shido_floating_word_color";
	public static final String SHIDO_FLOATING_WORD_BG_IMG_URL = "shido_floating_word_bg_img_url";
	public static final String SHIDO_FLOATING_WORD_BG_COLOR = "shido_floating_word_bg_color";
	public static final String SHIDO_FLOATING_WORD_ICON_URL = "shido_floating_word_icon_url";
	public static final String SHIDO_FLOATING_WORD_TITLE = "shido_floating_word_title";
	public static final String SHIDO_FLOATING_WORD_DETAIL = "shido_floating_word_detail";
	public static final String SHIDO_FLOATING_WORD_LINK = "shido_floating_word_link";
	public static final String SHIDO_FLOATING_WORD_ZOOM_PERCENT = "shido_floating_word_zoom_percent";
	public static final String SHIDO_FLOATING_WORD_ZOOM_DURATION = "shido_floating_word_zoom_duration";
	
	public static final String SHIDO_FLOATING_WORD_ACT_SWITCH = "shido_floating_word_act_switch";
	public static final String SHIDO_FLOATING_WORD_TITLE_FONT_SIZE = "shido_floating_word_title_font_size";
	public static final String SHIDO_FLOATING_WORD_TITLE_LINE_HEIGHT = "shido_floating_word_title_line_height";
	public static final String SHIDO_FLOATING_WORD_DETAIL_FONT_SIZE = "shido_floating_word_detail_font_size";
	public static final String SHIDO_FLOATING_WORD_DETAIL_LINE_HEIGHT = "shido_floating_word_detail_line_height";
	
	private static final String CONFIG_JSP = "/WEB-INF/config/config.jsp";
	private static final String SUCCESS = "success";
	public static final String SHIDO_FLOATING_WORD_HEIGHT_DEFAULT_VAL = "400";
	public static final String SHIDO_FLOATING_WORD_BG_COLOR_DEFAULT_VAL = "#ffffff";
	public static final String SHIDO_FLOATING_WORD_COLOR_DEFAULT_VAL = "#000000";
	public static final String SHIDO_FLOATING_WORD_ZOOM_PERCENT_DEFAULT_VAL = "200";
	public static final String SHIDO_FLOATING_WORD_ZOOM_DURATION_DEFAULT_VAL = "3";
	
	public static final String SHIDO_FLOATING_WORD_ACT_SWITCH_DEFAULT_VAL = "off";
	public static final String SHIDO_FLOATING_WORD_TITLE_FONT_SIZE_DEFAULT_VAL = "40";
	public static final String SHIDO_FLOATING_WORD_TITLE_LINE_HEIGHT_DEFAULT_VAL = "60";
	public static final String SHIDO_FLOATING_WORD_DETAIL_FONT_SIZE_DEFAULT_VAL = "18";
	public static final String SHIDO_FLOATING_WORD_DETAIL_LINE_HEIGHT_DEFAULT_VAL = "40";
	
	@Override
	public String render(PortletConfig portletConfig, RenderRequest renderRequest, RenderResponse renderResponse) throws Exception {
		String portletId = renderRequest.getParameter("portletResource");
		PortletPreferences preferences = PortletPreferencesFactoryUtil.getPortletSetup(renderRequest, portletId);
		renderRequest.setAttribute(SHIDO_FLOATING_WORD_COLOR, preferences.getValue(SHIDO_FLOATING_WORD_COLOR, SHIDO_FLOATING_WORD_COLOR_DEFAULT_VAL));
		renderRequest.setAttribute(SHIDO_FLOATING_WORD_HEIGHT, preferences.getValue(SHIDO_FLOATING_WORD_HEIGHT, SHIDO_FLOATING_WORD_HEIGHT_DEFAULT_VAL));
		renderRequest.setAttribute(SHIDO_FLOATING_WORD_BG_COLOR, preferences.getValue(SHIDO_FLOATING_WORD_BG_COLOR, SHIDO_FLOATING_WORD_BG_COLOR_DEFAULT_VAL));
		renderRequest.setAttribute(SHIDO_FLOATING_WORD_BG_IMG_URL, preferences.getValue(SHIDO_FLOATING_WORD_BG_IMG_URL, StringPool.BLANK));
		renderRequest.setAttribute(SHIDO_FLOATING_WORD_ICON_URL, preferences.getValue(SHIDO_FLOATING_WORD_ICON_URL, StringPool.BLANK));
		renderRequest.setAttribute(SHIDO_FLOATING_WORD_TITLE, preferences.getValue(SHIDO_FLOATING_WORD_TITLE, StringPool.BLANK));
		renderRequest.setAttribute(SHIDO_FLOATING_WORD_DETAIL, preferences.getValue(SHIDO_FLOATING_WORD_DETAIL, StringPool.BLANK));
		renderRequest.setAttribute(SHIDO_FLOATING_WORD_LINK, preferences.getValue(SHIDO_FLOATING_WORD_LINK, StringPool.BLANK));
		renderRequest.setAttribute(SHIDO_FLOATING_WORD_ZOOM_PERCENT, preferences.getValue(SHIDO_FLOATING_WORD_ZOOM_PERCENT, SHIDO_FLOATING_WORD_ZOOM_PERCENT_DEFAULT_VAL));
		renderRequest.setAttribute(SHIDO_FLOATING_WORD_ZOOM_DURATION, preferences.getValue(SHIDO_FLOATING_WORD_ZOOM_DURATION, SHIDO_FLOATING_WORD_ZOOM_DURATION_DEFAULT_VAL));
		
		renderRequest.setAttribute(SHIDO_FLOATING_WORD_ACT_SWITCH, preferences.getValue(SHIDO_FLOATING_WORD_ACT_SWITCH, SHIDO_FLOATING_WORD_ACT_SWITCH_DEFAULT_VAL));
		renderRequest.setAttribute(SHIDO_FLOATING_WORD_TITLE_FONT_SIZE, preferences.getValue(SHIDO_FLOATING_WORD_TITLE_FONT_SIZE, SHIDO_FLOATING_WORD_TITLE_FONT_SIZE_DEFAULT_VAL));
		renderRequest.setAttribute(SHIDO_FLOATING_WORD_TITLE_LINE_HEIGHT, preferences.getValue(SHIDO_FLOATING_WORD_TITLE_LINE_HEIGHT, SHIDO_FLOATING_WORD_TITLE_LINE_HEIGHT_DEFAULT_VAL));
		renderRequest.setAttribute(SHIDO_FLOATING_WORD_DETAIL_FONT_SIZE, preferences.getValue(SHIDO_FLOATING_WORD_DETAIL_FONT_SIZE, SHIDO_FLOATING_WORD_DETAIL_FONT_SIZE_DEFAULT_VAL));
		renderRequest.setAttribute(SHIDO_FLOATING_WORD_DETAIL_LINE_HEIGHT, preferences.getValue(SHIDO_FLOATING_WORD_DETAIL_LINE_HEIGHT, SHIDO_FLOATING_WORD_DETAIL_LINE_HEIGHT_DEFAULT_VAL));
		return CONFIG_JSP;
	}
	
	@Override
	public void processAction(PortletConfig portletConfig, ActionRequest actionRequest, ActionResponse actionResponse) throws Exception {
		String portletResource = ParamUtil.getString(actionRequest, "portletResource");
		PortletPreferences preferences = PortletPreferencesFactoryUtil.getPortletSetup(actionRequest, portletResource);
		if (Validator.isNotNull(preferences)) {
			String color = ParamUtil.getString(actionRequest, SHIDO_FLOATING_WORD_COLOR);
			String height = ParamUtil.getString(actionRequest, SHIDO_FLOATING_WORD_HEIGHT);
			String bgColor = ParamUtil.getString(actionRequest, SHIDO_FLOATING_WORD_BG_COLOR);
			String bgImgUrl = ParamUtil.getString(actionRequest, SHIDO_FLOATING_WORD_BG_IMG_URL);
			String iconUrl = ParamUtil.getString(actionRequest, SHIDO_FLOATING_WORD_ICON_URL);
			String title = ParamUtil.getString(actionRequest, SHIDO_FLOATING_WORD_TITLE);
			String detail = ParamUtil.getString(actionRequest, SHIDO_FLOATING_WORD_DETAIL);
			String link = ParamUtil.getString(actionRequest, SHIDO_FLOATING_WORD_LINK);
			String zoom = ParamUtil.getString(actionRequest, SHIDO_FLOATING_WORD_ZOOM_PERCENT);
			String duration = ParamUtil.getString(actionRequest, SHIDO_FLOATING_WORD_ZOOM_DURATION);
			String actSwitch = ParamUtil.getString(actionRequest, SHIDO_FLOATING_WORD_ACT_SWITCH);
			String titleFontSize = ParamUtil.getString(actionRequest, SHIDO_FLOATING_WORD_TITLE_FONT_SIZE);
			String titleLineHeight = ParamUtil.getString(actionRequest, SHIDO_FLOATING_WORD_TITLE_LINE_HEIGHT);
			String detailFontSize = ParamUtil.getString(actionRequest, SHIDO_FLOATING_WORD_DETAIL_FONT_SIZE);
			String detailLineHeight = ParamUtil.getString(actionRequest, SHIDO_FLOATING_WORD_DETAIL_LINE_HEIGHT);
			
			preferences.setValue(SHIDO_FLOATING_WORD_COLOR, color);
			preferences.setValue(SHIDO_FLOATING_WORD_HEIGHT, height);
			preferences.setValue(SHIDO_FLOATING_WORD_BG_COLOR, bgColor);
			preferences.setValue(SHIDO_FLOATING_WORD_BG_IMG_URL, bgImgUrl);
			preferences.setValue(SHIDO_FLOATING_WORD_ICON_URL, iconUrl);
			preferences.setValue(SHIDO_FLOATING_WORD_TITLE, title);
			preferences.setValue(SHIDO_FLOATING_WORD_DETAIL, detail);
			preferences.setValue(SHIDO_FLOATING_WORD_LINK, link);
			preferences.setValue(SHIDO_FLOATING_WORD_ZOOM_PERCENT, zoom);
			preferences.setValue(SHIDO_FLOATING_WORD_ZOOM_DURATION, duration);
			preferences.setValue(SHIDO_FLOATING_WORD_ACT_SWITCH, actSwitch);
			preferences.setValue(SHIDO_FLOATING_WORD_TITLE_FONT_SIZE, titleFontSize);
			preferences.setValue(SHIDO_FLOATING_WORD_TITLE_LINE_HEIGHT, titleLineHeight);
			preferences.setValue(SHIDO_FLOATING_WORD_DETAIL_FONT_SIZE, detailFontSize);
			preferences.setValue(SHIDO_FLOATING_WORD_DETAIL_LINE_HEIGHT, detailLineHeight);
			preferences.store();
			
			SessionMessages.add(actionRequest, SUCCESS);
		}
		super.processAction(portletConfig, actionRequest, actionResponse);
	}
}
