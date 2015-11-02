<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ attribute name="name" required="true" rtexprvalue="true"
              description="Name of corresponding property in bean object" %>
<%@ attribute name="label" required="true" rtexprvalue="true"
              description="Label appears in red color if input is considered as invalid after submission" %>

<spring:bind path="${name}">
    <c:set var="cssGroup" value="form-group ${status.error ? 'has-error' : '' }"/>
    <div class="${cssGroup}">
        <form:input path="${name}" class="form-control" placeholder="${label}"/>
        <span class="help-inline text-danger">${status.errorMessage}</span>
    </div>
</spring:bind>