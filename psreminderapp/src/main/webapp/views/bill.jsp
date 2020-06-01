<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Billing Page</title>
    </head>
    <style>
        td, th {
            border: 1px solid black;
            text-align: left;
            padding: 8px;
        }
        tr:nth-child(even) {
            background-color:  Beige;
            color: white;
        }
        td{
             color:green;
        }
    </style>
    <body>
          <script >
      function fillText(obj)
      {
            document.getElementById("pass").value = obj.options[obj.selectedIndex].value;
      }
      </script>
</head>
<body>
<center>
      <h1>Using POST Method to Read Form Data</h1>
      
      <ul>
         <li><p><b>First Name:</b>
            <%= request.getParameter("first_name")%>
         </p></li>
         <li><p><b>Last  Name:</b>
            <%= request.getParameter("last_name")%>
         </p></li>
         <%
    String accountId = request.getParameter("first_name");
%>

         <a href="http://localhost:8080/getProductByName?product_name=<%= request.getParameter("first_name")%>">aa</a>
      </ul>
<form name="bill" >
 <select name="sel" onchange="fillText(this);">
 <option value="t1">test1</option>
<option value="t2">test2</option>
</select>
<input name="pass" type="text" id="pass" >
<input type="submit" value="Click me to see Pass value " >
Pass = <%= request.getParameter("pass") %>
</form>
Pass = <%= request.getParameter("pass") %>
        <div style="background-color:#0000ff;">
        <h2 style="text-align: center">Welcome to Billing Page</h2>
        <h1 style="text-align: center">Search the product</h1>
        </div>
                <a href="/"><button  style="position:absolute;right:39px;top:130px;background-color:green;">Go Back</button></a>

        <hr>
        <div style="display: flex;align-content: center;justify-content: center;text-align: center">
            <form action="getProductByCode" method="get">
                Search by Product Code
                <br>
                <input type="number" name="product_code"/>
                <input type="submit" value="Search">
            </form>
            <form action="getProductByName" method="get">
                Search by Product Name
                <br>
                <input type="text" name="product_name"/>
                <input type="submit" value="Search">
            </form>
        </div>
        <hr>
        <br>
        <h2 style="text-align: center">Bill Details</h2>
       
        <br>
        <table style="width: 100%;
                     display: flex;
                     justify-content: center;
                     align-content: center;
                     text-align: center;
                     color:green;
                     font-family: 'Times New Roman';">
            <tr>
                <th>Product Code</th>
                <th>Product Name</th>
                <th>Product Price</th>
                <th>GST applied</th>
            </tr>
            <c:forEach items="${result}" var="item">
            	<tr>
                    <td><c:out value="${item.product_code}" /></td>
                    <td><c:out value="${item.product_name}" /></td>
                    <td><c:out value="${item.product_price}" /></td>
                    <td><c:out value="${item.product_gst}" /></td>
                </tr>
            </c:forEach>
            
        </table>
        <hr>
      
    </body>
    <script>
        var total_price=0;
        var vat=0;
        var grand_total=0;
        function checkMethod(product_price,product_code)
        {
            var quant=0;
            quant= document.getElementById("entry"+"+"+product_code).value;
            var value= quant*product_price;
            document.getElementById("price"+"+"+product_code).innerHTML=value.toString();
            calculateValues();
        }
        function calculateValues()
        {
            total_price=0;
            var all_prices= document.getElementsByClassName("price_of_product");
            for(var i=0;i<all_prices.length;i++)
            {
                var value = parseInt(all_prices[i].innerHTML);
                total_price += value;
            }
            vat=((18*total_price)/100).toFixed(2);
            grand_total=total_price+parseInt(vat);
            document.getElementById("getTotal").innerHTML="Total Price is "+total_price+" INR";
            document.getElementById("getVat").innerHTML="Vat is"+vat;
            document.getElementById("grandTotal").innerHTML="Grand Total is "+grand_total+" INR";
        }
    </script>
</html>