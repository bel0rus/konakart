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

<bean:define id="kkEng" name="konakartKey" type="com.konakart.al.KKAppEng"/>
<bean:define id="catMgr" name="kkEng" property="categoryMgr" type="com.konakart.al.CategoryMgr"/>
<bean:define id="catArray" name="catMgr" property="cats"/>
<bean:define id="subCatArray" name="catMgr" property="currentSubCats"/>
<bean:define id="currentTopCat" name="catMgr" property="currentTopCat" type="com.konakart.appif.CategoryIf"/>

<div class="body">
	<div class="body-header">

		<bean:message key="categories.body.categories"/>
	 </div>

    <div data-role="collapsible" data-collapsed="false">
    	<ul data-role="listview" data-inset="true">
			<logic:iterate id="cat" name="subCatArray" type="com.konakart.appif.CategoryIf">
				<li>				
					<html:link page="/SelectCat.do" paramId="catId" paramName="cat" paramProperty="id" >
						<h1><%=cat.getName()%> </h1>
						
					</html:link>
				</li>
			</logic:iterate>
        </ul>
    </div>

										
</div>						
