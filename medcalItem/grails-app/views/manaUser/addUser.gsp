<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>添加用户</title>
</head>

<body>
   
   <div>
     <g:form action="show">
       <p>姓名：<input type="text" name="userName"/></p>
       <p>密码：<input type="password" name="password"/></p>
       
       <p>请为用户选定角色：
          <select name="userRole">
             <g:each in="${roleList }" var="r">
                <option id="${r.id }">${r.authority }</option>
             </g:each>
          </select>
       </p>
         
       <p>是否有效：<input type="checkbox" name="check"/></p>
       
       <p><input type="submit" value="提交"/></p>
     </g:form>
   </div>
     
</body>
</html>
