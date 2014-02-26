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
<%@ taglib uri="/tags/struts-tiles" prefix="tiles" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<%@ page contentType="text/html; charset=UTF-8"%>

	<% String appURL = "http://" +  request.getHeader("host") +"/konakart-m";
	session.setAttribute("appURL", appURL); %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"
"http://www.w3.org/TR/html4/strict.dtd">
<logic:notEmpty name="konakartKey">
	<html>
	<bean:define id="kkEng" name="konakartKey" type="com.konakart.al.KKAppEng"/>
		<head>
			<title id="target.title"><%=kkEng.getPageTitle()%></title>
			<meta name="keywords" content="<%=kkEng.getMetaKeywords()%>" />
			<meta name="description" content="<%=kkEng.getMetaDescription()%>" />
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
			<meta name="viewport" content="width=device-width, initial-scale=1">			
			<link type="text/css" rel="stylesheet" href="<%=kkEng.getStyleBase()%>/skin_style.css" />

			<link type="text/css" rel="stylesheet" href="<%=kkEng.getStyleBase()%>/kk-style-m.css">			
			<link type="text/css" rel="stylesheet" href="<%=kkEng.getStyleBase()%>/jquery.mobile-1.3.1.min.css">
			<link type="text/css" rel="stylesheet" href="<%=kkEng.getStyleBase()%>/jqm-datebox.min.css"> 

			<script type="text/javascript" src="<%=kkEng.getScriptBase()%>/jquery-1.7.2.min.js"></script>
			<script type="text/javascript" src="<%=kkEng.getScriptBase()%>/jquery.mobile-1.3.2.min.js"></script>
			<script language="JavaScript" type="text/javascript">
 					if (top.location != location) {
    					top.location.href = document.location.href ;
  					}
			</script>
			<!--- KonaKart v6.3.0.0.8279 -->
		</head>
		<body>
		<div data-role="page" id="mainPage">

		    <table cellpadding="0" cellspacing="0" border="0" width="100%">
				<tr>
					<td>
						<tiles:insert attribute="header" />
					</td>
				</tr>
				<tr>
					<td>
						<table cellpadding="3" cellspacing="3" border="0" width="100%">
							<tr>
							
								<td  valign="top">
									<table border="0" width="100%" cellspacing="0" cellpadding="2">
										<tr>
											<td>
												<tiles:insert attribute="body3" />
											</td>
										</tr>
										<tr>
											<td>
												<tiles:insert attribute="body" />
											</td>
										</tr>
										<tr>
											<td>
												<tiles:insert attribute="body1" />
											</td>
										</tr>
										<tr>
											<td>
												<tiles:insert attribute="body2" />
											</td>
										</tr>

										<tr>
											<td>
												<tiles:insert attribute="body4" />
											</td>
										</tr>
										<tr>
											<td>
												<tiles:insert attribute="body5" />
											</td>
										</tr>
									</table>
								</td>
								
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<tiles:insert attribute="footer" />
					</td>
				</tr>
			</table>
		</div>

		<div data-role="page" id="options">

<div data-role="page" data-add-back-btn="true" data-back-btn-text="Back" id="options" data-url="options" tabindex="0" class="ui-page ui-body-c ui-page-active" style="min-height: 557px;">

		<div data-role="header">
	        <h1>Options</h1>
		    <div data-type="horizontal" data-role="controlgroup" class="ui-btn-left">
		        <a data-rel="back"  data-icon="arrow-l" data-role="button" href="#mainPage">Back</a>
		    </div>
    	</div>



				<div data-role="content" class="ui-content" role="main" style="text-align:center;">	
					<a data-role="button" data-ajax="false" data-theme="b" href="http://www.konakart.com/konakart-m/AdvancedSearch.action" data-corners="true" data-shadow="true" data-iconshadow="true" data-wrapperels="span" class="ui-btn ui-shadow ui-btn-corner-all ui-btn-up-b"><span class="ui-btn-inner"><span class="ui-btn-text">Advanced Search</span></span></a>									  			
				
					<h3>Select Language</h3>
		  			<form data-ajax="false" action="SetLocale.do" method="post">  
						<div data-role="fieldcontain">
						    <select id="lang-select" name="locale" onchange="submit()">
								<option value="en_GB" selected="selected">English</option>
								<option value="de_DE">Deutsch</option>
								<option value="es_ES">Español</option>
								<option value="pt_BR">Português</option>
							</select>
						</div>					
					</form>	

					<h3>Select Currency</h3>
					<form name="SelectCurrencyForm" data-ajax="false" action="SelectCurrency.do" method="post">  
						<div data-role="fieldcontain">
						    <select id="currency-select" name="currencyCode" onchange="submit()">
									<option value="USD">US Dollar</option>					
									<option value="EUR">Euro</option>
							</select>
						</div>							
					</form>	
				</div>	
			</div>
		</div>		
			<%=kkEng.getAnalyticsCode()%>
		</body>
	</html>
</logic:notEmpty>
