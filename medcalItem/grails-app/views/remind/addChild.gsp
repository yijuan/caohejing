<!DOCTYPE HTML>
<html>
<head>
<title>计免儿保提醒</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<script src="${resource(dir:'js',file:'jquery-1.9.0.min.js') }" type="text/javascript"></script>

<link href="${resource(dir:'css',file:'remind.css') }" type="text/css"
	rel="stylesheet" />


<script>
function test(){
	if(document.getElementById("che1").checked){
		document.getElementById("vaccineName").disabled=true
		document.getElementById("injectTime").style.display='none'}
		
	}
	
	function te(){
		if(document.getElementById("che2").checked){
		document.getElementById("vaccineName").disabled=false
		document.getElementById("injectTime").style.display=''
		}
		}
  
</script>
</head>

<body>
    <div id="container">
        <div class="t_top" style=" height:50px; background-color:#66CCCC; line-height:50px; margin-bottom:15px;">
         <h2 style="color:white;">请添加儿童信息</h2>
        </div>
    <g:form controller="DealRemind" action="dealRemind" name="form1">
      <div class="t_bottom" style="text-align: center; line-height: 50px;">
        
          <input type="text"  style="border-radius:10px; height: 35px;"  name="userName" id="userName" value="姓名"/>
          <select style=" width:300px; margin-top:20px;" name="sex">
             <option id="sex">性别 </option>
             <option id="man">男</option>
             <option id="woman">女</option>
          </select>
          
         <div  class="age">
  		出生日期:<g:datePicker name="myDate" value="${new Date()}" precision="day" years="${2010..2015}" />
         </div>
         
      <div style="text-align: left; margin-left:45px;">
          是否打过疫苗：<input type="radio" name="check" checked="checked" id="che2" onClick="te()"/>有&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a><input type="radio" name="check" id="che1" onClick="test()"/>没有
         </div>
         
          <select id="vaccineName" name="vaccineName" style=" width:300px; margin-top:20px;">
               <g:each in="${vaccineList}" var="l">
                   <option>${l.name}</option>
               </g:each>
          </select>
      
         <div  class="age" id="injectTime">
  		注射日期:<g:datePicker name="injectDate" value="${new Date()}" precision="day" years="${2010..2015}" />
         </div>
          
          <input type="button" name="bangding" value="添&nbsp;&nbsp;加" onclick="subform()" style="font-size:18px;width:300px; height: 40px;color:#FFF; font-weight:bold; background-color:#66CCCC; border-radius:10px;"/>
          </div>
       
       
       </g:form>
         <div style="width:350px; height:150px; margin-top:20px; margin:70px 0px 0px 15px; background-color:#EAEAEA;border-radius:5px;">
             <span style="color:#ff9900; font-size:16px; font-weight:bold; margin:10px 0px 0px 5px;"> 温馨提示：</span><br>
              <span style="margin:20px 0px 10px 40px;">1:如果您想查询其他账户信息请更改用户 信息 </span><br>
              <span style="margin:20px 0px 10px 40px;">2:本结果仅供参考，正式结果以有医师签名的报告单为准</span><br><br>
              <span style="margin:20px 0px 10px 40px;">3:请您填入自己的真实信息，以便查询准确</span>
         </div>
      
      </div>
   
  	 <script>
  	   function subform(){
  	       alert("提交成功");
  	       document.getElementById("form1").submit();
  	   }
  	 </script>
</body>
</html>   


