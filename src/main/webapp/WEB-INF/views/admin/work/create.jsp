<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ch">
<%@ include file="../common/meta.jsp"%>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/ace/admin.item.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/falgun/bootbox.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/falgun/bootstrap-datetimepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/falgun/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$(".date").datetimepicker({
			language:  'zh-CN',
	        weekStart: 1,
	        todayBtn:  1,
	        format:'yyyy-mm-dd',
			autoclose: 1,
			todayHighlight: 1,
			startView: 2,
			minView: 2,
			forceParse: 0
	    });
		if("${tip}" != null && "${tip}" != ""){
			noty({"text":"${tip}","layout":"top","type":"success","timeout":"2000"});
		}
	});
</script>
</head>
	
	<script type="text/javascript">
		$(function() {
		});
	</script>
</head>
<body>
	<div class="layout">
		<!-- top -->
		<%@ include file="../top.jsp"%>
		<!-- 导航 -->
		<%@ include file="../menu.jsp"%>
		<div class="main-wrapper">
			<div class="container-fluid">
				<div class="row-fluid ">
					<div class="span12">
						<div class="content-widgets ">
						<div class="widget-head  bondi-blue">
							<h3>社团活动登记单</h3>
						</div>
						<div class="widget-container">
							<form id='dayoffform' class="form-horizontal " method="post" action="work/save">
								<table id='' class=" responsive table table-striped table_bordered_black table-condensed formtable" >
									<tr>
										<td colspan="4">
											<div class="table_title">
												 <h3>社团活动登记单</h3> 
											</div>
										</td>
									</tr>
									
									<tr>
										<td class='lable' >活动日期</td><td><div class="input-append date">
											 <input id="createDate" name="workDate" type="text" readonly="readonly" class="form_datetime">
											 <span class="add-on"><i class="icon-th"></i></span>
										    </div></td>
										<td class='lable'>活动名称</td><td><input type="text" value=" " name='name'></input></td>
									</tr>
									<tr>
										<td class='lable' >策划社团</td><td>
											<select name="club.id" style="width: 70%" >
												<c:forEach items="${clubs }" var="bean">
													<option value="${bean.id }">${bean.name }</option>
												</c:forEach>
											</select>
										</td>
										<td class='lable'  >活动策划人</td><td><input type="text" value=" " name='creater'></input></td>
									</tr>
									
									<tr>
										<td class='lable' >参与人数</td><td><input type="text" value=" " name='num'></input></td>
										<td class='lable'  >参与对象</td><td><input type="text" value=" " name='who'></input></td>
									<tr>
										<td class='lable'>活动地点</td>
										<td class='lable'colspan="3" ><input type="text" value="" name='addr' style="width: 98%"></input></td>
									</tr>
									<tr>
										<td class='lable'>活动准备：<span class="text-error">*</span></td>
										<td colspan="3" ><textarea  name='remark1' style="width: 90%" rows="2" cols=""></textarea> </td>
									</tr>
									<tr>
										<td class='lable'>活动目标：<span class="text-error">*</span></td>
										<td colspan="3" ><textarea  name='remark2' style="width: 90%" rows="2" cols=""></textarea> </td>
									</tr>
									<tr>
										<td class='lable'>活动内容：<span class="text-error">*</span></td>
										<td colspan="3" ><textarea  name='remark3' style="width: 90%" rows="2" cols=""></textarea> </td>
									</tr>
									<tr  class='remark'>
										<td colspan="4">
											<ol>
											  <li>资料填写必须详细</li>
											</ol>
										</td>
									</tr>
								</table>
								<div >
									<button type="submit" class="btn btn-primary" >提交</button>
								</div>
							</form>
						</div>
					</div>
					
					</div>
				</div>
			</div>
		</div>
		<%@ include file="../foot.jsp"%>
	</div>
</body>
</html>