<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
<!-- help me -->
  <title>Phoenix Airline</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  <script src="https://kit.fontawesome.com/83325a7e2a.js" crossorigin="anonymous"></script>
  <!-- Favicons -->
  <link href="assets/img/Phoenix.svg" rel="icon">
  <link href="assets/img/Phoenix.svg" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
   <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" crossorigin="anonymous">
    <link rel="stylesheet" href="pdf.css" />
    <script src="pdf.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.js"></script>

  <!-- Template Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="assets/Template-CreditCardPayment/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="assets/Template-CreditCardPayment/font-awesome/css/font-awesome.min.css" />

    <script type="text/javascript" src="assets/Template-CreditCardPayment/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="assets/Template-CreditCardPayment/bootstrap/js/bootstrap.min.js"></script>

</head>
<body>
<div class="container d-flex justify-content-center mt-50 mb-50">
        <div class="row">
            <div class="col-md-12 text-right mb-3">
                <button class="btn btn-primary" id="download" style="margin-right:50px;"> download pdf</button>
                <a href="index.jsp" class="btn btn-primary" id=""> Back Home</a>
            </div>
            <div class="col-md-12" style="width:1350px; height:00px;">
                <div class="card" id="invoice" style="height:880px;">
                    <div class="card-header bg-transparent header-elements-inline">
                        <h6 class="card-title text-primary">Phoenix Airline Invoice</h6><img src="assets/img/Phoenix.svg" class="img-fluid rounded-start" alt="..." style="width:40px; height:40px; position: absolute;
left: 15.57%;
right: 85.2%; margin-bottom:1px; margin-top:8px;">
               <%!		    String name,address,lane,country,phone,email;  %>         
 <% 	HttpSession sessionUser = request.getSession(false);
	
	 String memberNo= sessionUser.getAttribute("MemberID").toString();

try {
	        Statement st;
	        String sql,pass = null;
			String url="jdbc:mysql://localhost:3306/Phoenix_Airline_System?useSSL=false&allowPublicKeyRetrieval=True";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,"root","Kavindu84");
			st= (Statement) con.createStatement();
			 
		    sql ="select * from Users where memberID= '"+memberNo+"'";

		    ResultSet rs= st.executeQuery(sql);
            while(rs.next()){
            	name=rs.getString("name");
            	address=rs.getString("add1");
            	lane=rs.getString("add2");
            	country=rs.getString("country");
            	phone=rs.getString("phone");
            	email=rs.getString("email");
            	
            }
}catch(Exception e){
	e.printStackTrace();
}
 
 
 HttpSession sessionPay = request.getSession(false);
	String id= sessionPay.getAttribute("id").toString();
	String price= sessionPay.getAttribute("price").toString();
	String Depature= sessionPay.getAttribute("Depature").toString();
	String Destination= sessionPay.getAttribute("Destination").toString();
	String Airline= sessionPay.getAttribute("Airline").toString();
	String total= sessionPay.getAttribute("total").toString();
	String DateTime= sessionPay.getAttribute("DateTime").toString();
	String passenger= sessionPay.getAttribute("passenger").toString();%>
                    </div>
                    <div class="card-body" style="height:0px;">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="mb-4 pull-left">

                                    <ul class="list list-unstyled mb-0 text-left">
                                        <li>2269 Phoenix road</li>
                                        <li>Colombo city</li>
                                        <li>+94 77 331 7433 </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="mb-4 ">
                                    <div class="text-sm-right">
                                        <h4 class="invoice-color mb-2 mt-md-2">Invoice #BBB1243</h4>
                                        <ul class="list list-unstyled mb-0">
                                            <li>Date: <span class="font-weight-semibold"><%java.util.Date date=new java.util.Date();  %><%=date %></span></li>
                                            <li>Due Date: <span class="font-weight-semibold"><%=DateTime %></span></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="d-md-flex flex-md-wrap">
                            <div class="mb-4 mb-md-2 text-left"> <span class="text-muted">Invoice To:</span>
                                <ul class="list list-unstyled mb-0">
                                
                                    <li>
                                        <h5 class="my-2"> <%=name %></h5>
                                    </li>
                
                                    <li><%=address %></li>
                                    <li><%=lane %></li>
                                    <li><%=country %></li>
                                    <li> <%=phone %></li>
                                    <li><a href="#" data-abc="true"><%=email %></a></li>
                                </ul>
                            </div>
                            <div class="mb-2 ml-auto"> <span class="text-muted">Payment Details:</span>
                                <div class="d-flex flex-wrap wmin-md-400">
                                    <ul class="list list-unstyled mb-0 text-left">
                                        <li>
                                            <h5 class="my-2">Total Paid:</h5>
                                        </li>
                                        <li>Bank name:</li>
                                        <li>Country:</li>
                                        <li>City:</li>
                                        
                                        <li>IBAN:</li>
                                        <li>SWIFT code:</li>
                                    </ul>
                                    <ul class="list list-unstyled text-right mb-0 ml-auto">
                                        <li>
                                            <h5 class="font-weight-semibold my-2">$<%=total %>.00 U.S</h5>
                                        </li>
                                        <li><span class="font-weight-semibold">Commercial Bank</span></li>
                                        <li>Sri Lanka</li>
                                        <li>Colombo</li>
                                        <li><span class="font-weight-semibold">98574959485</span></li>
                                        <li><span class="font-weight-semibold">BHDHD98273BER</span></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-lg">
                            <thead>
                                <tr>
                                    <th>Description</th>
                                    <th>Per Person</th>
                                    <th>Passengers</th>
                                    <th>Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <h6 class="mb-0"><%=Depature %> To <%=Destination %></h6> <span class="text-muted">One Way Trip with First Class Facilities of Phoenix Airline(All Items Included).
                                           </span>
                                    </td>
                                    <td>$<%=price %>.00 U.S</td>
                                    <td><%=passenger %></td>
                                    <td><span class="font-weight-semibold">$<%=total %>.00 U.S</span></td>
                                </tr>

                            </tbody>
                        </table>
                    </div>



