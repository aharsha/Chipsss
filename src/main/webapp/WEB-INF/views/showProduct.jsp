
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:forEach var="obj" items="${list}">
<table border="2" width="70" bgcolor="red" cellpadding="2" cellspacing="1">
<tr>
<th> ProductId</th><th> Product NAme </th> <th> Product Brand </th>
<th> Product Price </th>  <th> Product stack </th></tr>
 <tr><td> ${obj.productId}</td>
 <td> ${obj.productName}</td>
  <td> ${obj.productBrand}</td>
   <td> ${obj.productPrice}</td>
    <td> ${obj.productStack}</td></tr>
</c:forEach>
</body>
</html>
-->

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular.min.js"></script>
<script>





	  var prod = ${proddata};
	  angular.module('repeatSample', []).controller('ProductController', function($scope)
	   {
	                 $scope.products=prod;
	   
	          $scope.sort = function(keyname)
	          {
	              $scope.sortKey = keyname;   //set the sortKey to the param passed
	              $scope.reverse = !$scope.reverse; //if true make it false and vice versa
	          }
	              
	    });
	</script>
	 
	<div ng-app="repeatSample" ng-controller="ProductController">
	<table>
	<tr class="success" ng-repeat="product in products|filter:test">
	                <td><a href="ProductDescription?pid={{product.productId}}">{{product.productId}}</a></td>
	               
	                <td><img src="resources/images/{{product.productId}}.jpg" height="50px" width="50px"/></td>
	</tr>
	</table>
	</div>











</script>