<%@ include file="fragments/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:import url="/WEB-INF/views/fragments/commonMeta.jsp" />
    <c:import url="/WEB-INF/views/fragments/commonStyle.jsp" />
</head>
<body>
<div class="container-fluid">
    <div class="row-fluid">
        <div id="introduction" class="span12">
            <div class="hero-unit span6 pull-left">
                <h1>Thank you!</h1>
                <p>
                    There is/are now <c:out value="${count}" /> survey(s) completed!
                </p>
            </div>

            <div class="hero-unit span6 pull-left" en>
                <h1>Te&#351;ekk&#252;rler!</h1>
                <p>
                    &#350;u an <c:out value="${count}" /> anket tamamland&#305;!
                </p>
            </div>
        </div>
    </div>
</div>
</body>
</html>