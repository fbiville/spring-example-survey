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
                survey.init(true);
            });
        });
    </script>
</head>
<body>
<div class="container-fluid">
    <div class="row-fluid">
        <c:import url="/WEB-INF/views/fragments/introduction.jsp" />
        <div class="offset1 span10">
            <form:form cssClass="form-horizontal well" modelAttribute="survey" id="surveyForm">
                <fieldset>
                    <legend>Part III &middot; Descriptions & translations</legend>

                    <div class="control-group">
                        <form:label path="question18" cssClass="control-label">Please describe what you see in the picture.</form:label>
                        <img src="<c:url value='/resources/img/q18.jpg' />" class="pull-right img-polaroid"/>
                        <div class="controls">
                            <form:textarea path="question18" cols="8" rows="3" />
                            <div class="errors">
                                <form:errors path="question18" cssClass="alert alert-error pull-left" />
                            </div>
                        </div>
                    </div>

                    <div class="control-group">
                        <form:label path="question19" cssClass="control-label">Please describe what you see in the picture.</form:label>
                        <img src="<c:url value='/resources/img/q19.jpg' />" class="pull-right img-polaroid"/>
                        <div class="controls">
                            <form:textarea path="question19" cols="8" rows="3" />
                            <div class="errors">
                                <form:errors path="question19" cssClass="alert alert-error pull-left" />
                            </div>
                        </div>
                    </div>

                    <p class="lead">Please translate the following sentences into Turkish.</p>
                    <div class="control-group">
                        <form:label path="question20_1" cssClass="control-label">I like Math class, the teacher is friendly.</form:label>
                        <div class="controls">
                            <form:input path="question20_1" />
                            <div class="errors">
                                <form:errors path="question20_1" cssClass="alert alert-error pull-left" />
                            </div>
                        </div>
                    </div>

                    <div class="control-group">
                        <form:label path="question20_2" cssClass="control-label">I am a student.</form:label>
                        <div class="controls">
                            <form:input path="question20_2" />
                            <div class="errors">
                                <form:errors path="question20_2" cssClass="alert alert-error pull-left" />
                            </div>
                        </div>
                    </div>

                    <p class="lead">Please translate the following sentences into English.</p>
                    <div class="control-group">
                        <form:label path="question21_1" cssClass="control-label">Ya&#351;l&#305;lara sayg&#305;l&#305; olmal&#305;y&#305;z.</form:label>
                        <div class="controls">
                            <form:input path="question21_1" />
                            <div class="errors">
                                <form:errors path="question21_1" cssClass="alert alert-error pull-left" />
                            </div>
                        </div>
                    </div>

                    <div class="control-group">
                        <form:label path="question21_2" cssClass="control-label">Kap&#305;da bir adam var.</form:label>
                        <div class="controls">
                            <form:input path="question21_2" />
                            <div class="errors">
                                <form:errors path="question21_2" cssClass="alert alert-error pull-left" />
                            </div>
                        </div>
                    </div>

                </fieldset>

                <div class="control-group">
                    <div class="controls">
                        <input class="btn" type="submit" name="_finish" value="FINISH"/>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</div>
</body>
</html>