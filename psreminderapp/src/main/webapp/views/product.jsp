<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Products page</title>
    </head>
    <style>
        td, th {
            border: 1px solid black;
            text-align: left;
            padding: 8px;
            color:red;
        }
        tr:nth-child(even) {
            background-color: Beige;
            color: white;
        }
        
.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
    </style>
    <body>
    <script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
</script>
        <div style="background-color:#0000ff">
        <h2 style="text-align: center;">Reminder App</h2>
        



<span style="font-size:30px;cursor:p
ointer" onclick="openNav()">&#9776; <form action="/" method="post">
        <input style="position:absolute;right:39px;top:100px;background-color:orange;" type="submit" value="logout"/></form> </h4>
        </span>
        
        <h4 style="text-align: center;"></div>
        <div style="display:flex">
        <div style="display:flex">
           <form style="text-align: center;"
           
                action="addProduct" method="post">

                <table style="width: 100%;
                     display: flex;
                     justify-content: center;
                     align-content: center;
                     text-align: center;
                     font-family: 'Times New Roman';">
                     <tr>
                <th>username</th>
                  <td>  <input type="text" name="username"/></td>
                  </tr>
                  <tr>
                <th>password</th>
                
                  <td> <input type="text" name="password"/></td>
                </tr>
                <tr>
                <th>Phone_number</th>
                
                  <td> <input type="number" name="phone_number"/></td>
                </tr>
                <th>DOB</th>
                
                  <td><input type="text" name="remainder_title"/></td>
                </tr>
                <tr>
                <th>Remainder</th>
                
                  <td><input type="text" name="remainder_title"/></td>
                </tr>
                <tr>
                <th>Start date</th>
                
                  <td><input type="text" name="start_date"/></td>
                </tr>
                <tr>
                <th>end date</th>
                
                  <td><input type="text" name="end_date"/></td>
                </tr>
                <tr>
                <th>Remainder date</th>
                
                  <td><input type="text" name="remainder_date"/></td>
                </tr>
                <tr>
                                <th>Modify Product Data</th>
                                
                  <td> <input type="submit" value="Enter New Product Details"></td>
                                </tr>
                  <tr>
                      </tr>
                    </table>   
        </form>
        </div>
        
        
        
        
        <hr>

		</div>
		</div>
        
        <hr>
        <br>
        <h2 style="text-align: center">login Details</h2>
       
        <br>
        <table style="width: 100%;
                     display: flex;
                     justify-content: center;
                     align-content: center;
                     text-align: center;
                     color:green;
                     font-family: 'Times New Roman';">
            <tr>
                <th>Username</th>
                <th>Password</th>
                <th>Phone number</th>
                <th>remainder title</th>
                <th>remainder date</th>
                <th>start date</th>
                <th>end date</th>
                
            </tr>
            <c:forEach items="${result}" var="item">
                <tr>
                <td><c:out value="${item.username}" /></td>
                <td><c:out value="${item.password}" /></td>
                <td><c:out value="${item.phone_number}" /></td> 
                <td><c:out value="${item.remainder_title}" /></td> 
                    <td><c:out value="${item.remainder_date}" /></td>              
                    <td><c:out value="${item.start_date}" /></td>
                    <td><c:out value="${item.end_date}" /></td>
                    
                    <td><input type="submit" value="Modify Product Data" onclick="loadEditOption(${item.phone_number})"></td>
                
                </tr>
                
            </c:forEach>
           
        </table>
        <form action="updateProduct" method="post" id="edit_form" style="display: none;float:right;margin-right: 40px;margin-top: -140px">
                Phone number
                <br>
                <input type="number" id="phone_number" name="phone_number"/>
                <br>
                Estart date
                <br>
                <input type="text" name="start_date"/>
                <br>
                end date
                <br>
                <input type="text" name="end_date"/>
                <br>
                dob
                <br>
                <input type="text" name="dob"/>
                <br>
                remainder date
                <br>
                <input type="text" name="remainder_date"/>
                <br>
                remainder title
                <br>
                <input type="text" name="remainder_title"/>
                <br>
                <input type="submit">
                <button onclick="hideForm()">Hide</button>
            </form>

      <hr>
      <div id="mySidenav" class="sidenav" style="float:left;color: white;">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
     <c:forEach items="${result}" var="item">
                <c:out value="${item.username}" /></br>
                <c:out value="${item.phone_number}" /></br>
                <c:out value="${item.password}" /></br>
                    <c:out value="${item.dob}" /></br>
                    <input type="submit" value="Modify Product Data" onclick="loadEditOption1(${item.phone_number})"></br>
                

                
            </c:forEach>
           
        </table>
        <form action="updateProduct" method="post" id="edit_form1" style="display: none;float:right;margin-right: 40px;margin-top: 22px">
                Phone number
                <br>
                <input type="number" id="phone_number" name="phone_number"/>
                <br>
                date of birth
                <br>
                <input type="text" name="dob"/>
                <br>
                <input type="submit">
                <button onclick="hideForm1()">Hide</button>
            </form>
</div>

    </body>
     <script>
        function loadEditOption(phone_number)
        {
            document.getElementById("edit_form").style.display="block";
            document.getElementById("phone_number").value=phone_number;
        }
        function hideForm()
        {
            document.getElementById("edit_form").style.display="none";
        }
                function loadEditOption1(phone_number)
        {
            document.getElementById("edit_form1").style.display="block";
            document.getElementById("phone_number").value=phone_number;
        }
        function hideForm1()
        {
            document.getElementById("edit_form1").style.display="none";
        }
        
    </script>

</html>
