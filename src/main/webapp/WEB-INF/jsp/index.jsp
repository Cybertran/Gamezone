<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="container" style="margin-top: 100px;">
<div >
<form:form action="service/save" commandName="user" cssClass="form-horizontal" >

  <div class="form-group">
    <label for="inputEmail" class="col-lg-2 control-label">Full Name:</label>
    <div class="col-lg-4">
      <form:input type="text" class="form-control" id="inputEmail" placeholder="Full Name" path="username"/>
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputPassword" class="col-lg-2 control-label">Enter Email-Id:</label>
    <div class="col-lg-4">
      <form:input type="email" class="form-control" id="Email" placeholder="Password" path="password"/>
   </div>
   </div>
    <div class="form-group">
    <label for="inputPassword" class="col-lg-2 control-label">Enter Password:</label>
    <div class="col-lg-4">
      <form:input type="password" class="form-control" id="Email" placeholder="Password" path="password"/>
   </div>
  </div>
   
	 <div class="form-group">
    <div class="col-lg-4">
      <button type="submit" class="btn btn-default">Create my account</button>
      </div>
      </div>

</form:form>
</div>
<div class="offset3"><a class=" btn btn-default col-lg-4"  href='<c:url value="/dashboard"/>'>Home</a></div>

<h3>Following user inserted</h3>
<c:forEach items="${userList}" var="user">
<ul>
<li>${user.username}</li>

</ul>


</c:forEach>

</div>