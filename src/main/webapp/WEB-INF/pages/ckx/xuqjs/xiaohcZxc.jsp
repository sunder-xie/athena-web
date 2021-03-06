<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/pages/include.jsp"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" />

<t:html title="${i18n.xiaohc}-${i18n.xiaohccx}">

<!-- 
	  小火车-执行层
	 @author hj
	 @date 2012-12-10
 -->
 
<head>
<%@ include file="/WEB-INF/pages/common/commonScriptAndCss.jsp"%>

	<style type="text/css"> 
		
		#form_xiaohc .youi-fieldLayout table td.contral.label-col{width: 115px;}
		</style>
</head>

<t:page i18n="i18n.ckx.xuqjs.i18n_xiaohc">
	<t:grid id="grid_xiaohc" caption="${i18n.xiaohc}"  idKeys="usercenter,shengcxbh,xiaohcbh" scrollHeight="335" dataFormId="form_xiaohc" remove="NOT"  pageSize="15" back="NOT"
		src="/xiaohc/queryXiaohc.ajax" load="false"  add="NOT" showNum="true">
		<t:fieldLayout prefix="record_xiaohc" columns="3">
			<t:fieldSelect property="usercenter" caption="${i18n.usercenter}" defaultValue="${usercenter}" convert="queryUserCenterMap" width="150"/>
			<t:fieldText property="shengcxbh" caption="${i18n.shengcxbh}" dataType="text" maxLength="5" minLength="5" width="150"/>
			<t:fieldText property="xiaohcbh" caption="${i18n.xiaohcbh}" dataType="text" maxLength="5" width="150"/>
			<t:fieldText property="xiaohcmc" caption="${i18n.xiaohcmc}" width="150" />
			<t:fieldSelect property="biaos" caption="${i18n.biaos}" convert="biaos" defaultValue="1"  width="150"/>
		</t:fieldLayout>
		
		<t:button caption="${i18n.invalidate}" name="del" active="1"/>
		
		<t:gridCol property="usercenter" caption="${i18n.usercenter}" convert="queryUserCenterMap"/>
		<t:gridCol property="shengcxbh" caption="${i18n.shengcxbh}"/>
		<t:gridCol property="xiaohcbh" caption="${i18n.xiaohcbh}" width="120"/>
		<t:gridCol property="xiaohcmc" caption="${i18n.xiaohcmc}" width="120"/>
	
		<t:gridCol property="pianycws" caption="偏移车位数" width="120"/>
		<t:gridCol property="xunhcss" caption="循环车身数" width="120"/>
		<t:gridCol property="beihtqcss" caption="备货提前车身数" width="120"/>
		<t:gridCol property="shangxtqcss" caption="上线提前车身数" width="120"/>
		
		<t:gridCol property="jianglcssxr" caption="将来参数生效日期" width="120"/>
		<t:gridCol property="jianglpycws" caption="将来偏移车位数" width="120"/>
		<t:gridCol property="jianglxhcss" caption="将来循环车身数" width="120"/>
		<t:gridCol property="jianglbhtqcss" caption="将来备货提前车身数" width="120"/>
		<t:gridCol property="jianglsxtqcss" caption="将来上线提前车身数" width="120"/>
		<t:gridCol property="biaos" caption="${i18n.biaos}" convert="biaos" />
		<t:gridCol property="dangqtc" caption="当前趟次" width="120"/>
		<t:gridCol property="jieslsh" caption="结束流水号" width="120"/>
		<t:gridCol property="" caption=""/>
	</t:grid>
				
	
	<t:form dialog="true" id="form_xiaohc" action="/xiaohc/saveXiaohcZxc.ajax" width="500" idKeys="usercenter,shengcxbh,xiaohcbh,dangqtc" reset="NOT" >
		<t:fieldLayout prefix="record1" columns="2" showLabel="true" >
				<t:fieldSelect width="140" property="usercenter" caption="${i18n.usercenter}"  convert="queryUserCenterMap" defaultValue="${usercenter}" notNull="true" />
				<t:fieldText width="140" property="shengcxbh" caption="${i18n.shengcxbh}" dataType="text" maxLength="5" minLength="5" notNull="true" />
				<t:fieldText width="140" property="xiaohcbh" caption="${i18n.xiaohcbh}" dataType="text" maxLength="5" notNull="true"/>
				<t:fieldText width="140" property="xiaohcmc" caption="${i18n.xiaohcmc}" validateSrc=""/>
				
			    <t:fieldCalendar property="jianglcssxr" width="140" column="2" caption="将来参数生效日期" format="yyyy-MM-dd"></t:fieldCalendar>
				<t:fieldText width="140" property="pianycws" caption="偏移车位数" defaultValue="0" notNull="true" expression="^[1-9][0-9]{0,4}$|^0$"
					expressionMessage="只能输入0- 99999之间的值"/>
				<t:fieldText width="140" property="jianglpycws" caption="将来偏移车位数"  expression="^[1-9][0-9]{0,4}$|^0$"
					expressionMessage="只能输入0- 99999之间的值"/>
				<t:fieldText width="140" property="xunhcss" caption="循环车身数" defaultValue="0" notNull="true" expression="^[1-9][0-9]{0,4}$|^0$"
					expressionMessage="只能输入0- 99999之间的值"/>
				<t:fieldText width="140" property="jianglxhcss" caption="将来循环车身数"  expression="^[1-9][0-9]{0,4}$|^0$"
					expressionMessage="只能输入0- 99999之间的值"/>
				<t:fieldText width="140" property="beihtqcss" caption="备货提前车身数" defaultValue="0" notNull="true" expression="^[1-9][0-9]{0,4}$|^0$"
					expressionMessage="只能输入0- 99999之间的值"/>
				<t:fieldText width="140" property="jianglbhtqcss" caption="将来备货提前车身数"  expression="^[1-9][0-9]{0,4}$|^0$"
					expressionMessage="只能输入0- 99999之间的值"/>
				<t:fieldText width="140" property="shangxtqcss" caption="上线提前车身数" defaultValue="0" notNull="true" expression="^[1-9][0-9]{0,4}$|^0$"
					expressionMessage="只能输入0- 99999之间的值"/>
				<t:fieldText width="140" property="jianglsxtqcss" caption="将来上线提前车身数"  expression="^[1-9][0-9]{0,4}$|^0$"
					expressionMessage="只能输入0- 99999之间的值"/>

				<t:fieldSelect width="140" column="2" property="biaos" caption="${i18n.biaos}" convert="biaos" defaultValue="1" notNull="true"/>
				<t:fieldLabel property="111" column="2" caption="模板控制" ></t:fieldLabel>
				<t:fieldText width="140"  property="dangqtc" caption="当前趟次" defaultValue="0" notNull="true"/>
				<t:fieldHidden property="yuanjslsh" caption="原结束流水号" defaultValue="0" />
				<t:fieldText width="140" property="jieslsh" caption="结束流水号" defaultValue="0" notNull="true"/>
		</t:fieldLayout>
		
	</t:form>
	
