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

<logic:notPresent name="org.apache.struts.action.MESSAGE" scope="application">
  <font color="red">
    ERROR:  Application resources not loaded -- check servlet container
    logs for error messages.
  </font>
</logic:notPresent>

<div class="body">
		<div class="body-header">
			<img src="<%=kkEng.getImageBase()%>/table_background_default.gif" border="0" alt="<bean:message key="home.page.body.welcome"/>" title=" <bean:message key="home.page.body.welcome"/> " width="<%=kkEng.getHeadingImageWidth()%>" height="<%=kkEng.getHeadingImageHeight()%>">	
			<bean:message key="home.page.body.welcome"/>	
		</div>
		<div class="body-content-div">
<!-- 		<table>
			<tr>
				<td>		
					Welcome to KonaKart. This is Java / JSP / XML / GWT eCommerce application that provides everything that store owners need to sell their products over the Internet. KonaKart includes an extensive set of online shopping cart features to satisfy the needs of both shoppers and store owners alike.<br><br>KonaKart has a comprehensive set of APIs available as Java APIs or as a SOAP Web Service, that allow you to easily separate the UI layer from the business layer. This enables you to create unique user experiences that remain compatible with future releases of KonaKart and to easily embed shopping cart functionality into existing applications such as CMS systems. Visit our web site <a href="http://www.konakart.com" target="_blank"><u>http://www.konakart.com</u></a> to find out more.
				</td>
		</table> -->

		</div>
</div>
