<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<meta http-equiv="Pragma" content="no-cache"> 
<meta http-equiv="Cache-Control" content="no-cache"> 
<meta http-equiv="Expires" content="0"> 
<title>用户登陆</title>
<link href="css/login.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div class="login_box">
      <div class="login_l_img"><img src="img/login-img.png" /></div>
      <div class="login">
          <div class="login_logo"><a href="#"><img src="img/login_logo.png" /></a></div>
          <div class="login_name">
               <p>用户登陆</p>
          </div>

          <form method="post" action="${pageContext.request.contextPath }/myWeb/userLogin">
              <input name="ue" type="text"  value="用户名" required="required" onfocus="this.value=''" onblur="if(this.value==''){this.value='用户名'}">
              <span id="password_text" onclick="this.style.display='none';document.getElementById('password').style.display='block';document.getElementById('password').focus().select();" >密码</span>
<input name="password" type="password" required="required" id="password" style="display:none;" onblur="if(this.value==''){document.getElementById('password_text').style.display='block';this.style.display='none'};"/>
           
                     <div class="tip" >
		<c:if test="${!empty failMsg }">
				<div class="alert alert-danger" >${failMsg }</div>
		</c:if>
		</div>
              <input value="登录" style="width:100%;" type="submit">
          </form>
          
      </div>
      <div class="copyright">某某有限公司 版权所有©2016-2018 技术支持电话：000-00000000</div>
</div>
</body>
</html>