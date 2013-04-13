<%@ include file="fragments/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:import url="/WEB-INF/views/fragments/commonMeta.jsp" />
    <c:import url="/WEB-INF/views/fragments/commonStyle.jsp" />
    <c:import url="/WEB-INF/views/fragments/commonScript.jsp" />
    <script type="text/javascript">
        require(['jquery', 'modules/survey'], function($, survey) {
            $(document).ready(function() {
                survey.init(<c:out value='${!start}' />);
            });
        });
    </script>
</head>
<body>
<div class="container-fluid">
    <div class="row-fluid">
        <c:import url="/WEB-INF/views/fragments/introduction.jsp">
            <c:param name="start" value="${start}" />
        </c:import>
        <div class="offset1 span10">
            <form:form method="POST" cssClass="form-horizontal well" modelAttribute="survey" id="surveyForm">
                <fieldset>
                    <legend>Part I &middot; Demographic Questions</legend>

                    <div class="control-group">
                        <form:label path="question1" cssClass="control-label">What is your age?</form:label>
                        <div class="controls">
                            <form:input path="question1" placeholder="enter your age" />
                            <div class="errors">
                                <form:errors path="question1" cssClass="alert alert-error" />
                            </div>
                        </div>
                    </div>

                    <div class="control-group">
                        <form:label path="question2" cssClass="control-label">What is your gender?</form:label>
                        <div class="controls">
                            <label class="radio"><form:radiobutton path="question2" value="FEMALE" />Female</label>
                            <label class="radio"><form:radiobutton path="question2" value="MALE" />Male</label>
                            <div class="errors">
                                <form:errors path="question2" cssClass="alert alert-error" />
                            </div>
                        </div>
                    </div>

                    <div class="control-group">
                        <form:label path="question3" cssClass="control-label">In what city do you currently live?</form:label>
                        <div class="controls">
                            <form:input path="question3" placeholder="enter your city" />
                            <div class="errors">
                                <form:errors path="question3" cssClass="alert alert-error" />
                            </div>
                        </div>
                    </div>

                    <div class="control-group">
                        <form:label path="question4" cssClass="control-label">Are you going to a public or private school?</form:label>
                        <div class="controls">
                            <label class="radio"><form:radiobutton path="question4" value="PUBLIC" />Public</label>
                            <label class="radio"><form:radiobutton path="question4" value="PRIVATE" />Private</label>
                            <div class="errors">
                                <form:errors path="question4" cssClass="alert alert-error" />
                            </div>
                        </div>
                    </div>

                    <div class="control-group">
                        <form:label path="question5" cssClass="control-label">What is your level of English?</form:label>
                        <div class="controls">
                            <label class="radio"><form:radiobutton path="question5" value="BEGINNER" />Beginner</label>
                            <label class="radio"><form:radiobutton path="question5" value="ELEMENTARY" />Elementary</label>
                            <label class="radio"><form:radiobutton path="question5" value="PRE-INTERMEDIATE" />Pre-intermediate</label>
                            <label class="radio"><form:radiobutton path="question5" value="INTERMEDIATE" />Intermediate</label>
                            <label class="radio"><form:radiobutton path="question5" value="UPPER-INTERMEDIATE" />Upper-intermediate</label>
                            <label class="radio"><form:radiobutton path="question5" value="ADVANCED" />Advanced</label>
                            <div class="errors">
                                <form:errors path="question5" cssClass="alert alert-error" />
                            </div>
                        </div>
                    </div>

                    <div class="control-group">
                        <form:label path="question6" cssClass="control-label">When did you start learning English?</form:label>
                        <div class="controls">
                            <form:input path="question6" type="month" placeholder="YYYY-MM" />
                            <div class="errors">
                                <form:errors path="question6" cssClass="alert alert-error" />
                            </div>
                        </div>
                    </div>

                </fieldset>

                <div class="control-group">
                    <div class="controls">
                        <input class="btn" type="submit" name="_step2" value="Proceed"/>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</div>
</body>
</html>