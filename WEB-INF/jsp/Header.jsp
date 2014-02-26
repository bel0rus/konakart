
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<%@ taglib uri="/tags/app" prefix="app" %>

<div data-role="header"  >

	<h1  role="heading" aria-level="1">KonaKart Store</h1>
	<a href="#options" data-icon="gear" class="ui-btn-right ui-btn ui-btn-up-a ui-shadow ui-btn-corner-all ui-btn-icon-left" data-corners="true" data-shadow="true" data-iconshadow="true" data-wrapperels="span" data-theme="a"><span class="ui-btn-inner"><span class="ui-btn-text">Options</span><span class="ui-icon ui-icon-gear ui-icon-shadow">&nbsp;</span></span></a>
	<div data-role="navbar"  role="navigation">
		
		<ul class="ui-grid-c">
	  		<li class="ui-block-a"><a data-ajax="false" href="<%=session.getAttribute("appURL")%>/Welcome.do" data-corners="false" data-shadow="false" data-iconshadow="true" data-wrapperels="span" data-theme="a" data-inline="true"><bean:message key="header.top"/></a></li>
	  			  		
	  		<li class="ui-block-b"><a data-ajax="false" href="<%=session.getAttribute("appURL")%>/LogIn.do" data-corners="false" data-shadow="false" data-iconshadow="true" data-wrapperels="span" data-theme="a" data-inline="true" >My Account</a></li>
	  			  		
	  		<li class="ui-block-c">
	  			<a data-ajax="false" href="<%=session.getAttribute("appURL")%>/ShowWishListItems.do" data-corners="false" data-shadow="false" data-iconshadow="true" data-wrapperels="span" data-theme="a" data-inline="true" >Wish List</a>
	  		</li>
	  		
	  		<li class="ui-block-d">
	  			<a data-ajax="false" href="<%=session.getAttribute("appURL")%>/ShowCartItems.do" data-corners="false" data-shadow="false" data-iconshadow="true" data-wrapperels="span" data-theme="a" data-inline="true">Cart</a>
	  		</li>
		</ul>
	</div>
</div>

