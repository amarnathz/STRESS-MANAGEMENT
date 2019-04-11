<%-- 
    Document   : demo1
    Created on : Oct 20, 2018, 4:52:19 PM
    Author     : Priya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://fonts.googleapis.com/css?family=Mali" rel="stylesheet">
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    </head>
    <body>
        <form action="ViewConn.jsp" method="post">
        Enter Id: <input type="text" name="id" required="required" id="profile-img" placeholder="enter id"/><br>
            
                        <img src="http://localhost:8080/StressManagement/ViewConn.jsp/id=3"  width="500px" height="500px"  style="border-radius: 5pt 5pt;"/>
                  
                   </td>
                        </tr>
                        
                         <script type="text/javascript">

        function readURL(input) {

        if (input.files && input.files[0]) {

            var reader = new FileReader();

            

            reader.onload = function (e) {

                $('#profile-img-tag').attr('src', e.target.result);

            }

            reader.readAsDataURL(input.files[0]);

        }

    }

    $("#profile-img").change(function(){

        readURL(this);

    });

</script>
<br>
            <input type="submit" value="Submit">
    </form>
    </body>
</html>
