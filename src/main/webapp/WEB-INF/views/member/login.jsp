<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<%@ include file="../include/header.jsp" %>
	<style>
	  .Loginbox{
	    margin:100px auto 200px;
	    width:400px;
	    /* height:100vh; */
	    text-align:center;
	  }
	  .Loginbox h1{
	      margin-bottom:20px;
	  }
	  .Loginbox form {
	      background-color:#fff;
	      border:1px solid rgb(73, 124, 64);
	      border-radius:5px;
	      padding:30px 20px;
	  }
	  .Loginbox form input{
	      margin-bottom:10px;
	  }
	  .Loginbox form input:last-child{
	      margin-bottom:0px;
	  }
	  .Loginbox form input.btn{
	      width:100%;
	      background-color:rgb(44, 120, 55);
	      color:#fff;
	      transition:0.3s;
	  }
	  .Loginbox form input.btn:hover, .Loginbox form input.btn:focus{
	      background-color:rgb(31, 89, 39);
	      color:#fff;
	  }
	</style>
</head>
<body>
	<%@ include file="../include/topMenu.jsp" %>
    <article class="Loginbox container">
      <h1><a href="#"><img src="${ path }/resources/images/logo_g.png" alt="logo"/></a></h1>
      <form action="" method="post">
        <input type="text" class="form-control" placeholder="아 이 디" id="user_id" name="user_id">
        <div class="input-group" style="margin-bottom:10px;">
          <input type="password" class="form-control" placeholder="패 스 워 드" id="pw" name="pw">
          <span class="input-group-addon" id="basic-addon1"><span id="eye" class="glyphicon glyphicon-eye-open"></span></span>
        </div>
        <input type="submit" class="btn" value="로 그 인">
      </form>    
      <div>
        <a href="">회원가입</a> /
        <a href="">아이디 찾기</a> /
        <a href="">비밀번호 찾기</a>
      </div>
    </article>
    <script>
      $('#eye').on('mousedown',function(){
        $('#pw').attr('type','text');
        return false;
      })
      $('#eye').on('mouseup',function(){
        $('#pw').attr('type','password');
        return false;
      })
    </script>
	<%@ include file="../include/footer.jsp" %>
</body>
</html>