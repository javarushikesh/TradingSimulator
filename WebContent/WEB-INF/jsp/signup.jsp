    <%@ include file="/WEB-INF/jsp/templates/taglibs.jsp" %>
    <br>
    <br>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Sign Up</h3>
                    </div>
                    <div class="panel-body">
                        <form:form role="form" method="post" modelAttribute="userDtls">
                            <fieldset>
                                <tradsim:inputField name="firstName" label="First Name"/>
                                <tradsim:inputField name="lastName" label="Last Name"/>
                                <tradsim:inputField name="email" label="Email"/>
                                <tradsim:passwordField name="password" label="Password"/>
                                <tradsim:passwordField name="confirmPassword" label="Confirm Password"/>
                                <div class="checkbox">
                                    <label>
                                        <input name="agreetoterms" type="checkbox" value="Agree To Terms">Agree To Terms
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <button class="btn btn-lg btn-success btn-block" type="submit">Sign Up</button>
                                <div><br>
                                    <h5 class="panel-text">Already a Member? Please <a href="/TradingSimulator/login">Log In</a></h5>
                                </div>
                            </fieldset>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>    