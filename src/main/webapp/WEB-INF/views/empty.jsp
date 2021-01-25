<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
    crossorigin="anonymous">
     <script defer src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
  <title>Flight Search Engine</title>
 </head>
<body>
  <section id="login" >
       <div class="container">
      <br><br><br>
   <h1> Flight Sorting Status</h1>
      <br><br>
      <div class="alert alert-warning" role="alert">
  <h4 class="alert-heading">Sorry!</h4>
          <hr>
  <p>There are no such flights based on your preference.</p>
         <a href="/search1">Click here</a> to Sort the flights
  </div>
      </div>
<br><br><br><br><br><br><br>
    </section>
    </body>
</html>