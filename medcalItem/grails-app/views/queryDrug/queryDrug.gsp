<!DOCTYPE HTML>
<html>
<head>
<title>药品查询</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<link href="${resource(dir:'css',file:'queryItem.css') }" type="text/css" rel="stylesheet" />

<script src="${resource(dir:'js',file:'jquery-1.9.0.min.js') }" type="text/javascript"></script>

<script>
		function show(obj){
			$('#'+obj).toggle();
			}
</script>

</head>

<body>
	 <div id="container">
		<div class="t_top" style="background-color:#66CCCC;">
			<h2 style="color:#FFF;">药品查询</h2>
		</div>
        
        <g:form action="queryDrug" name="form1">
		<div class="t_bottom">

			药品名称： <input type="text" name="drugName" id="drug" value="${params.drugName }" style="border-radius:10px;"/>
			<input type="button" name="bangding" value="查&nbsp;&nbsp;&nbsp;询" onclick="queryName()"
				style="width: 100px;font-size:18px; height: 35px; background-color: #66CCCC; margin:40px 0px 0px 170px; border-radius:10px; color:#fff" />

		</div>
         </g:form>
         
         <g:if test="${drugList}">
           <div class="tab"> 
             <div class="tab1">点击查看详情：</div>
               <div style="padding: 3px;">
               <g:each in="${drugList}" var="drug">
			         <div style="margin:10px 0px 10px 0px; border-bottom:1px  dashed #CDCDCD;">
	           <h3 onClick="show('my-table-${drug.st_id}')" style="color: #ff9900">${drug.st_name }</h3>
						<table id="my-table-${drug.st_id}" style="display:none; margin-left: 15px;">
							<thead>
								<tr style="margin-bottom: 15px;">
									<td width="50px"><strong>名称：</strong></td>
									<td style="text-align:left;">${drug.st_name }</td>
								</tr>
								<tr>
									<td><strong>价格：</strong></td>
									<td style="text-align:left;margin-bottom: 15px;">￥${drug.st_sellprice }</td>
								</tr>
								<tr>
									<td><strong>厂家：</strong></td>
									<td style="text-align:left;margin-bottom: 15px;">${drug.st_factory }</td>
								</tr>
								<tr>
									<td><strong>规格：</strong></td>
									<td style="text-align:left;margin-bottom: 15px;">${drug.st_guige }</td>
								</tr>
							</thead>
						</table>
					</div>
			        
			  </g:each>
		
			  
			   </div>
			</div>
			</g:if>
			
			<g:else>
			   <!--   <img src="${rootPath }/medcalItem/images/tishi.jpg" style="margin:50px 0px 0px 20px;"/>-->
			   <div style="margin-top:20px; text-align: center;">
			<g:if test="${flash.message }">${flash.message }</g:if>
			</div>
			</g:else>
			
			<br>
		</div>
     
    
    
   <script type="text/javascript">
	   
       function queryName(){
    	   var itemName = document.getElementById("drug").value;
    	   
    	   if(itemName==""){
    	      alert("请输入您要查询的药品");
    	       } else
               
    	   document.getElementById("form1").submit();
           }
  </script>	
</body>
</html>


