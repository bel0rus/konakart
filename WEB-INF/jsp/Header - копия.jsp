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
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<%@ taglib uri="/tags/app" prefix="app" %>


<logic:notEmpty name="konakartKey">
	<bean:define id="kkEng" name="konakartKey" type="com.konakart.al.KKAppEng"/>
	<%
		String useSolrStr = kkEng.getConfig("USE_SOLR_SEARCH");
		boolean useSolr =  false;
        if (useSolrStr != null && useSolrStr.equalsIgnoreCase("TRUE")){
            useSolr = true;
        }
	%>	
	<%if (useSolr && !kkEng.isPortlet()) { %>
		<script language="javascript" src="<%=kkEng.getStoreBase()%>/com.konakart.Konakart.nocache.6.3.0.0.8279.js"></script>
	<% } %>
	
	<table  width="100%" class="header1">
		<tr>
			<td rowspan="2">
				<html:link page="/Welcome.do"><img align="left"  src="<%=kkEng.getImageBase()%>/logo.png" border="0" alt="<bean:message key="header.konakart"/> <%=kkEng.getKkVersion()%>" title=" <bean:message key="header.konakart"/> <%=kkEng.getKkVersion()%>"></html:link>
			</td>
			<%if (useSolr) { %>
				<td  valign="bottom" width="100%">
			    	<div style="float:right" id="kk-SuggestedSearch"></div> 
				</td>
			<% } %>
		</tr>
		<%if (useSolr) { %>
	        <tr>
	              <td valign="top" width="100%">
	                   <div style="float:right" class="boxText"><html:link page="/AdvancedSearch.do"><b><bean:message key="quick.search.tile.adv.search"/></b></html:link></div>
	              </td>
	        </tr>
        <% } %>
	</table>
	<%if (useSolr) { %>
		<form id="kkLabelForm7" action="http://somesite.com/prog/adduser" method="post">
			<input type="hidden" name="suggested.search.search" value="<bean:message key="suggested.search.search"/>">
		    <input type="hidden" name="locale" value="<%=kkEng.getLocale()%>">
    		<%String maxSsi = kkEng.getConfig("MAX_NUM_SUGGESTED_SEARCH_ITEMS");%>
    		<%if (  maxSsi != null && maxSsi.length() > 0  ) { %>	
    			<input type="hidden" name="limit" value="<%=maxSsi%>">
			<% } else { %>
				<input type="hidden" name="limit" value="10">
			<% } %> 
		</form>				
	<% } %>	
	<div class="tile">
		<div class="header-tile">
			<!--- box border -->
			<div class="menu-left"><div class="menu-right"><div class="menu-bottom"><div class="menu-bottom-left"><div class="menu-bottom-right"><div class="menu-top"><div class="menu-top-left"><div class="menu-top-right">
			<!-- -->
			<div class="header2-top"> 		
				<table  width="100%" border="0">
					<tr>
						<td width="30%" align="left" valign="top">
							<img src="<%=kkEng.getImageBase()%>/icons/home.png" border="0"/><html:link page="/Welcome.do" styleClass="header2-top"><bean:message key="header.top"/></html:link>|
							<img src="<%=kkEng.getImageBase()%>/icons/specials.png" border="0"/><html:link page="/ShowAllSpecials.do" styleClass="header2-top"><bean:message key="random.special.tile.specials"/></html:link> 
						</td>
						<td width="70%" align="right" valign="top">
							<logic:notEmpty name="kkEng" property="sessionId">				 	
								<!-- <img src="<%=kkEng.getImageBase()%>/icons/logout.png" border="0"/> -->
								<html:link page="/LogOut.do" styleClass="header2-top"><bean:message key="header.logout.page"/></html:link>|
							</logic:notEmpty>
							<html:link page="/LogIn.do" styleClass="header2-top"><bean:message key="header.my.account"/></html:link>|
							<html:link page="/ShowCartItems.do" styleClass="header2-top"><bean:message key="header.cart.contents"/></html:link>|
							<html:link page="/CheckoutDelivery.do" styleClass="header2-top"><bean:message key="common.checkout"/></html:link>
							<%String giftRegistryEnabled=kkEng.getConfig("ENABLE_GIFT_REGISTRY"); %>	
							<%if (giftRegistryEnabled != null && giftRegistryEnabled.equalsIgnoreCase("TRUE") ) {%>	
								&nbsp;|&nbsp;<html:link page="/GiftRegistrySearch.do" styleClass="header2-top"><bean:message key="header.weddinglists"/></html:link>
							<%}else{%>	
								&nbsp;&nbsp;
							<% } %>
						</td>
					</tr>
				</table>
	        </div> 
			<!--- end of box border -->
			</div></div></div></div></div></div></div></div>
			<!-- -->
			<!--- box border -->
			<div class="breadcrumb-left"><div class="breadcrumb-right"><div class="breadcrumb-bottom"><div class="breadcrumb-bottom-left"><div class="breadcrumb-bottom-right"><div class="breadcrumb-top"><div class="breadcrumb-top-left"><div class="breadcrumb-top-right">
			<!-- -->
			<div class="header2-bottom"> 		
				<table  width="98%" >
					<tr>
						<td width="50%" align="left">
							<!-- &nbsp;&nbsp;<html:link page="/Welcome.do" styleClass="header2-bottom"><bean:message key="header.top"/></html:link> --> 
							<%int i = 0;%>
							<logic:iterate id="n" name="kkEng" property="nav" type="java.lang.String">
                                                <%if (n!=null){%>
                                                	<%String[] tokens = n.split(";");%>
									<%if (tokens.length>=2){%>
										<% if (i!=0){%>
											&raquo;&nbsp;
										<%}%>
										<% String link = tokens[1]; %>
										<%if (tokens.length>2){%>
        										<%for (int j = 2; j < tokens.length; j++){%>
            										<%link = link + tokens[j];%>
											<%}%>
										<%}%>
										<html:link page='<%=link%>' styleClass="header2-bottom"><%=tokens[0]%></html:link>
										<%i++;%>
									<%}else{%>
										<% if (i!=0){%>
											&raquo;&nbsp;
										<%}%>
										<%=n%>
										<%i++;%>
									<%}%>		    												
								<%}%>		    												
							</logic:iterate>
						</td>
					</tr>
				</table>
	        </div> 
			<!--- end of box border -->
			</div></div></div></div></div></div></div></div>
			<!-- -->
		</div>
	</div>
</logic:notEmpty>
