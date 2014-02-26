<%--
//
// (c) 2006 DS Data Systems UK Ltd, All rights reserved.
//
// DS Data Systems and KonaKart and their respective logos, are 
// trademarks of DS Data Systems UK Ltd. All rights reserved.
//
// The information in this document is free software; you can redistribute 
// it and/or modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License, or (at your option) any later version.
// 
// This software is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
//

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>


<form data-ajax="false" action="<%=session.getAttribute("appURL")%>/QuickSearch.do" id="quickSearchForm" method="post">
	<div class="ui-block-a" style="width:80%">
		<input type="search" name="searchText" id="search-input"  value="" />
	</div>
	<div class="ui-block-b" style="vertical-align: middle;">
		<a  data-role="button" data-mini="true" data-inline="true"  onclick="javascript:document.getElementById('quickSearchForm').submit();">Search</a>
	</div>
		
</form>
