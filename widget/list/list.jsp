<%@ taglib uri="/fis" prefix="fis"%>

<ul class="list">
    <li class="item-1">hello world</li>
    <li class="item-2">hello world</li>
    <li class="item-3">hello world</li>
    <li class="item-4">hello world</li>
    <li class="item-5">hello world</li>
    <li class="item-6">hello world</li>
    <li class="item-7">hello world</li>
    <li class="item-8">hello world</li>
</ul>

<fis:require id="widget/list/list.css"/>
<fis:require id="widget/list/list.js"/>
<fis:script>
    var list = require('widget/list/list.js');
    list.show('list loaded');
</fis:script>
