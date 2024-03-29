<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    



    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="galerijaCss2.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dodavanje dela</title>
</head>
<body>
<c:choose>
    <c:when test="${kustos.logged}">	
<h2>Korisniče ${kustos.ime},</h2>
<c:choose>

  	<c:when test="${delo!=null}">
  	  
  	  <h3>Delo: "${delo.naslov} " sa ID: "${delo.id}" je uspešno dodato u galeriju!</h3>
  	</c:when>
  	<c:otherwise>
  	  
  	 <h3>Delo nije uspešno dodato u galeriju!</h3>
  	</c:otherwise>
</c:choose>
<br/>
<div class="lista">
	<a href="/Galerija/kustosMain.jsp">Nazad</a><br/>	<br/>
    [<a href="LoginServlet?logoff=true">Odjavi se</a>]
    </div>
 	</c:when>
	<c:otherwise>
		<h3><b>Niste ulogovani!</b></h3>
		<div class="lista">
		<p>
		[<a href="LoginServlet?logoff=true">Logovanje</a>]
		</p>
		</div>
	</c:otherwise>
</c:choose>
</body>
</html>