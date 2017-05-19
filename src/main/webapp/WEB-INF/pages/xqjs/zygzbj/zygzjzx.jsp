<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/pages/include.jsp"%>
<t:html>
	<head>
		<%@ include file="/WEB-INF/pages/common/commonScriptAndCss.jsp"%>
	</head>
	<t:page i18n="i18n.xqjs.zygzbj.zygz">
	<t:grid id="grid_weizxljlb" caption="${i18n.weifylj}" showNum="true" idKeys="tch"
	src="/zygzbj/queryZygzjzx.ajax" add="NOT" edit="NOT" remove="NOT" >
	<t:fieldLayout prefix="gridLayout" columns="3">
		<t:fieldHidden property="lingjbh"></t:fieldHidden>
		<t:fieldHidden property="usercenter"></t:fieldHidden>
		<t:fieldText width="150" property="yaohlh" caption="${i18n.yaohlh}" maxLength="12"></t:fieldText>
		<t:fieldCalendar format="yyyy-MM-dd" property="zuiwsj" width="150" caption="${i18n.jiaofsj}"></t:fieldCalendar>
		<t:fieldHidden property="yaohlzt" defaultValue="01"></t:fieldHidden>
	</t:fieldLayout>
	<t:gridCol property="yaohlh" caption="${i18n.yaohlh}"></t:gridCol>
	<t:gridCol property="gongysdm" caption="${i18n.gongysdm}"></t:gridCol>
	<t:gridCol property="gongysmc" caption="${i18n.gongysmc}"></t:gridCol>
	<t:gridCol property="baozxh" caption="${i18n.baozlx}"></t:gridCol>
	<t:gridCol property="usxh" caption="${i18n.bzrl}"></t:gridCol>
	<t:gridCol property="zuiwsj" caption="${i18n.jiaofsj}"></t:gridCol>
	</t:grid>
	</t:page>
	<script type="text/javascript"> 
	</script>
	<style type="text/css"></style>
</t:html>