</t:page>

<script type="text/javascript">

	//标识位
	$.sdcui.serverConfig.convertArray['biaos'] = {
		'1' : '${i18n.youx}',
		'0' : '${i18n.wux}'
	};
	
	
	//初始化页面
	$(document).ready(function() {
		//查询页面子表隐藏
// 		$('#grid_xiaohccx').parent().parent().hide();
		//弹出页面标识不可编辑
		$('#record1_biaos').addClass("disabled");
	});
	

	//空格查询
	function grid_xiaohc_beforeSubmit() {
		$("#record_xiaohc_xiaohcbh").fieldValue(trim($("#record_xiaohc_xiaohcbh").fieldValue()));
		$("#record_xiaohc_shengcxbh").fieldValue(trim($("#record_xiaohc_shengcxbh").fieldValue()));
		$("#record_xiaohc_xiaohcmc").fieldValue(trim($("#record_xiaohc_xiaohcmc").fieldValue()));
	}
	
	
	
	//修改按钮
	function func_button_edit() {
		
		$('#form_xiaohc').form("clear");//清除弹出窗口的数据
		
		$('#form_xiaohc').removeClass('operant-add');//增加的operant为1，修改的operant为2
		
		var record = $("#grid_xiaohc").grid("getSelectedRecords")[0];//选中的行的数据
		//偏移车位数
		if(record.pianycws == null){
			record.pianycws = 0;
			//循环车身数
			record.xunhcss = 0;
			//备货提前期
			record.beihtqcss = 0;
			//上线提前车身数
			record.shangxtqcss = 0;
		}
		if(record.dangqtc == null){
			record.dangqtc = 0;
			record.jieslsh = 0;
		}
		if(record.jieslsh!=null&&record.jieslsh>0){
			$('#record1_jieslsh').addClass("disabled");
			$('#record1_jieslsh input:first').attr("disabled",true);
		}else{
			$('#record1_jieslsh').removeClass("disabled");
			$('#record1_jieslsh input:first').removeAttr("disabled");
		}
		record.yuanjslsh = record.jieslsh;
		$('#form_xiaohc').form('fillRecord', $.extend({}, record));
		
		$("#form_xiaohc").form("open","修改");
		
	}

	
	//监听标识
	function record1_biaos_change() {
		var biaos = $('#record1_biaos').fieldValue();
		//无效可以改为有效
		if('0' == biaos){
			$('#record1_biaos').removeClass("disabled");
			$('#record1_biaos input:first').removeAttr("disabled");
		}else{
			$('#record1_biaos').addClass("disabled");
			$('#record1_biaos input:first').attr("disabled",true);
		}
		return true;
	}
	
	
	//失效按钮
	function func_button_del(){
		if(confirm("${i18n.quersx}")){
			var record = $("#grid_xiaohc").grid("getSelectedRecords");
			
			var params = [];
			params.push("usercenter="+record[0].usercenter);	//用户中心
			params.push("shengcxbh="+record[0].shengcxbh);		//生产线编号
			params.push("xiaohcbh="+record[0].xiaohcbh);		//生产线编号
			
			if('1' == record[0].biaos){
				 $.sdcui.ajaxUtil.ajax({
			 	 	   url:"../xiaohc/removeXiaohc.ajax",
			 	 	   data:params.join('&'),
			 	       success:function (result){
			 	    	    $("#grid_xiaohc").grid("reload");
			 	       }
			     	});
			}else{
				alert("数据已失效");
			}
		}else{
			return false;
		}
		
 	}
	//关闭弹出窗口
	function form_xiaohc_beforeSubmit() {
		//1.验证将来生效日和将来参数都必须同时有值
		var jianglcssxr = $("#record1_jianglcssxr").fieldValue();
		var jianglpycws = $("#record1_jianglpycws").fieldValue();
		var jianglxhcss = $("#record1_jianglxhcss").fieldValue();
		var jianglbhtqcss = $("#record1_jianglbhtqcss").fieldValue();
		var jianglsxtqcss = $("#record1_jianglsxtqcss").fieldValue();
		if(jianglcssxr == "" || jianglcssxr == null ){
			if(jianglpycws != "" 
				||jianglxhcss != ""  
				||jianglbhtqcss != ""
				||jianglsxtqcss != ""){
				alert("若将来参数生效日期值不存在，则将来偏移车位数、将来循环车身数、将来备货提前车身数、将来上线提前车身数都必须不存在值");
				return false;
			}
		}else{
			if(jianglpycws == "" 
				||jianglxhcss == ""  
				||jianglbhtqcss == ""
				||jianglsxtqcss == ""){
				alert("若将来参数生效日期值存在，则将来偏移车位数、将来循环车身数、将来备货提前车身数、将来上线提前车身数都必须有值");
				return false;
			}
		}
		//2.验证结束流水必须大于当前流水
		var yuanjslsh = $("#record1_yuanjslsh").fieldValue();
		var jieslsh = $("#record1_jieslsh").fieldValue();
		if(jieslsh < yuanjslsh){
			alert("修改后的结束流水必须大于当前的结束流水");
			return false;
		}
		return true;
	}

	
	
	//页面初始化
	function initPage(){
		
		$("#record1_xiaohcmc input").blur(function() {
			var xiaohcmc = $("#record1_xiaohcmc").fieldValue();
			if(undefined != xiaohcmc && null != xiaohcmc){
				if (!checkCH(25, xiaohcmc)) {
					alert("${i18n.xiaohcmccd}");
					return false;
				}
			}
			return true;
		});
	}
	
</script>

</t:html>