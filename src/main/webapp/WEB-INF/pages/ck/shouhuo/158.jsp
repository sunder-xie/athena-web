<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="t" uri="http://www.isoftstone.com/sdc/ui"%>
<%request.setAttribute("pageId","158");%>
<t:html i18n="i18n.ck">
	<head>
		<title>${i18n.title_158}</title>
		<jsp:include page="../../common/js.jsp" />
		<script type="text/javascript">
			$(function(){
			    //form  
				$('#form_user_${pageId}').form({
				    onemoredemand:true,
				    onreload:true,
					fields:[
					{fieldType:'fieldText' , property:'lingjbh',caption:'${i18n.lingjbh}',dataType:'letter_numeric',limitedLength:'10',notNull:true},
					{fieldType:'fieldText' , property:'zhengclsh1',caption:'${i18n.liush}',dataType:'letter_numeric',limitedLength:'9'},
					{fieldType:'fieldText' , property:'zhengclsh2',caption:'${i18n.liush}',dataType:'letter_numeric',limitedLength:'9'},
					{fieldType:'fieldText' , property:'gongysdm',caption:'${i18n.gongysdm}',dataType:'letter_numeric',limitedLength:'10'},
					{fieldType:'fieldSelect' , property:'paixfs',caption:'${i18n.paixfs}',includeNull:true,internation:true,src:'<%=request.getContextPath()%>/common/paixfs.do'},
					]
				}); 
                // grid
               $('#grid_user_${pageId}').grid({
					id:'grid_user_${pageId}',
					src:'<%=request.getContextPath()%>/shouhuo/15801.do',
					cols:[
					{property:'yaohlh',caption:'${i18n.baozdykh}'},
					{property:'yaohlztxx',caption:'${i18n.baozdykzt}',internation:true},
				    {property:'peislb',caption:'${i18n.peislb}'},	
					{property:'weiz',caption:'${i18n.weizh}'},
					{property:'zhengclsh',caption:'${i18n.zhengclsh}'},
					{property:'lingjbh',caption:'${i18n.lingjbh}'},
					{property:'lingjmc',caption:'${i18n.lingjmc}'},
					{property:'gongysdm',caption:'${i18n.gongysdm}'},
					{property:'gongysmc',caption:'${i18n.gongysmc}'},
					{property:'lingjsl',caption:'${i18n.lingjsl}'},
					{property:'danw',caption:'${i18n.danw}'}

				],
				buttons:[
			   	 	{name:'search',caption:'${i18n.search}[F1]',keyboard:'F1',action:function(){
			   	 	    $('#grid_user_${pageId}').grid('clearRecords');
					    if(!$('#form_user_${pageId}').form("validateParam")){
 			                return;
	 		              }
						  var params = $('#form_user_${pageId}').form("getFormParam");
						  params.push("currentPage=1");
						  //设置分页条件
						  $('#grid_user_${pageId}').grid("setQueryParams", params);
						   var  url = "<%=request.getContextPath()%>/shouhuo/15801.do";
						   $('#form_user_${pageId}').form("submitUrl", params, url, function(results){
								 if (showPromptRequestMsg(results)==true){
									//加载返回数据
									$('#grid_user_${pageId}').grid('parseResult',results);
									 if (results.result.parameter.list.length > 0){
												$('#grid_user_${pageId}').grid('focus');
										}
								 }
						 });
				    		return false;  	 
					}}
				   ,{name:'back',caption:'${i18n.back}[F11]'}
		           ,{name:'return',caption:'${i18n.return}[F12]'}
				]}); 
  
			  $(document).keyboardsupport({});
		});
		</script>
		
	</head>
	<body>
	<div style="padding:20px;">
		<div id="title"></div>
			<div id="form_user_${pageId}" class="ui-fieldLayout">
				<table class="ui-grid" cellspacing="1" width="100%">
					<tbody >
						<tr>
							<td align="right">${i18n.lingjbh}</td>
							<td align="left"><div class="ui-field" id="lingjbh" ></div></td>
							<td align="right">${i18n.gongysdm}</td>
							<td align="left"><div class="ui-field" id="gongysdm" ></div></td>
						</tr>
						<tr>
							<td align="right">${i18n.liushqj}</td>
							<td><div class="ui-field" style="float:left" id="zhengclsh1"></div><div style="float:left" >至</div><div style="float:left" class="ui-field"  id="zhengclsh2" ></div> </td>
							<td align="right">${i18n.paixfs}</td>
							<td align="left"><div class="ui-field" id="paixfs" ></div></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div id="grid_user_${pageId}" ></div>
			<div id='prompt'>${i18n.prompt}</div>
		</div>
	</body>
<jsp:include page="../../common/bottom.jsp" /></t:html>