<!DOCTYPE HTML>
<html>
<head>
<title>辅检项目查询</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<script src="${resource(dir:'js',file:'jquery-1.9.0.min.js') }" type="text/javascript"></script>

<link href="${resource(dir:'css',file:'queryItem.css') }" type="text/css" rel="stylesheet"/>

</head>


<body>
    
      
     <div id="container">
		<div class="t_top" style="background-color:#66CCCC;">
			<h2 style="color:#FFF;">辅检项目查询</h2>
		</div>
        
        <g:form action="queryItem" name="form1">
		<div class="t_bottom">

			辅检项目名称： <input type="text" name="itemName" id="item" value="${params.itemName }" style="border-radius:10px;"/>
			<input type="button" name="bangding" value="查&nbsp;&nbsp;&nbsp;询" onclick="queryName()"
				style="width: 100px; font-size:18px;height: 35px; background-color: #66CCCC; margin:40px 0px 0px 170px; border-radius:10px; color:#fff" />

		</div>
         </g:form>
         
         <g:if test="${itemList}">
           <div class="tab"> 
             <div class="tab1">辅检项目查询结果：</div>
               <div style="padding: 3px;">
			  <table class="table table-bordered" cellpadding="1" cellspacing="0" style="border-radius:10px; border-color: gray;">
				<thead>
				<tr>
					<td width="178" height="43" style="color:white; font-weight:bold">辅检项目名称</td>
					<td width="178" style=" color:white;font-weight:bold">辅检项目价格(元)</td>
				</tr>
				</thead>
				<g:each in="${itemList}" var="item">
                <tbody>
				<tr>
					<td height="40">${item.st_name }</td>
					<td>${item.st_price}</td>
				</tr>
				</tbody>
				</g:each>
			</table>
			</div>
			</div>
			</g:if>
			
			<g:else>
			   <!--   <img src="${rootPath }/medcalItem/images/fujian.jpg" style="margin:50px 0px 0px 20px;"/>-->
			   <div style="margin-top:20px; text-align: center;">
			<g:if test="${flash.message }">${flash.message }</g:if>
			</div>
			</g:else>
			
			<br>
		</div>
     
    
    
   <script type="text/javascript">
	   
       function queryName(){
    	   var itemName = document.getElementById("item").value;
    	   
    	   if(itemName==""){
    	      alert("请输入您要查询的辅检项目");
    	       } else
               
    	   document.getElementById("form1").submit();
           }
   </script>
	 		
   
   
		
   	 
</body>
</html>   