<div style="margin:0px 0px 0px 0px;">
 <div  class="col-md-4 col-sm-6" style="color:black; width:880px;">
            <div class="box-tkt" style="position: absolute;
width: 827px;
height: 404px;
 background-image: url(assets/img/last.png);
border: blur(2px);">
            <div class="up-ticket" style="position: absolute;
width: 610px;
height: 58px;



background: linear-gradient(90deg, #FFFFFF 0%, #0000FF 100%);
border-radius: 30px;">      <img src="assets/img/Phoenix.svg" class="img-fluid rounded-start" alt="..." style="width:40px; height:40px; position: absolute;
left: 10.57%;
right: 85.2%; margin-bottom:1px; margin-top:8px;"><br><span style="color:blue; font-size:15px; margin-top:0px; margin-left:109px;">Phoenix AirLine</span>
<span style="color:#fff; font-size:20px; margin-top:0px; margin-left:179px;">BOARDING PASS</span>

            </div>
            
                       <div class="up-ticket" style="position: absolute;
width: 610px;
height: 28px;top:376px;



background: linear-gradient(90deg, #FFFFFF 0%, #0000FF 100%);
border-radius: 30px;">     

            </div>
<div style="margin-left:605px ; color:black; position: absolute;
width: 220px;
height: 28px;top:376px;


background: linear-gradient(270deg, #FFFFFF -7.38%, #0000FF 100%);
border-radius: 30px;">
    </div>
 <div style="margin-left:605px ; color:black; position: absolute;
width: 220px;
height: 58px;


background: linear-gradient(270deg, #FFFFFF -7.38%, #0000FF 100%);
border-radius: 30px;"><br>
    <span style="color:#fff; font-size:20px;  margin-left:30px ">BOARDING PASS</span>
</div><div style="position: absolute;
width: 372px;
height: 0px;top:200px; right:630px;

border: 0.1px solid rgba(0, 0, 0, 0.1);
transform: rotate(90deg);"></div>
<div style="position: absolute;
width: 372px;
height: 0px;top:200px; right:-182px;

border: 0.1px solid rgba(0, 0, 0, 0.1);
transform: rotate(90deg);"></div>
<div style="position: absolute;
width: 372px;
height: 0px;top:200px; right:34px;

border: 0.1px solid rgba(0, 0, 0, 0.1);
transform: rotate(90deg);"></div>

<div ><img src="assets/img/code.png" style="margin-top:62px;"></div><div style="position: absolute;
width: 194px;
height: 48px;
left:105px;
    top:90px;
    

font-family: 'Inter';
font-style: normal;
font-weight: 600;
font-size: 18px;
line-height: 24px;

color: #000000;">Name of passenger:
<%=name %></div>
<div style="position: absolute;
width: 74px;
height: 48px;
left: 300px;
top: 90px;

font-family: 'Inter';
font-style: normal;
font-weight: 600;
font-size: 16px;
line-height: 24px;

color: #000000;">Carrier:
AC</div>
<div style="position: absolute;
width: 84px;
height: 48px;
left: 410px;
top: 90px;

font-family: 'Inter';
font-style: normal;
font-weight: 600;
font-size: 16px;
line-height: 24px;

color: #000000;">Flight No:
<%=id %></div><div style="position: absolute;
width: 60px;
height: 48px;
left: 510px;
top: 90px;

font-family: 'Inter';
font-style: normal;
font-weight: 600;
font-size: 16px;
line-height: 24px;

color: #000000;"><div style="position: absolute;
width: 64px;
height: 48px;
left: 7px;
top: 0px;

font-family: 'Inter';
font-style: normal;
font-weight: 600;
font-size: 18px;
line-height: 24px;

color: #000000;">Class:
A</div>
<div style="position: absolute;
width: 135px;
height: 48px;
right: 330px;
top: 70px;

font-family: 'Inter';
font-style: normal;
font-weight: 600;
font-size: 16px;
line-height: 24px;

color: #000000;">From: <%=Depature %>
To: <%=Destination %></div>
<div style="position: absolute;
width: 135px;
height: 48px;
right: 137px;
top: 70px;

font-family: 'Inter';
font-style: normal;
font-weight: 600;
font-size: 16px;
line-height: 24px;

color: #000000;"></div>
<div style="position: absolute;
width: 75px;
height: 48px;
right: 85px;
top: 70px;

font-family: 'Inter';
font-style: normal;
font-weight: 600;
font-size: 16px;
line-height: 24px;

color: #000000;">Luggage:
Yes</div>
<div style="position: absolute;
width: 65px;
height: 48px;
left: 7px;
top: 70px;

font-family: 'Inter';
font-style: normal;
font-weight: 600;
font-size: 16px;
line-height: 24px;

color: #000000;">Seat:
5A
</div><div style="position: absolute;
width: 66px;
height: 67px;
right: 397px;
top: 159px;

font-family: 'Inter';
font-style: normal;
font-weight: 600;
font-size: 20px;
line-height: 24px;

color: #0000FF;
">GATE
B12

</div><div style="position: absolute;
width: 146px;
height: 67px;
right: 157px;
top: 155px;

font-family: 'Inter';
font-style: normal;
font-weight: 600;
font-size: 20px;
line-height: 24px;

color: #0000FF;
">BORDING TIME
<%=DateTime %>
</div>
<div style="position: absolute;
width: 163px;
height: 18px;
top: 181px;right:-36px;

font-family: 'Inter';
font-style: normal;
font-weight: 600;
font-size: 12px;
line-height: 16px;
text-align: center;

color: #000000;
">EBSX 8242365K546E
</div>
<div style="position: absolute;
width: 175px;
height: 44px;
left: 115px;
top: 00px;

font-family: 'Inter';
font-style: normal;
font-weight: 600;
font-size: 18px;
line-height: 22px;

color: #000000;">Name of passenger:
<%=name %></div>
<div style="position: absolute;
width: 135px;
height: 44px;
left: 115px;
top: 70px;

font-family: 'Inter';
font-style: normal;
font-weight: 600;
font-size: 18px;
line-height: 22px;

color: #000000;">From: <%=Depature%>
To: <%=Destination %></div><div style="position: absolute;
position: absolute;
width: 152px;
height: 17px;
left:115px;
top: 140px;

font-family: 'Inter';
font-style: normal;
font-weight: 600;
font-size: 14px;
line-height: 2px;
/* identical to box height */

text-align: center;

color: #000000;">EBSX 8242365K546E</div>
<div style="position: absolute;
width: 45px;
height: 44px;
left: 115px;
top: 170px;

font-family: 'Inter';
font-style: normal;
font-weight: 600;
font-size: 14px;
line-height: 22px;

color: #000000;">Seat:
5A</div>
<div style="position: absolute;
width: 100px;
height: 44px;
left: 195px;
top: 170px;

font-family: 'Inter';
font-style: normal;
font-weight: 600;
font-size: 14px;
line-height: 22px;

color: #000000;">
</div>
<div style="position: absolute;
width: 52px;
height: 43px;
left: 110px;
top: 230px;

font-family: 'Inter';
font-style: normal;
font-weight: 600;
font-size: 14px;
line-height: 19px;

color: #0000FF;">GATE
B12</div>
<div style="position: absolute;
width: 117px;
height: 43px;
left: 195px;
top: 210px;

font-family: 'Inter';
font-style: normal;
font-weight: 600;
font-size: 14px;
line-height: 19px;

color: #0000FF;">BORDING TIME
<%=DateTime %></div>

</div>
</div>
            </div>
            </div>
                    <div class="card-body">
                        <div class="d-md-flex flex-md-wrap">
                            <div class="pt-2 mb-3 wmin-md-400 ml-auto">
                                <h6 class="mb-3 text-left">Total due</h6>
                                <div class="table-responsive">
                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <th class="text-left">Subtotal:</th>
                                                <td class="text-right">$<%=price %>.00 U.S</td>
                                            </tr>
                                            <tr>
                                                <th class="text-left">Tax: <span class="font-weight-normal">(0%)</span></th>
                                                <td class="text-right">$0.00 U.S</td>
                                            </tr>
                                            <tr>
                                                <th class="text-left">Total:</th>
                                                <td class="text-right text-primary">
                                                    <h5 class="font-weight-semibold">$<%=total %>.00 U.S</h5>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="text-right mt-3"> <button type="button" class="btn btn-primary"><b><i class="fa fa-paper-plane-o mr-1"></i></b>
                                        Send invoice</button> </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer" align="center"> <span class="text-muted">@2022 Phoenix Air Line. All Rights Reserved.</span> </div>
                </div>
            </div>
        </div>
    </div>

<style>
body {
    margin: 0;
    font-family: Roboto, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
    font-size: .8125rem;
    font-weight: 400;
    line-height: 1.5385;
    color: #333;
    text-align: left;
    background-color: #eee
}

.mt-50 {
    margin-top: 10px
}

.mb-50 {
    margin-bottom: 10px
}

.card {
    position: relative;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-direction: column;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 1px solid rgba(0, 0, 0, .125);
    border-radius: .1875rem
}

.card-img-actions {
    position: relative
}

.card-body {
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
    padding: 1.25rem;
    text-align: center
}

.card-title {
    margin-top: 10px;
    font-size: 17px
}

.invoice-color {
    color: red !important
}

.card-header {
    padding: .9375rem 1.25rem;
    margin-bottom: 0;
    background-color: rgba(0, 0, 0, .02);
    border-bottom: 1px solid rgba(0, 0, 0, .125)
}

a {
    text-decoration: none !important
}

.btn-light {
    color: #333;
    background-color: #fafafa;
    border-color: #ddd
}

.header-elements-inline {
    display: -ms-flexbox;
    display: flex;
    -ms-flex-align: center;
    align-items: center;
    -ms-flex-pack: justify;
    justify-content: space-between;
    -ms-flex-wrap: nowrap;
    flex-wrap: nowrap
}

@media (min-width: 768px) {
    .wmin-md-400 {
        min-width: 400px !important
    }
}

.btn-primary {
    color: #fff;
    background-color: #2196f3
}

.btn-labeled>b {
    position: absolute;
    top: -1px;
    background-color: blue;
    display: block;
    line-height: 1;
    padding: .62503rem
}
</style>
     </body>
     <script>
     window.onload = function () {
    	    document.getElementById("download")
    	        .addEventListener("click", () => {
    	            const invoice = this.document.getElementById("invoice");
    	            console.log(invoice);
    	            console.log(window);
    	            var opt = {
    	                margin: 1,
    	                filename: 'Phoneix.pdf',
    	                image: { type: 'jpeg', quality: 0.98 },
    	                html2canvas: { scale: 2 },
    	                jsPDF: { unit: 'in', format: 'letter', orientation: 'portrait' }
    	            };
    	            html2pdf().from(invoice).set(opt).save();
    	        })
    	}
     </script>
</html>