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
                    <legend>Part II &middot; Choose the appropriate answer</legend>

                    <div class="control-group">
                        <form:label path="question7" cssClass="control-label">I bought ________ pair of pants and a shirt.</form:label>
                        <div class="controls">
                            <label class="radio"><form:radiobutton path="question7" value="A" />a</label>
                            <label class="radio"><form:radiobutton path="question7" value="AN" />an</label>
                            <label class="radio"><form:radiobutton path="question7" value="THE" />the</label>
                            <label class="radio"><form:radiobutton path="question7" value="-" />-</label>
                            <div class="errors">
                                <form:errors path="question7" cssClass="alert alert-error pull-left" />
                            </div>
                        </div>
                    </div>

                    <div class="control-group">
                        <form:label path="question8" cssClass="control-label">I saw ________ car crash last week.</form:label>
                        <div class="controls">
                            <label class="radio"><form:radiobutton path="question8" value="A" />a</label>
                            <label class="radio"><form:radiobutton path="question8" value="AN" />an</label>
                            <label class="radio"><form:radiobutton path="question8" value="THE" />the</label>
                            <label class="radio"><form:radiobutton path="question8" value="-" />-</label>
                            <div class="errors">
                                <form:errors path="question8" cssClass="alert alert-error pull-left" />
                            </div>
                        </div>
                    </div>

                    <div class="control-group">
                        <form:label path="question9" cssClass="control-label">They are staying in ________ centre.</form:label>
                        <div class="controls">
                            <label class="radio"><form:radiobutton path="question9" value="A" />a</label>
                            <label class="radio"><form:radiobutton path="question9" value="AN" />an</label>
                            <label class="radio"><form:radiobutton path="question9" value="THE" />the</label>
                            <label class="radio"><form:radiobutton path="question9" value="-" />-</label>
                            <div class="errors">
                                <form:errors path="question9" cssClass="alert alert-error pull-left" />
                            </div>
                        </div>
                    </div>

                    <div class="control-group">
                        <form:label path="question10" cssClass="control-label">I think ________ man is very unfriendly.</form:label>
                        <div class="controls">
                            <label class="radio"><form:radiobutton path="question10" value="A" />a</label>
                            <label class="radio"><form:radiobutton path="question10" value="AN" />an</label>
                            <label class="radio"><form:radiobutton path="question10" value="THE" />the</label>
                            <label class="radio"><form:radiobutton path="question10" value="-" />-</label>
                            <div class="errors">
                                <form:errors path="question10" cssClass="alert alert-error pull-left" />
                            </div>
                        </div>
                    </div>

                    <div class="control-group">
                        <form:label path="question11" cssClass="control-label">I don't like ________ tennis.</form:label>
                        <div class="controls">
                            <label class="radio"><form:radiobutton path="question11" value="A" />a</label>
                            <label class="radio"><form:radiobutton path="question11" value="AN" />an</label>
                            <label class="radio"><form:radiobutton path="question11" value="THE" />the</label>
                            <label class="radio"><form:radiobutton path="question11" value="-" />-</label>
                            <div class="errors">
                                <form:errors path="question11" cssClass="alert alert-error pull-left" />
                            </div>
                        </div>
                    </div>

                    <div class="control-group">
                        <form:label path="question12" cssClass="control-label">That is ________ issue between you and me.</form:label>
                        <div class="controls">
                            <label class="radio"><form:radiobutton path="question12" value="A" />a</label>
                            <label class="radio"><form:radiobutton path="question12" value="AN" />an</label>
                            <label class="radio"><form:radiobutton path="question12" value="THE" />the</label>
                            <label class="radio"><form:radiobutton path="question12" value="-" />-</label>
                            <div class="errors">
                                <form:errors path="question12" cssClass="alert alert-error pull-left" />
                            </div>
                        </div>
                    </div>

                    <div class="control-group">
                        <form:label path="question13" cssClass="control-label">________ water is dirty! Don't drink it!</form:label>
                        <div class="controls">
                            <label class="radio"><form:radiobutton path="question13" value="A" />a</label>
                            <label class="radio"><form:radiobutton path="question13" value="AN" />an</label>
                            <label class="radio"><form:radiobutton path="question13" value="THE" />the</label>
                            <label class="radio"><form:radiobutton path="question13" value="-" />-</label>
                            <div class="errors">
                                <form:errors path="question13" cssClass="alert alert-error pull-left" />
                            </div>
                        </div>
                    </div>

                    <div class="control-group">
                        <form:label path="question14" cssClass="control-label">John moved to ________ London.</form:label>
                        <div class="controls">
                            <label class="radio"><form:radiobutton path="question14" value="A" />a</label>
                            <label class="radio"><form:radiobutton path="question14" value="AN" />an</label>
                            <label class="radio"><form:radiobutton path="question14" value="THE" />the</label>
                            <label class="radio"><form:radiobutton path="question14" value="-" />-</label>
                            <div class="errors">
                                <form:errors path="question14" cssClass="alert alert-error pull-left" />
                            </div>
                        </div>
                    </div>

                    <div class="control-group">
                        <form:label path="question15" cssClass="control-label">Celine is ________ French.</form:label>
                        <div class="controls">
                            <label class="radio"><form:radiobutton path="question15" value="A" />a</label>
                            <label class="radio"><form:radiobutton path="question15" value="AN" />an</label>
                            <label class="radio"><form:radiobutton path="question15" value="THE" />the</label>
                            <label class="radio"><form:radiobutton path="question15" value="-" />-</label>
                            <div class="errors">
                                <form:errors path="question15" cssClass="alert alert-error pull-left" />
                            </div>
                        </div>
                    </div>

                    <div class="control-group">
                        <form:label path="question16" cssClass="control-label">The government doesn't care about ________.</form:label>
                        <div class="controls">
                            <label class="radio"><form:radiobutton path="question16" value="POOR" />poor</label>
                            <label class="radio"><form:radiobutton path="question16" value="POORS" />poors</label>
                            <label class="radio"><form:radiobutton path="question16" value="THE POOR" />the poor</label>
                            <label class="radio"><form:radiobutton path="question16" value="THE POORS" />the poors</label>
                            <div class="errors">
                                <form:errors path="question16" cssClass="alert alert-error pull-left" />
                            </div>
                        </div>
                    </div>

                    <div class="control-group">
                        <form:label path="question17" cssClass="control-label">We will go to ________ United States this summer.</form:label>
                        <div class="controls">
                            <label class="radio"><form:radiobutton path="question17" value="A" />a</label>
                            <label class="radio"><form:radiobutton path="question17" value="AN" />an</label>
                            <label class="radio"><form:radiobutton path="question17" value="THE" />the</label>
                            <label class="radio"><form:radiobutton path="question17" value="-" />-</label>
                            <div class="errors">
                                <form:errors path="question17" cssClass="alert alert-error pull-left" />
                            </div>
                        </div>
                    </div>

                </fieldset>

                <div class="control-group">
                    <div class="controls">
                        <input class="btn" type="submit" name="_step3" value="Proceed"/>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</div>
</body>
</html>