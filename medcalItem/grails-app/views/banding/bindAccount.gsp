<!DOCTYPE HTML>
<html>
<head>
<title>账户绑定</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<script src="${resource(dir:'js',file:'jquery-1.9.0.min.js') }"
	type="text/javascript"></script>

<link href="${resource(dir:'css',file:'bangding.css') }" type="text/css"
	rel="stylesheet" />

<script>
		function checkuser(){
			   var userName = document.getElementById("userName").value;
			   
	   
	   function checknum(){
		      var num = document.getElementById("num").value;
		   }
	     
		   function checkid(){
			   var idcard = document.getElementById("idCard").value;
			   if (!(/(^\d{15}$)|(^\d{17}([0-9]|X)$)/.test(idcard)))   
	          { 
                alert('输入的身份证号长度不对，或者号码不符合规定！\n15位号码应全为数字，18位号码末位可以为数字或X。'); 	    
			   }
			   }

	function subForm(){
		var userName = document.getElementById("userName").value;
 	    var num = document.getElementById("num").value;
 	    var idcard = document.getElementById("idCard").value
 	    if(userName=="" ||num==""||idcard==""){
 	      alert("请输入您的用户信息");
 	       } else{
            
      alert("您已经提交成功。。");
      document.getElementById("form1").submit();}
		}
</script>

</head>

<body>
	<div id="container">
		<div class="t_top">
			<h2>账户绑定</h2>
		</div>

		<p>请输入您的用户信息:</p>
		<g:form controller="DealBind" action="deal" name="form1">
		<div class="t_bo">

			 <div>  姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：<input type="text" name="userName" id="userName" onfocus="checkuser()" /> </div>
			<div> 医保卡卡号： <input type="text" name="medicalNum"  id="num" onfocus="checknum()"/> </div>
			<div> 身份证号码： <input type="text" name="idcard" id="idCard" onfocus="checkid()" /> </div>
		    <div>  <input type="button" name="bangding" value="绑&nbsp;&nbsp;&nbsp;定" style="font-size:18px;width: 300px; height: 40px;color:#FFF; font-weight:bold; background-color:#66CCCC;" onclick="subForm()"/></div>
 
		</div>
		
		    <div class="tx">
			  <span class="lab"> 温馨提示：</span><br>
              <span class="tex">1:如果您想查询其他账户信息请更改用户 信息 </span><br>
              <span class="tex">2:本结果仅供参考，正式结果以有医师签名的报告单为准</span><br><br>
              <span class="tex">3:请您填入自己的真实信息，以便查询准确</span>
			</div>
      </g:form>

	</div>





</body>
</html>



