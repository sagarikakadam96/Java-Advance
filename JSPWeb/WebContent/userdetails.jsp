<!-- 3.JavaBean -->
<jsp:useBean id="userinfo" class="com.lti.Details"></jsp:useBean>
<jsp:setProperty property="*" name="userinfo"/>
You have entered below details: <br>
<jsp:getProperty property="username" name="userinfo"/>
<jsp:getProperty property="password" name="userinfo"/>
<jsp:getProperty property="age" name="userinfo"/>