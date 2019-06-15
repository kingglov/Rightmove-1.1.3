<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Spring</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <script src='main.js'></script>
</head>
<body>

<h2 > Registered </h2>

<c:if test="${empty obj}">

    We couldn't find what you are looking for right now ! <br>
    Please try other options.

</c:if>

<c:if test="${not empty obj}">

<c:forEach items="${obj}" var="item">
      <tr>
        <td>Type: <c:out value="${item.type}" /></td> <br>
        <td>No of BedRooms : <c:out value="${item.no_of_bedrooms}" /></td> <br>
        <td> Price :  <c:out value="${item.price}" /></td> <br>
        <td>Pincode :<c:out value="${item.pincode}" /></td> <br>
        <td>Key Features :<c:out value="${item.keyf}" /></td> <br>
        <td>Description :<c:out value="${item.desc}" /></td> <br><br><br>

        <c:forEach items="${item.images}" var="item1">
        <img src="${item1}">
       </c:forEach>
        

        <div class="mapouter">
          <div class="gmap_canvas">
            <iframe width="500" height="400" id="gmap_canvas" src="https://maps.google.com/maps?q=${item.location}&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0">
            </iframe>
            <a href="https://www.pureblack.de"></a>
          </div>
          <style>
          .mapouter{
            position:relative;
            text-align:right;
            height:300px;
            width:400px;}
            .gmap_canvas {
              overflow:hidden;
              background:none!important;
              height:300px;width:500px;}
              </style>
              </div> 

      </tr><br><br>
    </c:forEach>

</c:if>
    
 


</Form>
</body>
</html>
