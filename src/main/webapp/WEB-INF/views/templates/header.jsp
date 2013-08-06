    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <div class="navbar navbar-fixed-top navbar-inverse">
      <div class="container">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">Arena</a>
        <div class="nav-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href='<c:url value="/dashboard"/>'>Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li class="nav-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
             <li class="pull-right"><a href="#">sfdsj</a></li>
          </ul>
        </div><!--/.nav-collapse -->
         <a class="btn btn-danger pull-right" href="#loginModal" data-toggle="modal" id="signin">sign in</a>
      </div>
    
    </div>
 

  <!-- Modal -->
  <div class="modal fade" id="loginModal">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
          <h4 class="modal-title">Sign In</h4>
        </div>
        <c:url value="/service/loginAuth" var="formAction"/>
			<form class="form-horizontal" action="${formAction}" style="margin-left: 40px;margin-top: 25px;">
				<div class="form-group">
					<label for="inputEmail" class="col-lg-2 control-label">Email</label>
					<div class="col-lg-7">
						<input type="text" class="form-control" id="inputEmail" name="username"
							placeholder="Email">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="col-lg-2 control-label">Password</label>
					<div class="col-lg-7">
						<input type="password" class="form-control" id="inputPassword"
							placeholder="Password">
						<div class="checkbox">
							<label> <input type="checkbox"> Remember me
							</label>
						</div>
						<button type="submit" class="btn btn-default">Sign in</button>
					
					</div>
				</div>
			</form>
		</div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div>
  




