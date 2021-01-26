
<%@page import="Com.Admin.Model.CustDetailsModel"%>
<%@page import="Com.Admin.Dao.CustDetailsDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id = request.getParameter("username");

    System.out.println("inajax" + id);
    
    CustDetailsDao cd = new CustDetailsDao();
    
    CustDetailsModel cm = cd.getById(Long.parseLong(id));
    
    

%>


<div class="card">
    <div class="card-body">
       <div class="card-title">CUSTOMER DETAILS</div>
       <hr>
				    <!--<form>-->
	<div class="form-group row">
	  <label for="input-4" class="col-sm-2 col-form-label">Name</label>
	  <div class="col-sm-10">
        	<input name="cname" type="text" value="<%=cm.getCustName()%>" class="form-control" id="input-1" placeholder="Enter Customer Name">
	  </div>
	</div>
	<div class="form-group row">
	  <label for="input-5" class="col-sm-2 col-form-label">Email</label>
	  <div class="col-sm-10">
              <input name="cemail" type="text" value="<%=cm.getEmail()%>" class="form-control" id="input-2" placeholder="Enter Customer Email Address">
	  </div>
	</div>
	<div class="form-group row">
	  <label for="input-6" class="col-sm-2 col-form-label">Mobile</label>
	  <div class="col-sm-10">
		<input type="text" name="cmobile" value="<%=cm.getMobile()%>" class="form-control" id="input-3" placeholder="Enter Mobile Number">
	  </div>
	</div>
	<div class="form-group row">
	  <label for="input-4" class="col-sm-2 col-form-label">Customer's A/P</label>
	  <div class="col-sm-10">
            <input type="text" name="cap" value="<%=cm.getAddrAP()%>" class="form-control" id="input-4" placeholder="Enter Customer At Post">
	  </div>
	</div>
        <div class="form-group row">
	  <label for="input-4" class="col-sm-2 col-form-label">Customer's Taluka</label>
	  <div class="col-sm-10">
		<input type="text" name="ctal" value="<%=cm.getAddrTal()%>" class="form-control" id="input-5" placeholder="Enter Customer Taluka">
	  </div>
	</div>
        <div class="form-group row">
	  <label for="input-4" class="col-sm-2 col-form-label">Customer's District</label>
	  <div class="col-sm-10">
		<input type="text" name="cdist" value="<%=cm.getAddrDist()%>" class="form-control" id="input-6" placeholder="Enter Customer District">
	  </div>
	</div>
        <div class="form-group row">
	  <label for="input-4" class="col-sm-2 col-form-label">Customer's GSTN/AADHAR Number</label>
	  <div class="col-sm-10">
		<input type="text" name="cgstaadhar" value="<%=cm.getGstnAadhar()%>" class="form-control" id="input-7" placeholder="Enter Customer GSTN/AADHAR">
	  </div>
	</div>
        <div class="form-group row">
	  <label for="input-4" class="col-sm-2 col-form-label">State</label>
	  <div class="col-sm-10">
		<input type="text" name="cstate" value="<%=cm.getAddrState()%>" class="form-control" id="input-8" placeholder="Enter Customer State">
	  </div>
	</div>
        <div class="form-group row">
	  <label for="input-4" class="col-sm-2 col-form-label">State Code</label>
	  <div class="col-sm-10">
		<input type="text" name="cstcode" value="<%=cm.getStateCode()%>" class="form-control" id="input-9" placeholder="Enter Customer State Code">
	  </div>
	</div>
	<div class="form-group row">
	  <label for="input-1" class="col-sm-2 col-form-label"></label>
	  <div class="col-sm-10">
		<button type="button" onclick="showForm2()" class="btn btn-primary shadow-primary px-5"><i class="icon-lock"></i> SAVE & NEXT</button>
	  </div>
	</div>
	<!--</form>-->
	</div>
</div>