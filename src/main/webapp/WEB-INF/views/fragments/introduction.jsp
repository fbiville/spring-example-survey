<%@ include file="taglib.jsp"%>
<div id="introduction" class="span12">
    <div class="hero-unit span6 pull-left">
        <h1>Hello!</h1>
        <p>
            My name is Dilek Yildirim and I am a master student at Salamanca University. First of all I would like to
            thank you to contribute this study by answering the questions in this survey. It is designed to analyze
            your article knowledge in English. None of your personal data will be shared to third parties. Please
            answer those questions correctly and clearly.
        </p>
        <p>Thanks!</p>
        <c:if test="${param.start}">
        <p>
            <a class="start btn btn-primary btn-large">
                Start survey
            </a>
        </p>
        </c:if>
    </div>

    <div class="hero-unit span6 pull-left" en>
        <h1>Merhaba!</h1>
        <p>
            &#304;smim Dilek Yildirim ve Salamanca &Uuml;niversitesi&rsquo;nde master &ouml;&#287;rencisiyim. &Ouml;ncelikle bu anketteki
            sorular&#305; yan&#305;tlayarak &ccedil;al&#305;&#351;mama yard&#305;mc&#305; oldu&#287;unuz i&ccedil;in te&#351;ekk&uuml;r ederim. Anketteki sorular
            &#304;ngilizcede &ldquo;article&rdquo; denilen tan&#305;ml&#305;k denilen a,an, the kullan&#305;m bilginizi &ouml;l&ccedil;mektedir. Ki&#351;isel verileriniz
            &uuml;&ccedil;&uuml;nc&uuml; &#351;ah&#305;slarla payla&#351;&#305;lmayacakt&#305;r. L&uuml;tfen bu sorular&#305; do&#287;ru ve a&ccedil;&#305;k &#351;ekilde cevaplay&#305;n&#305;z.
        </p>
        <p>Te&#351;ekk&#252;rler</p>
        <c:if test="${param.start}">
        <p>
            <a class="start btn btn-primary btn-large">
                Ankete ba&#351;la
            </a>
        </p>
        </c:if>
    </div>
</div>