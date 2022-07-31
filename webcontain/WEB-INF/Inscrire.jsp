<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inscription</title>


</head>

<body>
	
  <div class="container">
	<fieldset style="width:25%;">
	<form method="post" action="Monservlet">
	<h1>INSCRIPTION </h1>
	<hr>
	<table>
	<tr>
		<td>NOM: </td><td><input type="text" placeholder="Entrer votre nom" name="nom" required/><br><br></td> 
		</tr>
	<tr>
		<td>PRENOM: </td><td><input type="text" placeholder="Entrer votre prenom" name="prenom" required/><br><br></td>
		</tr>
	<tr>
	    <td>PSEUDO: </td><td><input type="text" placeholder="Entrer votre pseudo" name="pseudo" required/><br><br></td>
		</tr>
	<tr>	
	<tr>
	    <td>EMAIL: </td><td><input type="email" placeholder="Entrer votre pseudo" name="email" required/><br><br></td>
		</tr>
	<tr>	
		<td>MOT DE PASSE: </td><td><input type="password" placeholder="Entrer un mot de passe" name="mdp" required/><br><br></td>
		</tr>
	<tr>	
		<td>CONFIRMER: </td><td><input type="password" placeholder="Confirmer le mot de passe" name="confirmer" required/></td>
	</tr>
		<td><input type="submit" name="" value="S'inscrire"></td>
		<td><input type="reset" name="" value="Annuler"></td>
		 
	</table>
	<!-- <button type="submit" id="send">Valider</button>
		<button type="reset" id="send">Annuler</button> -->
		
		<p>Vous êtes déjà inscrit ?? <a href="@">Cliquer ici</a>
	</form>
	
	</fieldset>
</div>
</body>
<style>

body {
		 display: flex;
	   justify-content: center;
	   align-items: center;
	  padding:0px;
	     margin: -3%;
 justify-content: center;
 align-items: center;
 background-color:#95a5a6;
		

  }
 .container{
 display: flex;
 max-width:700px;
 width:100%;
 margin-top: 100px;
 justify-content: center;
 align-items: center;
 
 }
  
  fieldset{
 width: 27%;
    /* background:linear-gradient(226deg, #782424, #1fff6482); */
    background: linear-gradient(235deg, #501717, #204864);
    box-shadow: 5px 5px 20 px 1px 10px rgb(85, 85, 85);
    border: 0px;
    padding-left: 10px;
    border-radius: 10px 10px 10px 10px;
    color: black;
    height: 480px;
  }
  td{letter-spacing:0px;}
  h1{
  font-family:andalus;
  letter-spacing:3px;
  text-align: center; 
  color:white;
  }
input[type="submit"] {
      margin-left: 52px;
          height: 25px;
    border-raduis:7px;
    }
 input[type="reset"] {
    margin-left: 54px;
    margin-top: 24px;
       padding-left: 6px;
           height: 25px;
            border-raduis:7px;
}
td{
vertical-align: baseline;
color: white; 
}
hr{
border: 2px solid white;
border-raduis:10px;
width: 40 px;  
}
form p{
padding-left: 38px;
}
input[type="text"] {
    border-radius: 7px;
    margin-top: 0px;
    padding: 5px;
       
}
input[type="email"] {
    border-radius: 7px;
    margin-top: 0px;
    padding: 5px;
   
    }
    input[type="password"] {
    border-radius: 7px;
    margin-top: 0px;
    padding: 5px;
       
    }
</style>
</html>