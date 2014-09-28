<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="galerijaCss2.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script  type="text/javascript">
function proveraIme(){  
	
	var  ime = document.frm.naslov.value;
	   if(ime=="")
	      {
	              
	              alert("Unesite naslov dela!");
	              document.frm.ime.focus();
	              return false;
	      }
	   return true;
	}

function proveraId(){
	 var  id= document.frm.id.value;

		 if(id=="")
	      {
	              
	              alert("Unesite id dela!");
	              document.frm.id.focus();
	              return false;
	      }
		  return true;
}
function proveraDat(){
	
	  var  rdate = document.frm.datumRodjenja.value;
      var rdateAr=sdate.split("-");
     if(rdateAr.length!=3)
     {
             alert("Unesite datum u formatu: mm-dd-yyyy ");
             document.frm.datumRodjenja.value="";
             document.frm.datumRodjenja.focus();
             return false;
     }
     var  sdate = document.frm.datumSmrti.value;
     var sdateAr=sdate.split("-");
     
    if(sdateAr.length!=3)
    {
            alert("Unesite datum u formatu: mm-dd-yyyy ");
            document.frm.datumSmrti.value="";
            document.frm.datumSmrti.focus();
            return false;
    }
    
    return true;
}
function provera()
{
         var  sdate = document.frm.datumRodjenja.value;
       var  ime = document.frm.ime.value;
       var  prz= document.frm.prezime.value;
       var  id= document.frm.id.value;
      if(ime=="" && id=="")
      {
              
    	  alert("Morate popuniti obavezna polja(id i naslov)!");
    	  
              return false;
      }
        return true;
        
}
</script>
<title>Dodavanje podataka o umetničkom delu</title>
</head>
<body>
<h2>Dodavanje podataka o umetničkom delu</h2>
<c:choose>
    <c:when test="${kustos.logged}">	
<form action = "DodavanjeDelaServlet" method = "post" enctype="multipart/form-data" name="frm" onSubmit="return provera()">
<table border=0>
<tr>
			
			<td>Vrsta:</td> 
			<td><input type = "text" name = "vrsta" value="${vrsta}" readonly></td>
</tr>
<tr>
			
			<td>Naslov:</td> 
			<td><input type = "text" name = "naslov" onblur="return proveraIme()"></td>
</tr>
<tr>
			<td>Tehnika:</td>
			<td> <input type = "text" name = "tehnika"></td>
</tr>
<tr>
			<td>Stil:</td>
			<td> <input type = "text" name = "stil"></td>
</tr>
<tr>
			<td>Datum nastanka:</td> 
			<td> <input type = "text" name = "datumNastanka" onblur="return proveraDat()"></td>
</tr>
<tr>
			<td>Mesto nastanka:</td>
			<td> <input type = "text" name = "mestoNastanka"></td>
</tr>

<tr>			
			<td>ID:</td>
			<td> <input type = "text" name = "id" onblur="return proveraId()"/><td>
</tr>		
<tr>			
			<td>Lokacija zapisa:</td>
			<td> <input type="file"  id="file" name = "uri" /><td>
</tr>	
<tr>
			
			<td>Širina:</td> 
			<td><input type = "text" name = "sirina" ></td>
</tr>
<tr>
			
			<td>Visina:</td> 
			<td><input type = "text" name = "visina"></td>
</tr>
<tr>
			<td>Opis:</td>
			<td> 
			<textarea rows="10" cols="25" name = "opis">
			
			</textarea>
			</td>
</tr>
<tr>
			<td></td>
			<td><input type = "submit" value = "Potvrdi"/></td>
</tr>

</table>			
				<div class="lista">
			<br/>
			<a href="/Galerija/kustosMain.jsp">Nazad</a><br/>
				<br/>
   		    [<a href="LoginServlet?logoff=true">Odjavi se</a>]
   		    </div>
</form>
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