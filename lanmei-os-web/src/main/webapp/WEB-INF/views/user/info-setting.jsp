<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- base.jsp 路径定义 / 包含 bootstrap 和  jquery 文件-->
<%-- <jsp:include page="/WEB-INF/layouts/common/base.jsp"/> --%>
<%@ include file="/WEB-INF/layouts/common/base.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<title>蓝莓商城-账户设置</title>
		<meta charset="utf-8">
 	    <meta name="viewport" content="width=device-width, initial-scale=1">       
 	    
 	    <script src="${contextPathOfStatic}/js/user/info-setting.js"></script>
 	    <link rel="stylesheet" type="text/css"  href="${contextPathOfStatic}/css/user/info-setting.css">
 	    
 	    <link href="${contextPathOfStatic}/city-select/css/main.css" rel="stylesheet" type="text/css" />
 	    <!--必要样式-->
		<link href="${contextPathOfStatic}/city-select/css/bootstrap.css" rel="stylesheet" type="text/css" />
		<link href="${contextPathOfStatic}/city-select/css/city-picker.css" rel="stylesheet" type="text/css" />

		<script src="${contextPathOfStatic}/city-select/js/city-picker.data.js"></script>
		<script src="${contextPathOfStatic}/city-select/js/city-picker.js"></script>
		<script src="${contextPathOfStatic}/city-select/js/main.js"></script>
	</head>
	
<body>
  
	<jsp:include page="/WEB-INF/layouts/common/header-nav.jsp" />
	   <br>
	   <br>
	   <br>
	   <br>
	   <br>
	<h1 align="center">蓝莓商城</h1>
	<h2 align="center">账户设置</h2>
	   <br>
	   <br>
	<!-- 横线 -->
	<hr style=" height:2px;border:none;border-top:2px solid #FFE7BA;" />
	
	 <div class="container-fluid">
		<div class="row">
			<div class="col-2" >
				<div>
					<img alt="" src="${contextPathOfStatic}/img/user/123.jpg" style="width:100px;height:100px;" >
				</div>
				<br>
				<a href="javascript:void(0);" class="list-group-item active" id="securitySettingbSelect" >安全设置</a>
				<a href="javascript:void(0);" class="list-group-item " id="userInfoSelect">个人资料</a>
				<a href="javascript:void(0);" class="list-group-item" id="AddressSelect">收货地址</a>
				<a href="javascript:void(0);" class="list-group-item" id="transactionInformationSelect">个人交易信息</a>
			</div>
			<div class="col-8">
				<!-- 安全设置显示 -->
				<div class="infoDiv" id="securitySettingDiv" style="display:block">
					<h4>您的基础信息</h4>
					<div>
						<span style="display:block;height:30px;color:#575757">会员名：</span>
						<span style="display:block;height:30px;color:#575757">登录邮箱：</span>
						<span style="display:block;height:30px;color:#575757">绑定手机：</span>						
					</div>
					
					<hr style=" height:2px;border:none;border-top:2px solid #FFE7BA;" />
					<h4>您的安全服务</h4>
					<div>
					    <div>
					    	<span>安全等级</span>
					    	<div class="progress" >
							    <div class="progress-bar" id="findPasswordProgress-bar"role="progressbar" aria-valuenow="60" 
							        aria-valuemin="0" aria-valuemax="100" style="width: 25%; background-color:#EE9572">
							        <span class="sr-only">40% 完成</span>
							    </div>
							</div>
					    </div>
					    
					    <div class="securityTitle" >
					    	<span>身份认证</span>
					    	<p   class="desc" >用于提升账号的安全性和信任级别。认证后的有卖家记录的账号不能修改认证信息。</p>
					    	<button class="securityBtn">认证</button>
					    	<br>
					    	<span class="securityState">状态：未认证</span>
					    </div>
					    <div  class="securityTitle">
					    	<span>登录密码</span>
					    	<p class="desc" >安全性高的密码可以使账号更安全。建议您定期更换密码，且设置一个包含数字和字母，并长度超过6位以上的密码。</p>
					   		<button  class="securityBtn">修改</button>
					   		<br>
					    	<span class="securityState">状态：中等</span>
					    </div>
					    <div class="securityTitle">
					    	<span>密保问题</span>
					    	<p class="desc" >是您找回登录密码的方式之一。建议您设置一个容易记住，且最不容易被他人获取的问题及答案，更有效保障您的密码安全。</p>
					   		<button class="securityBtn">维护</button>
					   		<br>
					    	<span class="securityState">状态：未设置</span>
					    </div>
						<div class="securityTitle">
					    	<span>绑定手机</span>
					    	<p class="desc" >绑定手机后，您即可享受淘宝丰富的手机服务，如手机找回密码等</p>
					    	<button class="securityBtn">修改</button>
					    	<br>
					    	<span class="securityState">状态：已经绑定</span>
					    </div>		
					    <div class="securityTitle">
					    	<span>绑定邮箱</span>
					    	<p class="desc" >绑定邮箱后，可用于手机找回密码等</p>
					    	<button class="securityBtn">修改</button>
					    	<br>
					    	<span class="securityState">状态：未绑定</span>
					    </div>					
					</div>
				</div>
				<!-- 个人资料显示 -->
				<div class="infoDiv" id="userInfoDiv"  style="display:none">
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<label class="col-sm-2 control-label">昵称：</label>
							<div class="col-sm-10">
								<input type="text" class="form-control"/>
							</div>
							
							<label class="col-sm-2 control-label">真实姓名：</label>
							<div class="col-sm-10">
								<input type="text" class="form-control"/>
							</div>
							
							<label class="col-sm-2 control-label">真实姓名：</label>
							<div class="col-sm-10">
								<input type="text" class="form-control"/>
							</div>
							<label class="col-sm-2 control-label">性别：</label>
							<div style="">
								<label class="radio-inline">
								<input type="radio" name="optionsRadiosinline" id="optionsRadios3" value="option1" checked> 男
								</label>
								<label class="radio-inline">
									<input type="radio" name="optionsRadiosinline" id="optionsRadios4"  value="option2"> 女
								</label>
							</div>						
						</div>
					</form>
				</div>
				
				<!-- 收货地址显示 -->
				<div class="infoDiv" id="AddressDiv"  style="display:none">
					收货地址
					<div class="docs-methods">
						<form class="form-inline">
							<div id="distpicker">
								<div class="form-group">
									<div style="position: relative;">
										<input id="city-picker3" class="form-control" readonly type="text" value="江苏省/常州市/溧阳市" data-toggle="city-picker">
									</div>
								</div>
								<div class="form-group">
									<button class="btn btn-warning" id="reset" type="button">重置</button>
									<button class="btn btn-danger" id="destroy" type="button">确定</button>
								</div>
							</div>
						</form>
					</div>
				</div>
				
				<!-- 个人交易信息显示 -->
				<div class="infoDiv" id="transactionInformationDiv"  style="display:none">
					个人交易信息
				</div>
				
				
				
			</div><!-- end of div class="col-8  -->
			<div class="col-2">
			</div>
		</div><!-- end of  div class="row" -->
	</div><!-- end of div class="container-fluid"  -->
	
	<jsp:include page="/WEB-INF/layouts/common/footer.jsp" />
</body>

</html>