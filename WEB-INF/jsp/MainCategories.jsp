<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>

<bean:define id="kkEng" name="konakartKey" type="com.konakart.al.KKAppEng"/>
<bean:define id="catMgr" name="kkEng" property="categoryMgr" type="com.konakart.al.CategoryMgr"/>
<bean:define id="catArray" name="catMgr" property="cats"/>
<bean:define id="subCatArray" name="catMgr" property="currentSubCats"/>
<bean:define id="currentTopCat" name="catMgr" property="currentTopCat" type="com.konakart.appif.CategoryIf"/>

<bean:define id="catList" name="catMgr" property="catMenuList" type="java.util.List"/>

<div class="body">
	<div class="body-header">

		Main <bean:message key="categories.body.categories"/>
	 </div>

<div data-role="collapsible-set" data-theme="b">
    <div data-role="collapsible" data-collapsed="false">
        <h3>Browse Categories</h3>
        <ul data-role="listview">
        	<logic:iterate id="cat" name="catList" type="com.konakart.appif.CategoryIf">
            	<li>
            		<html:link page="/SelectCat.do" paramId="catId" paramName="cat" paramProperty="id" >
						<h1 class="ui-li-heading"><%=cat.getName()%></h1>
					</html:link>
				</li>
			</logic:iterate>
        </ul>
    </div>
    <div data-role="collapsible">
        <h3>Subscribe to our Newsletter</h3>
        <ul data-role="listview">
        </ul>
    </div>
    <div data-role="collapsible">
        <h3>Information</h3>
        <ul data-role="listview">
        </ul>
    </div>
</div> 



	