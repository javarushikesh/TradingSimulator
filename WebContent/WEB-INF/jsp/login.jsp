    <%@ include file="/WEB-INF/jsp/templates/taglibs.jsp" %>
    <br>
    <br>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Please Sign In</h3>
                    </div>
                    <div class="panel-body">
                        <form:form role="form" method="post" modelAttribute="user">
                            <fieldset>
								<tradsim:inputField name="email" label="Email"/>
                                <tradsim:passwordField name="password" label="Password"/>
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <button class="btn btn-lg btn-success btn-block" type="submit">Login</button>
                                <div><br>
                                    <h5 class="panel-text">Not a Member? Please <a href="/TradingSimulator/signup">Sign Up</a></h5>
                                </div>
                            </fieldset>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>