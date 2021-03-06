<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="t" uri="http://www.isoftstone.com/sdc/ui"%>
<%request.setAttribute("pageId","15905");%>
<t:html i18n="i18n.ck">
	<head>
		<title>${i18n.title_15905}</title>
		<jsp:include page="../../common/js.jsp" />
		<script type="text/javascript">
			$(function(){
				  //form  
				$('#form_user_${pageId}').form({
					fields:[
					{fieldType:'fieldText' , property:'uch',caption:'${i18n.uch}',dataType:'uch1',notNull:true}
					]
				}); 
					
				$('#form_info_${pageId}').form({
					fields:[
					{fieldType:'fieldLabel' , property:'ush',caption:'${i18n.ush}'},
					{fieldType:'fieldLabel' , property:'elh',caption:'${i18n.elh}'},
					{fieldType:'fieldLabel' , property:'gongysdm',caption:'${i18n.gongysdm}'},
					{fieldType:'fieldLabel' , property:'gongysmc',caption:'${i18n.gongysmc}'},
					{fieldType:'fieldLabel' , property:'lingjbh',caption:'${i18n.lingjbh}'},
					{fieldType:'fieldLabel' , property:'lingjmc',caption:'${i18n.lingjmc}'},
					{fieldType:'fieldLabel' , property:'baozzt',caption:'${i18n.baozzt}'},
					{fieldType:'fieldLabel' , property:'rukrq',caption:'${i18n.rukrq}'},
					{fieldType:'fieldLabel' , property:'ruklxxx',caption:'${i18n.ruklx}'},
					{fieldType:'fieldLabel' , property:'ckandzick',caption:'${i18n.cangkbh}'},
                    {fieldType:'fieldLabel' , property:'beiz',caption:'${i18n.beiz}'},
					{fieldType:'fieldLabel' , property:'usxh',caption:'${i18n.usxh}'}
					]
				}); 
                // grid
               $('#grid_user_${pageId}').grid({
                    keyFields:['baozzt','uch','mudd','lingjsl','chukrq','baozztxx','danw'],
					id:'grid_user_${pageId}',
					showNum:true,
					enableCutPage:false,
					src:'<%=request.getContextPath()%>/shouhuo/15905.do',
					cols:[
					{property:'uch',caption:'${i18n.uch}'},
					{property:'mudd',caption:'${i18n.mudd}'},
					{property:'lingjsl',caption:'${i18n.lingjsl}'},
					{property:'chukrq',caption:'${i18n.chukrq}'},
					{property:'baozztxx',caption:'${i18n.baozzt}',internation:true},
					{property:'danw',caption:'${i18n.danw}'}

				],
		 	buttons:[
				 	   {name:'select',caption:'${i18n.search}[F1]',keyboard:'F1',action:function(){
					 	  $('#grid_user_${pageId}').grid('clearRecords');
					 	  $('#form_info_${pageId}').form('clearValue');
		                  //参数校验
					 	  if(!$('#form_user_${pageId}').form("validateParam")){
		 			            return;
			 		        }
						   var params = $('#form_user_${pageId}').form("getFormParam");
						   var url = "<%=request.getContextPath()%>/shouhuo/15905.do";
					 		$('#form_user_${pageId}').form("submitUrl", params, url, function(results){
					 			 if (showPromptRequestMsg(results)==true){
					 			       $('#ush span').html(results.result.parameter.ush);
					 			       $('#elh span').html(results.result.parameter.elh);
					 			       $('#usxh span').html(results.result.parameter.usxh);
					 			       $('#gongysdm span').html(results.result.parameter.gongysdm);
									   $('#gongysmc span').html(results.result.parameter.gongysmc);
									   $('#lingjbh span').html(results.result.parameter.lingjbh);
									   $('#lingjmc span').html(results.result.parameter.lingjmc);
									   $('#baozzt span').html($.sdcui.resource.i18n[results.result.parameter.baozztxx]);
									   $('#rukrq span').html(results.result.parameter.rukrq);
									   $('#ruklxxx span').html($.sdcui.resource.i18n[results.result.parameter.ruklxxx]);
									   $('#beiz span').html(results.result.parameter.beiz);
									   $('#ckandzick span').html(results.result.parameter.ckandzick);
					 			       $('#grid_user_${pageId}').grid('parseResult',results);
					 			        if (results.result.parameter.list.length > 0){
												$('#grid_user_${pageId}').grid('focus');
											}
					 			       
					 			    }
					 	    });
				    		return false;
					 	}}
					 	 //huxy_11470
					 	  ,{name:'print',caption:'${i18n.print}[F8]',keyboard:'F8',action:function(){
							var params = $('#form_info_${pageId}').form("getFormParam");
							var records = $('#grid_user_${pageId}').grid("getRecordAll");
							params=params.concat(records);
					 		var url = "<%=request.getContextPath()%>/shouhuo/15910.do";
					 		$('#form_user_${pageId}').form("submitUrl", params, url, function(results){
					 		if (showPromptRequestMsg(results)==true){
									  
							}})
				    		return false;
				     	}}
                         ,{name:'usck',caption:'${i18n.usck}[F6]',keyboard:'F6',action:function(){
                          	//判定是否有数据被选中 
          		    	   var params=[];
                          	params.push("ush="+$('#ush span').html());
  	                        var url = "<%=request.getContextPath()%>/shouhuo/15904.do";
  	    			 		$('#form_user_${pageId}').form("submitUrl", params, url, function(results){
  	    			 			 if (showPromptRequestMsg(results)==true){
  	    			 			    	if(results.result.response != 'C_1403'){
  	    					 				//加载返回数据
  	    									var strJSON=JSON.stringify(results);
  	    									$('#putvalue').val(strJSON);
  	    									$("#putform").attr("action","<%=request.getContextPath()%>/shouhuo/P15904.do"+st_Params);
  	    		    			    		document.putform.submit();
  	    		    			    	 }
  	    						 }
  	    					});
  	    					return false;
                          }}
                       <%--  ,{name:'back',caption:'${i18n.back}[F11]',keyboard:'F11',action:function(){
                          window.location.href="<%=request.getContextPath()%>/shouhuo/159.do"+st_Params;
						  return true;
                         }} --%>
                        ,{name:'back',caption:'${i18n.back}[F11]'}
                        ,{name:'return',caption:'${i18n.return}[F12]'}
		 	        ]
					}); 
				
		//页面加载后，查询数据为界面赋值
			$(document).ready(function(){
				//加载返回数据
				if('${result}'!=''){
					var result = JSON.parse('${result}');
				   $('#ush span').html(result.result.parameter.ush);
 			       $('#elh span').html(result.result.parameter.elh);
 			       $('#usxh span').html(result.result.parameter.usxh);
 			       $('#gongysdm span').html(result.result.parameter.gongysdm);
				   $('#gongysmc span').html(result.result.parameter.gongysmc);
				   $('#lingjbh span').html(result.result.parameter.lingjbh);
				   $('#lingjmc span').html(result.result.parameter.lingjmc);
				   $('#baozzt span').html($.sdcui.resource.i18n[result.result.parameter.baozztxx]);
				   $('#rukrq span').html(result.result.parameter.rukrq);
				   $('#ruklxxx span').html($.sdcui.resource.i18n[result.result.parameter.ruklxxx]);
				   $('#beiz span').html(result.result.parameter.beiz);
				   $('#ckandzick span').html(result.result.parameter.ckandzick);
			       $('#grid_user_${pageId}').grid('parseResult',result.result);
				}
			});
			  $(document).keyboardsupport({});
		});
		</script>
		
	</head>
	<body>
		<div style="padding:20px;">
		<div id="title"></div>
		<form id="putform" method="post" name="putform">
				<input id="putvalue" name="putvalue" type="Hidden"></input>
			</form> 
			<div id="form_user_${pageId}" class="ui-fieldLayout">
				<table class="ui-grid" cellspacing="1" width="100%">
					<tbody >
						<tr>
							<td >${i18n.uch}</td>
							<td ><div class="ui-field" id="uch" ></div></td>
						</tr>
					</tbody>
				</table>
			</div>	
			
			<div id="form_info_${pageId}" class="ui-fieldLayout">
				<table class="ui-grid" cellspacing="1" width="100%">
					<tbody >
						<tr>
						    <td >${i18n.ush}</td>
							<td ><div class="ui-field" id="ush" ></div></td> 
							<td >${i18n.elh}</td>
							<td ><div class="ui-field" id="elh" ></div></td> 
						    <td >${i18n.usxh}</td>
							<td ><div class="ui-field" id="usxh" ></div></td>					    
						</tr>
						<tr>
						    <td >${i18n.gongysdm}</td>
							<td ><div class="ui-field" id="gongysdm" ></div></td>
							<td >${i18n.gongysmc}</td>
							<td ><div class="ui-field" id="gongysmc" ></div></td>
						    <td >${i18n.beiz}</td>
							<td ><div class="ui-field" id="beiz" ></div></td>
					    </tr>
						<tr>
						    <td >${i18n.lingjbh}</td>
						    <td ><div class="ui-field" id="lingjbh" ></div></td>
							<td >${i18n.lingjmc}</td>
							<td ><div class="ui-field" id="lingjmc" ></div></td>
							<td >${i18n.baozzt}</td>
						    <td ><div class="ui-field" id="baozzt" ></div></td>					    
						</tr>
						<tr>
						    <td >${i18n.rukrq}</td>
						    <td ><div class="ui-field" id="rukrq" ></div></td>
							<td >${i18n.ruklx}</td>
							<td ><div class="ui-field" id="ruklxxx" ></div></td>
							<td >${i18n.cangkbh}</td>
						    <td ><div class="ui-field" id="ckandzick" ></div></td>					    
						</tr>
					</tbody>
				</table>
			</div>	
			<div id="grid_user_${pageId}" ></div>
			<div id='prompt'>${i18n.prompt}</div>
		</div>
	</body>
<jsp:include page="../../common/bottom.jsp" /></t:html>