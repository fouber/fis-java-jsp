<%@ taglib uri="/fis" prefix="fis"%>

<div class="header">
    <div class="header-banner"><img src="img/w6.jpg"/></div>
    <div class="header-nav">
        <jsp:include page="../nav/nav.jsp"/>
    </div>
</div>

<fis:require id="widget/header/header.css"/>
<fis:require id="widget/header/header.js"/>
<fis:require id="widget/header/header.jss"/>
<fis:script>
    var header = require('widget/header/header.js');
    header.show('header loaded');
</fis:script>