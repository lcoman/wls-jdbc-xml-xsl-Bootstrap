<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:fo="http://www.w3.org/1999/XSL/Format"
xmlns:xs="http://www.w3.org/2001/XMLSchema"
xmlns:fn="http://www.w3.org/2005/xpath-functions"
xmlns:xdt="http://www.w3.org/2005/xpath-datatypes"
xmlns:leo="http://xmlns.oracle.com/weblogic/jdbc-data-source" xmlns:sec="http://xmlns.oracle.com/weblogic/security" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:wls="http://xmlns.oracle.com/weblogic/security/wls" xsi:schemaLocation="http://xmlns.oracle.com/weblogic/jdbc-data-source http://xmlns.oracle.com/weblogic/jdbc-data-source/1.0/jdbc-data-source.xsd"
exclude-result-prefixes="sec wls xsi leo" >
<xsl:output indent="yes" method="html" encoding="UTF-8" omit-xml-declaration="yes"/>

		<xsl:template match="/">
		<html>
		<meta charset="UTF-8"/>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    <link href='https://fonts.googleapis.com/css?family=Antic' rel='stylesheet'/>

    <script src="https://www.w3schools.com/lib/w3.js"></script>


<style>

			table {
			box-shadow: 0px 0px 20px rgba(0,0,0,0.10),
		     0px 10px 20px rgba(0,0,0,0.05),
		     0px 20px 20px rgba(0,0,0,0.05),
		     0px 30px 20px rgba(0,0,0,0.05);
			}

			.btn-info
			{
			  background-color: #FFFFFF;
			  border-color: #324b5c;
			color: #324b5c;
			   font-size:9pt;
		          font-family:sans-serif;
				box-shadow: 0px 0px 20px rgba(0,0,0,0.10),
		     0px 10px 20px rgba(0,0,0,0.05),
		     0px 20px 20px rgba(0,0,0,0.05),
		     0px 30px 20px rgba(0,0,0,0.05);
			}

				.btn-info:hover

			{
			  background-color: #f29111;
			  border-color: #324b5c;
			   font-size:9pt;
		          font-family:sans-serif;
				box-shadow: 0px 0px 20px rgba(0,0,0,0.10),
		     0px 10px 20px rgba(0,0,0,0.05),
		     0px 20px 20px rgba(0,0,0,0.05),
		     0px 30px 20px rgba(0,0,0,0.05);
			}

			td       {
		           font-size:9pt;
		           font-family:sans-serif;
		         }

			th       {
		           font-size:9pt;

		           font-weight:bold;
		          font-family:sans-serif;
		         }

		tr:hover {
		  background-color: #cad9de;
				box-shadow: 0px 0px 5px rgba(0,0,0,0.10),
		     0px 5px 5px rgba(0,0,0,0.05),
		     0px 5px 5px rgba(0,0,0,0.05),
		     0px 5px 5px rgba(0,0,0,0.05);
		}

		#myBtn {
		  display: none;
		  position: fixed;
		  bottom: 20px;
		  left: 30px;
		  z-index: 99;
		  border: none;
		  outline: none;
		  background-color: transparent;
		  color: #324b5c;
		  cursor: pointer;
		  padding: 3px;
		  border-radius: 100px;
		  font-size: 50px;
		  font-weight: bold;
		}

		#myBtn:hover {
		  background-color: transparent;
		  color: #f29111;
		}

		th{
		color: white;
		background-color:  #00758f;
		}

		body {
		    font-family: 'Sofia';
		}

		.container {
		max-width:93%;
		}

		img {
		 transform: translate(-10%, 0%);
		 float:right;
		}

		kbd {
		  background-color:#324b5c;
		font-family: 'Autour One';
		box-shadow: 0px 5px 5px rgba(0,0,0,0.10),
		     5px 5px 5px rgba(0,0,0,0.05),
		     5px 5px 5px rgba(0,0,0,0.05),
		     5px 5px 5px rgba(0,0,0,0.05);
		}

		.domain_font {

		font-family: 'Antic';
		}

		.tableFixHead {
		  overflow-y: auto;
		}

		.tableFixHead table {
		  border-collapse: collapse;
		  width: 100%;
		}

		.tableFixHead th,
		.tableFixHead td {
		border-color: #939699;
		}

		.tableFixHead th {
		  position: sticky;
		  top: 0;
		}

		.nav-link {
		color: #4e5052;
		}

		.nav-link:hover {
		color: #00758f;
		}

		.jumbotron {
		  background-color: transparent;
		padding-bottom: 2rem;

		}

		.nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link.active

		{
		 background-color: #00758f !important;
		color:white !important;
		border-color: transparent transparent transparent !important;
			box-shadow: 0px 5px 5px rgba(0,0,0,0.10),
		     5px 5px 5px rgba(0,0,0,0.05),
		     5px 5px 5px rgba(0,0,0,0.05),
		     5px 5px 5px rgba(0,0,0,0.05);

		}
		/*
		.nav-tabs{
		border-bottom-color: black;
		}*/


		.background_jdbc_list
		{
		     border-left-style: solid;
		    border-left-color: #00758f;
		 border-left-width: 5px;
		}

		::selection {

		    background:     #8aadbf;
		 color: white;
		}

		::-moz-selection {
		  background:     #8aadbf;
		 color: white;
		}


		body{
		 /* background-image: url(http://www.milliondollarluxe.com/wp-content/uploads/2015/11/gray-wallpaper-21.jpg);  */
		 background-repeat: no-repeat;
		 background-attachment: fixed;
		 background-size: cover;
		/* filter: blur(10px);
		box-shadow: inset 0 0 0 3000px rgba(255,255,255,0.3);*/
		}

		.nav-link:focus, .nav-tabs .nav-link:hover {
		border-color: transparent transparent #00758f;
		color:#000000;
		background-color: transparent;
		}

		.nav-link:focus {
		 background-color: transparent;
		color:black;
		}

		.nav-link {
		    color: #939699;
		}

		</style>
		<script>

    // How TO - Scroll Back To Top Button: start  [based on the https://www.w3schools.com/howto/howto_js_scroll_to_top.asp]
		// When the user scrolls down 20px from the top of the document, show the button
		window.onscroll = function() {scrollFunction()};

		function scrollFunction() {
		    if (document.body.scrollTop > 30 || document.documentElement.scrollTop > 30) {
		        document.getElementById("myBtn").style.display = "block";
		    } else {
		        document.getElementById("myBtn").style.display = "none";
		    }
		}

		// When the user clicks on the button, scroll to the top of the document
		function topFunction() {
		    document.body.scrollTop = 0;
		    document.documentElement.scrollTop = 0;
		}

    // How TO - Scroll Back To Top Button : stop


		//export to excel  start [based on the https://www.codexworld.com/export-html-table-data-to-excel-using-javascript ]

		function exportTableToExcel(tableID, filename = ''){
		    var downloadLink;
		    var dataType = 'application/vnd.ms-excel';
		    var tableSelect = document.getElementById(tableID);
		    var tableHTML = tableSelect.outerHTML.replace(/ /g, '%20');

		    // Specify file name
		    filename = filename?filename+'.xls':'excel_data.xls';

		    // Create download link element
		    downloadLink = document.createElement("a");

		    document.body.appendChild(downloadLink);

		    if(navigator.msSaveOrOpenBlob){
		        var blob = new Blob(['\ufeff', tableHTML], {
		            type: dataType
		        });
		        navigator.msSaveOrOpenBlob( blob, filename);
		    }else{
		        // Create a link to the file
		        downloadLink.href = 'data:' + dataType + ', ' + tableHTML;

		        // Setting the file name
		        downloadLink.download = filename;

		        //triggering the function
		        downloadLink.click();
		    }
		}

		// excel stop

		</script>

		<body>

      <!--  based on https://www.key-shortcut.com/en/writing-systems/35-symbols/arrows/    -->
      <button onclick="topFunction()" id="myBtn" > &#11180;</button>


      <div class="jumbotron jumbotron-fluid ">
        <div class="container background_jdbc_list">

      	  <!--
      use this if you want to add your logo
      <img height="10%" width="10%" src = "
      add here your logo using the data:image/png;base64 pattern
      "/>
      -->


<h2>JDBC Data Source  </h2>
<p class="lead"> The domain has <kbd>  <xsl:value-of select="count(/jdbc_list/leo:jdbc-data-source)"/>  </kbd>  data sources.</p>
</div>
</div>


  <div class="container">
        <p> </p>
     <ul class="nav nav-tabs" id="myTab" role="tablist">

      <li class="nav-item">
        <a class="nav-link active" id="driver-tab" data-toggle="tab" href="#driver" role="tab" aria-controls="driver" aria-selected="true">jdbc-driver-params</a>
      </li>

    <li class="nav-item">
        <a class="nav-link " id="connection-tab" data-toggle="tab" href="#connection" role="tab" aria-controls="connection" aria-selected="false">jdbc-connection-pool-params</a>
      </li>

    	 <li class="nav-item">
        <a class="nav-link " id="source-tab" data-toggle="tab" href="#source" role="tab" aria-controls="source" aria-selected="false">jdbc-data-source-params</a>
      </li>

      <li class="nav-item">
        <a class="nav-link " id="xa-tab" data-toggle="tab" href="#xa" role="tab" aria-controls="xa" aria-selected="false">jdbc-xa-params</a>
      </li>

      <li class="nav-item">
        <a class="nav-link " id="oracle-tab" data-toggle="tab" href="#oracle" role="tab" aria-controls="oracle" aria-selected="false">jdbc-oracle-params</a>
      </li>

      </ul>

  <p> </p>


 <div class="tab-content" id="myTabContent">
 <div class="tab-pane fade show active" id="driver" role="tabpanel" aria-labelledby="driver-tab">

The below table covers the jdbc-driver-params details.

 <p> <br> </br></p>


 <form class="form-inline active-cyan-4">
<input class="form-control form-control-sm mr-3 w-75" type="text" oninput="w3.filterHTML('#driver-table', '.item-driver', this.value)"  placeholder="jdbc-driver-params Search" aria-label="Search" />
<i class="fa fa-search " aria-hidden="true"></i>

</form>

 <p> </p>

  <table id="driver-table" class="table table-bordered table-sm  tableFixHead  ">
    <tr class="bg-info">
      <th style="text-align:center">name</th>
        <th style="text-align:center">datasource-type</th>
      <th style="text-align:center">url</th>
	   <th style="text-align:center">driver-name</th>
	    <th style="text-align:center">user</th>
	   <th style="text-align:center">oracle.net.CONNECT_TIMEOUT</th>
	   <th style="text-align:center">SendStreamAsBlob</th>

<!-- Some other  (not very used)  properties not yet included to keep the design simple:
  <th style="text-align:center">oracle.jdbc.useThreadLocalBufferCache</th>
    <th style="text-align:center">oracle.jdbc.implicitStatementCacheSize</th>
      <th style="text-align:center">defaultRowPrefetch</th>
        <th style="text-align:center">oracle.jdbc.maxCachedBufferSize</th>
          <th style="text-align:center">oracle.jdbc.freeMemoryOnEnterImplicitCache</th>
-->


   </tr>
   <xsl:for-each select="jdbc_list/leo:jdbc-data-source">
   <tr class="item-driver">
     <td><xsl:value-of select="leo:name"/></td>
      <td><xsl:value-of select="leo:datasource-type"/></td>
     <td><xsl:value-of select="leo:jdbc-driver-params/leo:url"/></td>
     <td><xsl:value-of select="leo:jdbc-driver-params/leo:driver-name"/></td>


   <td>
     <xsl:for-each select="leo:jdbc-driver-params/leo:properties/leo:property">
          <xsl:variable name="userds"  select="leo:name"/>
     <xsl:choose>
       <xsl:when test="contains($userds , 'user')">
   <xsl:value-of select="leo:value"/>
    </xsl:when>
     </xsl:choose>
         </xsl:for-each>
   </td>


   <td>
     <xsl:for-each select="leo:jdbc-driver-params/leo:properties/leo:property">
                  <xsl:variable name="CONNECT_TIMEOUT"  select="leo:name"/>
             <xsl:choose>
       <xsl:when test="contains($CONNECT_TIMEOUT , 'oracle.net.CONNECT_TIMEOUT')">
   <xsl:value-of select="leo:value"/>
    </xsl:when>
     </xsl:choose>
         </xsl:for-each>
   </td>


   <td>
     <xsl:for-each select="leo:jdbc-driver-params/leo:properties/leo:property">
                  <xsl:variable name="param"  select="leo:name"/>
             <xsl:choose>
       <xsl:when test="contains($param , 'SendStreamAsBlob')">
   <xsl:value-of select="leo:value"/>
    </xsl:when>
     </xsl:choose>
         </xsl:for-each>
   </td>


<!-- Some other possible properties not yet included:

<td>
  <xsl:for-each select="leo:jdbc-driver-params/leo:properties/leo:property">
               <xsl:variable name="param"  select="leo:name"/>
          <xsl:choose>
    <xsl:when test="contains($param , 'oracle.jdbc.useThreadLocalBufferCache')">
<xsl:value-of select="leo:value"/>
 </xsl:when>
  </xsl:choose>
      </xsl:for-each>
</td>

<td>
  <xsl:for-each select="leo:jdbc-driver-params/leo:properties/leo:property">
               <xsl:variable name="param"  select="leo:name"/>
          <xsl:choose>
    <xsl:when test="contains($param , 'oracle.jdbc.implicitStatementCacheSize')">
<xsl:value-of select="leo:value"/>
 </xsl:when>
  </xsl:choose>
      </xsl:for-each>
</td>

<td>
  <xsl:for-each select="leo:jdbc-driver-params/leo:properties/leo:property">
               <xsl:variable name="param"  select="leo:name"/>
          <xsl:choose>
    <xsl:when test="contains($param , 'defaultRowPrefetch')">
<xsl:value-of select="leo:value"/>
 </xsl:when>
  </xsl:choose>
      </xsl:for-each>
</td>

<td>
  <xsl:for-each select="leo:jdbc-driver-params/leo:properties/leo:property">
               <xsl:variable name="param"  select="leo:name"/>
          <xsl:choose>
    <xsl:when test="contains($param , 'oracle.jdbc.maxCachedBufferSize')">
<xsl:value-of select="leo:value"/>
 </xsl:when>
  </xsl:choose>
      </xsl:for-each>
</td>

<td>
  <xsl:for-each select="leo:jdbc-driver-params/leo:properties/leo:property">
               <xsl:variable name="param"  select="leo:name"/>
          <xsl:choose>
    <xsl:when test="contains($param , 'oracle.jdbc.freeMemoryOnEnterImplicitCache')">
<xsl:value-of select="leo:value"/>
 </xsl:when>
  </xsl:choose>
      </xsl:for-each>
</td>

-->



 </tr>
     </xsl:for-each>
  </table>

  <button class="btn btn-info btn-sm" onclick="exportTableToExcel('driver-table', 'jdbc-driver-params')">Export To Excel </button>

<p/> <br/> <p/>

   </div>


<div id="connection" class="tab-pane fade">

The below table covers the jdbc-connection-pool-params details.
<p> <br> </br></p>


<form class="form-inline active-cyan-4">
<input class="form-control form-control-sm mr-3 w-75" type="text" oninput="w3.filterHTML('#connection-table', '.item-connection', this.value)"  placeholder="jdbc-connection-pool-params Search" aria-label="Search" />
<i class="fa fa-search " aria-hidden="true"></i>

</form>

<p> </p>

<table id="connection-table" class="table table-bordered table-sm  tableFixHead  ">
<tr class="bg-info">
<th style="text-align:center"  >name</th>
 <th style="text-align:center" >initial-capacity</th>
<th style="text-align:center" >min-capacity</th>
 <th style="text-align:center" >max-capacity</th>
 <th style="text-align:center" >capacity-increment</th>
<th style="text-align:center" >connection-creation-retry-frequency-seconds</th>
 <th style="text-align:center" >test-frequency-seconds</th>
<th style="text-align:center">test-connections-on-reserve</th>
  <th style="text-align:center" >test-table-name</th>
  <th style="text-align:center"  >remove-infected-connections</th>
  <th style="text-align:center"  >seconds-to-trust-an-idle-pool-connection</th>
  <th style="text-align:center">statement-cache-size</th>
  <th style="text-align:center">statement-cache-type</th>
  <th style="text-align:center">shrink-frequency-seconds</th>
  <th style="text-align:center">highest-num-waiters</th>
  <th style="text-align:center">connection-reserve-timeout-seconds</th>
  <th style="text-align:center">ignore-in-use-connections-enabled</th>
  <th style="text-align:center">inactive-connection-timeout-seconds</th>
  <th style="text-align:center">login-delay-seconds</th>
  <th style="text-align:center">statement-timeout</th>
  <th style="text-align:center">pinned-to-thread</th>
  <th style="text-align:center">wrap-types</th>
  <th style="text-align:center">connection-harvest-max-count</th>
  <th style="text-align:center">connection-harvest-trigger-count</th>
  <th style="text-align:center">count-of-test-failures-till-flush</th>
  <th style="text-align:center">count-of-refresh-failures-till-disable</th>
  <th style="text-align:center">jdbc-xa-debug-level</th>

  </tr>

  <xsl:for-each select="jdbc_list/leo:jdbc-data-source">
   <tr class="item-connection">
 <td><xsl:value-of select="leo:name"/></td>

 <td>
<xsl:variable name="initial"  select="leo:jdbc-connection-pool-params/leo:initial-capacity"/>
  <xsl:choose>
     <xsl:when test="$initial">
<xsl:value-of select="leo:jdbc-connection-pool-params/leo:initial-capacity"/>
  </xsl:when>
     <xsl:otherwise>
   <!-- <xsl:value-of select="jdbc-driver-params/properties/property[position()=1]/value"/>  -->
<xsl:text> default initial-capacity</xsl:text>
  </xsl:otherwise>
   </xsl:choose>
</td>


<td>
<xsl:variable name="initial"  select="leo:jdbc-connection-pool-params/leo:min-capacity"/>
 <xsl:choose>
    <xsl:when test="$initial">
<xsl:value-of select="leo:jdbc-connection-pool-params/leo:min-capacity"/>
 </xsl:when>
    <xsl:otherwise>
<xsl:text> default min-capacity</xsl:text>
 </xsl:otherwise>
  </xsl:choose>
</td>


<td>
<xsl:variable name="initial"  select="leo:jdbc-connection-pool-params/leo:max-capacity"/>
  <xsl:choose>
     <xsl:when test="$initial">
<xsl:value-of select="leo:jdbc-connection-pool-params/leo:max-capacity"/>
  </xsl:when>
     <xsl:otherwise>
<xsl:text> default max-capacity</xsl:text>
  </xsl:otherwise>
   </xsl:choose>
</td>


<td>
<xsl:variable name="initial"  select="leo:jdbc-connection-pool-params/leo:capacity-increment"/>
 <xsl:choose>
    <xsl:when test="$initial">
<xsl:value-of select="leo:jdbc-connection-pool-params/leo:capacity-increment"/>
 </xsl:when>
    <xsl:otherwise>
<xsl:text> default capacity-increment</xsl:text>
 </xsl:otherwise>
  </xsl:choose>
</td>


<td>
<xsl:variable name="initial"  select="leo:jdbc-connection-pool-params/leo:connection-creation-retry-frequency-seconds"/>
 <xsl:choose>
<xsl:when test="$initial">
<xsl:value-of select="leo:jdbc-connection-pool-params/leo:connection-creation-retry-frequency-seconds"/>
 </xsl:when>
    <xsl:otherwise>
<xsl:text> default connection-creation-retry-frequency-seconds</xsl:text>
 </xsl:otherwise>
  </xsl:choose>
</td>



<td>
<xsl:variable name="initial"  select="leo:jdbc-connection-pool-params/leo:test-frequency-seconds"/>
 <xsl:choose>
    <xsl:when test="$initial">
<xsl:value-of select="leo:jdbc-connection-pool-params/leo:test-frequency-seconds"/>
 </xsl:when>
    <xsl:otherwise>
<xsl:text> default test-frequency-seconds </xsl:text>
 </xsl:otherwise>
  </xsl:choose>
</td>



<td>
<xsl:variable name="initial"  select="leo:jdbc-connection-pool-params/leo:test-connections-on-reserve"/>
 <xsl:choose>
    <xsl:when test="$initial">
<xsl:value-of select="leo:jdbc-connection-pool-params/leo:test-connections-on-reserve"/>
 </xsl:when>
    <xsl:otherwise>
<xsl:text> default test-connections-on-reserve</xsl:text>
 </xsl:otherwise>
  </xsl:choose>
</td>



<td>
<xsl:variable name="initial"  select="leo:jdbc-connection-pool-params/leo:test-table-name"/>
 <xsl:choose>
  <xsl:when test="$initial">
<xsl:value-of select="leo:jdbc-connection-pool-params/leo:test-table-name"/>
 </xsl:when>
    <xsl:otherwise>
<xsl:text> default test-table-name</xsl:text>
 </xsl:otherwise>
  </xsl:choose>
</td>


<td>
<xsl:variable name="initial"  select="leo:jdbc-connection-pool-params/leo:remove-infected-connections"/>
 <xsl:choose>
    <xsl:when test="$initial">
<xsl:value-of select="leo:jdbc-connection-pool-params/leo:remove-infected-connections"/>
 </xsl:when>
    <xsl:otherwise>
<xsl:text> default remove-infected-connections</xsl:text>
 </xsl:otherwise>
  </xsl:choose>
</td>


<td>
<xsl:variable name="initial"  select="leo:jdbc-connection-pool-params/leo:seconds-to-trust-an-idle-pool-connection"/>
 <xsl:choose>
    <xsl:when test="$initial">
<xsl:value-of select="leo:jdbc-connection-pool-params/leo:seconds-to-trust-an-idle-pool-connection"/>
 </xsl:when>
    <xsl:otherwise>
<xsl:text> default seconds-to-trust-an-idle-pool-connection</xsl:text>
 </xsl:otherwise>
  </xsl:choose>
</td>



<td>
<xsl:variable name="value"  select="leo:jdbc-connection-pool-params/leo:statement-cache-size"/>
 <xsl:choose>
    <xsl:when test="$value">
<xsl:value-of select="leo:jdbc-connection-pool-params/leo:statement-cache-size"/>
 </xsl:when>
    <xsl:otherwise>
<xsl:text> default statement-cache-size</xsl:text>
 </xsl:otherwise>
  </xsl:choose>
</td>


<td>
<xsl:variable name="value"  select="leo:jdbc-connection-pool-params/leo:statement-cache-type"/>
 <xsl:choose>
    <xsl:when test="$value">
<xsl:value-of select="leo:jdbc-connection-pool-params/leo:statement-cache-type"/>
 </xsl:when>
    <xsl:otherwise>
<xsl:text> default statement-cache-type</xsl:text>
 </xsl:otherwise>
  </xsl:choose>
</td>



<td>
<xsl:variable name="value"  select="leo:jdbc-connection-pool-params/leo:shrink-frequency-seconds"/>
 <xsl:choose>
    <xsl:when test="$value">
<xsl:value-of select="leo:jdbc-connection-pool-params/leo:shrink-frequency-seconds"/>
 </xsl:when>
    <xsl:otherwise>
<xsl:text> default shrink-frequency-seconds</xsl:text>
 </xsl:otherwise>
  </xsl:choose>
</td>



<td>
<xsl:variable name="value"  select="leo:jdbc-connection-pool-params/leo:highest-num-waiters"/>
 <xsl:choose>
    <xsl:when test="$value">
<xsl:value-of select="leo:jdbc-connection-pool-params/leo:highest-num-waiters"/>
 </xsl:when>
    <xsl:otherwise>
<xsl:text> default highest-num-waiters</xsl:text>
 </xsl:otherwise>
  </xsl:choose>
</td>



<td>
<xsl:variable name="value"  select="leo:jdbc-connection-pool-params/leo:connection-reserve-timeout-seconds"/>
 <xsl:choose>
    <xsl:when test="$value">
<xsl:value-of select="leo:jdbc-connection-pool-params/leo:connection-reserve-timeout-seconds"/>
 </xsl:when>
    <xsl:otherwise>
<xsl:text> default connection-reserve-timeout-seconds</xsl:text>
 </xsl:otherwise>
  </xsl:choose>
</td>




<td>
<xsl:variable name="value"  select="leo:jdbc-connection-pool-params/leo:ignore-in-use-connections-enabled"/>
 <xsl:choose>
    <xsl:when test="$value">
<xsl:value-of select="leo:jdbc-connection-pool-params/leo:ignore-in-use-connections-enabled"/>
 </xsl:when>
    <xsl:otherwise>
<xsl:text> default ignore-in-use-connections-enabled</xsl:text>
 </xsl:otherwise>
  </xsl:choose>
</td>



<td>
<xsl:variable name="value"  select="leo:jdbc-connection-pool-params/leo:inactive-connection-timeout-seconds"/>
 <xsl:choose>
    <xsl:when test="$value">
<xsl:value-of select="leo:jdbc-connection-pool-params/leo:inactive-connection-timeout-seconds"/>
 </xsl:when>
    <xsl:otherwise>
<xsl:text> default inactive-connection-timeout-seconds</xsl:text>
 </xsl:otherwise>
  </xsl:choose>
</td>



<td>
<xsl:variable name="value"  select="leo:jdbc-connection-pool-params/leo:login-delay-seconds"/>
 <xsl:choose>
    <xsl:when test="$value">
<xsl:value-of select="leo:jdbc-connection-pool-params/leo:login-delay-seconds"/>
 </xsl:when>
    <xsl:otherwise>
<xsl:text> default login-delay-seconds</xsl:text>
 </xsl:otherwise>
  </xsl:choose>
</td>



<td>
<xsl:variable name="value"  select="leo:jdbc-connection-pool-params/leo:statement-timeout"/>
 <xsl:choose>
    <xsl:when test="$value">
<xsl:value-of select="leo:jdbc-connection-pool-params/leo:statement-timeout"/>
 </xsl:when>
    <xsl:otherwise>
<xsl:text> default statement-timeout</xsl:text>
 </xsl:otherwise>
  </xsl:choose>
</td>



<td>
<xsl:variable name="value"  select="leo:jdbc-connection-pool-params/leo:pinned-to-thread"/>
 <xsl:choose>
    <xsl:when test="$value">
<xsl:value-of select="leo:jdbc-connection-pool-params/leo:pinned-to-thread"/>
 </xsl:when>
    <xsl:otherwise>
<xsl:text> default pinned-to-thread</xsl:text>
 </xsl:otherwise>
  </xsl:choose>
</td>



<td>
<xsl:variable name="value"  select="leo:jdbc-connection-pool-params/leo:wrap-types"/>
 <xsl:choose>
    <xsl:when test="$value">
<xsl:value-of select="leo:jdbc-connection-pool-params/leo:wrap-types"/>
 </xsl:when>
    <xsl:otherwise>
<xsl:text> default wrap-types</xsl:text>
 </xsl:otherwise>
  </xsl:choose>
</td>



<td>
<xsl:variable name="value"  select="leo:jdbc-connection-pool-params/leo:connection-harvest-max-count"/>
 <xsl:choose>
    <xsl:when test="$value">
<xsl:value-of select="leo:jdbc-connection-pool-params/leo:connection-harvest-max-count"/>
 </xsl:when>
    <xsl:otherwise>
<xsl:text> default connection-harvest-max-count</xsl:text>
 </xsl:otherwise>
  </xsl:choose>
</td>



<td>
<xsl:variable name="value"  select="leo:jdbc-connection-pool-params/leo:connection-harvest-trigger-count"/>
 <xsl:choose>
    <xsl:when test="$value">
<xsl:value-of select="leo:jdbc-connection-pool-params/leo:connection-harvest-trigger-count"/>
 </xsl:when>
    <xsl:otherwise>
<xsl:text> default connection-harvest-trigger-count</xsl:text>
 </xsl:otherwise>
  </xsl:choose>
</td>


<td>
<xsl:variable name="value"  select="leo:jdbc-connection-pool-params/leo:count-of-test-failures-till-flush"/>
 <xsl:choose>
    <xsl:when test="$value">
<xsl:value-of select="leo:jdbc-connection-pool-params/leo:count-of-test-failures-till-flush"/>
 </xsl:when>
    <xsl:otherwise>
<xsl:text> default count-of-test-failures-till-flush</xsl:text>
 </xsl:otherwise>
  </xsl:choose>
</td>



<td>
<xsl:variable name="value"  select="leo:jdbc-connection-pool-params/leo:count-of-refresh-failures-till-disable"/>
 <xsl:choose>
    <xsl:when test="$value">
<xsl:value-of select="leo:jdbc-connection-pool-params/leo:count-of-refresh-failures-till-disable"/>
 </xsl:when>
    <xsl:otherwise>
<xsl:text> default count-of-refresh-failures-till-disable</xsl:text>
 </xsl:otherwise>
  </xsl:choose>
</td>


<td>
<xsl:variable name="value"  select="leo:jdbc-connection-pool-params/leo:jdbc-xa-debug-level"/>
 <xsl:choose>
    <xsl:when test="$value">
<xsl:value-of select="leo:jdbc-connection-pool-params/leo:jdbc-xa-debug-level"/>
 </xsl:when>
    <xsl:otherwise>
<xsl:text> default jdbc-xa-debug-level</xsl:text>
 </xsl:otherwise>
  </xsl:choose>
</td>


</tr>
    </xsl:for-each>
 </table>

 <button class="btn btn-info btn-sm" onclick="exportTableToExcel('connection-table', 'jdbc-connection-pool-params')">Export To Excel </button>

<p/> <br/> <p/>

  </div>



  <div id="source" class="tab-pane fade">

The below table covers the jdbc-data-source-params details.

<p> <br> </br></p>


 <form class="form-inline active-cyan-4">
<input class="form-control form-control-sm mr-3 w-75" type="text" oninput="w3.filterHTML('#source-table', '.item-source', this.value)"  placeholder="jdbc-data-source-params Search" aria-label="Search" />
<i class="fa fa-search " aria-hidden="true"></i>

</form>

 <p> </p>


  <table id="source-table" class="table table-bordered table-sm  tableFixHead  ">
    <tr class="bg-info">
      <th style="text-align:center">name</th>
      <th style="text-align:center">jndi-name</th>
  <th style="text-align:center">global-transactions-protocol</th>
    <th style="text-align:center">keep-conn-after-local-tx</th>
      <th style="text-align:center">keep-conn-after-global-tx</th>
      <th style="text-align:center">row-prefetch</th>
      <th style="text-align:center">stream-chunk-size</th>
 </tr>

   <xsl:for-each select="jdbc_list/leo:jdbc-data-source">

   <tr class="item-source">

     <td><xsl:value-of select="leo:name"/></td>


     <td>
     <xsl:variable name="value"  select="leo:jdbc-data-source-params/leo:jndi-name"/>
      <xsl:choose>
         <xsl:when test="$value">
     <xsl:value-of select="leo:jdbc-data-source-params/leo:jndi-name"/>
      </xsl:when>
         <xsl:otherwise>
     <xsl:text> default jndi-name</xsl:text>
      </xsl:otherwise>
       </xsl:choose>
     </td>


     <td>
     <xsl:variable name="value"  select="leo:jdbc-data-source-params/leo:global-transactions-protocol"/>
      <xsl:choose>
         <xsl:when test="$value">
     <xsl:value-of select="leo:jdbc-data-source-params/leo:global-transactions-protocol"/>
      </xsl:when>
         <xsl:otherwise>
     <xsl:text> default global-transactions-protocol</xsl:text>
      </xsl:otherwise>
       </xsl:choose>
     </td>



     <td>
     <xsl:variable name="value"  select="leo:jdbc-data-source-params/leo:keep-conn-after-local-tx"/>
      <xsl:choose>
         <xsl:when test="$value">
     <xsl:value-of select="leo:jdbc-data-source-params/leo:keep-conn-after-local-tx"/>
      </xsl:when>
         <xsl:otherwise>
     <xsl:text> default keep-conn-after-local-tx</xsl:text>
      </xsl:otherwise>
       </xsl:choose>
     </td>


     <td>
     <xsl:variable name="value"  select="leo:jdbc-data-source-params/leo:keep-conn-after-global-tx"/>
      <xsl:choose>
         <xsl:when test="$value">
     <xsl:value-of select="leo:jdbc-data-source-params/leo:keep-conn-after-global-tx"/>
      </xsl:when>
         <xsl:otherwise>
     <xsl:text> default keep-conn-after-global-tx</xsl:text>
      </xsl:otherwise>
       </xsl:choose>
     </td>


     <td>
     <xsl:variable name="value"  select="leo:jdbc-data-source-params/leo:row-prefetch"/>
      <xsl:choose>
         <xsl:when test="$value">
     <xsl:value-of select="leo:jdbc-data-source-params/leo:row-prefetch"/>
      </xsl:when>
         <xsl:otherwise>
     <xsl:text> default row-prefetch</xsl:text>
      </xsl:otherwise>
       </xsl:choose>
     </td>



     <td>
     <xsl:variable name="value"  select="leo:jdbc-data-source-params/leo:stream-chunk-size"/>
      <xsl:choose>
         <xsl:when test="$value">
     <xsl:value-of select="leo:jdbc-data-source-params/leo:stream-chunk-size"/>
      </xsl:when>
         <xsl:otherwise>
     <xsl:text> default stream-chunk-size</xsl:text>
      </xsl:otherwise>
       </xsl:choose>
     </td>


 </tr>
     </xsl:for-each>

  </table>

  <button class="btn btn-info btn-sm" onclick="exportTableToExcel('source-table', 'jdbc-data-source-params')">Export To Excel </button>

<p/> <br/> <p/>

  </div>



  <div id="xa" class="tab-pane fade">

The below table covers the jdbc-xa-params  details. <p> </p>


<xsl:variable name="count"  select="count(/jdbc_list/leo:jdbc-data-source/leo:jdbc-xa-params)"/>
<xsl:choose>
<xsl:when test="$count > 0">
Only  <font color="#f80000"> <b> <xsl:value-of select="count(/jdbc_list/leo:jdbc-data-source/leo:jdbc-xa-params)"/> </b> </font> data sources have such parameters.
</xsl:when>
<xsl:otherwise>
No data source has such jdbc-xa-params details.
</xsl:otherwise>
    </xsl:choose>


<p> <br> </br></p>



 <form class="form-inline active-cyan-4">
<input class="form-control form-control-sm mr-3 w-75" type="text" oninput="w3.filterHTML('#xa-table', '.item-xa', this.value)"  placeholder="jdbc-xa-params Search" aria-label="Search" />
<i class="fa fa-search " aria-hidden="true"></i>

</form>

 <p> </p>



  <table id="xa-table" class="table table-bordered table-sm  tableFixHead  ">
    <tr class="bg-info">
      <th style="text-align:center">name</th>
      <th style="text-align:center">keep-xa-conn-till-tx-complete</th>
        <th style="text-align:center">need-tx-ctx-on-close</th>
          <th style="text-align:center">xa-end-only-once</th>
            <th style="text-align:center">keep-logical-conn-open-on-release</th>
              <th style="text-align:center">resource-health-monitoring</th>
                <th style="text-align:center">recover-only-once</th>
                  <th style="text-align:center">xa-set-transaction-timeout</th>
                    <th style="text-align:center">xa-transaction-timeout</th>
                      <th style="text-align:center">rollback-local-tx-upon-conn-close</th>
                        <th style="text-align:center">xa-retry-duration-seconds</th>
                          <th style="text-align:center">xa-retry-interval-seconds</th>

 </tr>

<xsl:for-each select="/jdbc_list/leo:jdbc-data-source">
   <xsl:variable name="value"  select="leo:jdbc-xa-params"/>
   <xsl:variable name="pos" select="position()" />

  <xsl:choose>
     <xsl:when test="$value">

   <tr class="item-xa">

     <td><xsl:value-of select="/jdbc_list/leo:jdbc-data-source[$pos]/leo:name"/></td>


     <td>
     <xsl:variable name="value"  select="leo:jdbc-xa-params/leo:keep-xa-conn-till-tx-complete"/>
      <xsl:choose>
         <xsl:when test="$value">
     <xsl:value-of select="leo:jdbc-xa-params/leo:keep-xa-conn-till-tx-complete"/>
      </xsl:when>
         <xsl:otherwise>
     <xsl:text> default keep-xa-conn-till-tx-complete</xsl:text>
      </xsl:otherwise>
       </xsl:choose>
     </td>



     <td>
     <xsl:variable name="value"  select="leo:jdbc-xa-params/leo:need-tx-ctx-on-close"/>
      <xsl:choose>
         <xsl:when test="$value">
     <xsl:value-of select="leo:jdbc-xa-params/leo:need-tx-ctx-on-close"/>
      </xsl:when>
         <xsl:otherwise>
     <xsl:text> default need-tx-ctx-on-close</xsl:text>
      </xsl:otherwise>
       </xsl:choose>
     </td>


     <td>
     <xsl:variable name="value"  select="leo:jdbc-xa-params/leo:xa-end-only-once"/>
      <xsl:choose>
         <xsl:when test="$value">
     <xsl:value-of select="leo:jdbc-xa-params/leo:xa-end-only-once"/>
      </xsl:when>
         <xsl:otherwise>
     <xsl:text> default xa-end-only-once</xsl:text>
      </xsl:otherwise>
       </xsl:choose>
     </td>


     <td>
     <xsl:variable name="value"  select="leo:jdbc-xa-params/leo:keep-logical-conn-open-on-release"/>
      <xsl:choose>
         <xsl:when test="$value">
     <xsl:value-of select="leo:jdbc-xa-params/leo:keep-logical-conn-open-on-release"/>
      </xsl:when>
         <xsl:otherwise>
     <xsl:text> default keep-logical-conn-open-on-release</xsl:text>
      </xsl:otherwise>
       </xsl:choose>
     </td>


     <td>
     <xsl:variable name="value"  select="leo:jdbc-xa-params/leo:resource-health-monitoring"/>
      <xsl:choose>
         <xsl:when test="$value">
     <xsl:value-of select="leo:jdbc-xa-params/leo:resource-health-monitoring"/>
      </xsl:when>
         <xsl:otherwise>
     <xsl:text> default resource-health-monitoring</xsl:text>
      </xsl:otherwise>
       </xsl:choose>
     </td>


     <td>
     <xsl:variable name="value"  select="leo:jdbc-xa-params/leo:recover-only-once"/>
      <xsl:choose>
         <xsl:when test="$value">
     <xsl:value-of select="leo:jdbc-xa-params/leo:recover-only-once"/>
      </xsl:when>
         <xsl:otherwise>
     <xsl:text> default recover-only-once</xsl:text>
      </xsl:otherwise>
       </xsl:choose>
     </td>


     <td>
     <xsl:variable name="value"  select="leo:jdbc-xa-params/leo:xa-set-transaction-timeout"/>
      <xsl:choose>
         <xsl:when test="$value">
     <xsl:value-of select="leo:jdbc-xa-params/leo:xa-set-transaction-timeout"/>
      </xsl:when>
         <xsl:otherwise>
     <xsl:text> default xa-set-transaction-timeout</xsl:text>
      </xsl:otherwise>
       </xsl:choose>
     </td>


     <td>
     <xsl:variable name="value"  select="leo:jdbc-xa-params/leo:xa-transaction-timeout"/>
      <xsl:choose>
         <xsl:when test="$value">
     <xsl:value-of select="leo:jdbc-xa-params/leo:xa-transaction-timeout"/>
      </xsl:when>
         <xsl:otherwise>
     <xsl:text> default xa-transaction-timeout</xsl:text>
      </xsl:otherwise>
       </xsl:choose>
     </td>


     <td>
     <xsl:variable name="value"  select="leo:jdbc-xa-params/leo:rollback-local-tx-upon-conn-close"/>
      <xsl:choose>
         <xsl:when test="$value">
     <xsl:value-of select="leo:jdbc-xa-params/leo:rollback-local-tx-upon-conn-close"/>
      </xsl:when>
         <xsl:otherwise>
     <xsl:text> default rollback-local-tx-upon-conn-close</xsl:text>
      </xsl:otherwise>
       </xsl:choose>
     </td>


     <td>
     <xsl:variable name="value"  select="leo:jdbc-xa-params/leo:xa-retry-duration-seconds"/>
      <xsl:choose>
         <xsl:when test="$value">
     <xsl:value-of select="leo:jdbc-xa-params/leo:xa-retry-duration-seconds"/>
      </xsl:when>
         <xsl:otherwise>
     <xsl:text> default xa-retry-duration-seconds</xsl:text>
      </xsl:otherwise>
       </xsl:choose>
     </td>


     <td>
     <xsl:variable name="value"  select="leo:jdbc-xa-params/leo:xa-retry-interval-seconds"/>
      <xsl:choose>
         <xsl:when test="$value">
     <xsl:value-of select="leo:jdbc-xa-params/leo:xa-retry-interval-seconds"/>
      </xsl:when>
         <xsl:otherwise>
     <xsl:text> default xa-retry-interval-seconds</xsl:text>
      </xsl:otherwise>
       </xsl:choose>
     </td>

 </tr>

   </xsl:when>
    </xsl:choose>
   </xsl:for-each>

  </table>

  <button class="btn btn-info btn-sm" onclick="exportTableToExcel('xa-table', 'jdbc-xa-params')">Export To Excel </button>


<p/> <br/> <p/>

  </div>





  <div id="oracle" class="tab-pane fade">

The below table covers the jdbc-oracle-params details.<p> </p>

 <xsl:variable name="count"  select="count(/jdbc_list/leo:jdbc-data-source/leo:jdbc-oracle-params)"/>
 <xsl:choose>
<xsl:when test="$count > 0">
Only  <font color="#f80000"> <b> <xsl:value-of select="count(/jdbc_list/leo:jdbc-data-source/leo:jdbc-oracle-params)"/> </b> </font> data sources have such parameters.
</xsl:when>
<xsl:otherwise>
No data source has such jdbc-oracle-params details.
</xsl:otherwise>
     </xsl:choose>

<p> <br> </br></p>



 <form class="form-inline active-cyan-4">
<input class="form-control form-control-sm mr-3 w-75" type="text" oninput="w3.filterHTML('#oracle-table', '.item-oracle', this.value)"  placeholder="jdbc-oracle-params Search" aria-label="Search" />
<i class="fa fa-search " aria-hidden="true"></i>

</form>

 <p> </p>


  <table id="oracle-table" class="table table-bordered table-sm  tableFixHead  ">
    <tr class="bg-info">
      <th style="text-align:center">name</th>
        <th style="text-align:center">datasource-type</th>
      <th style="text-align:center">fan-enabled</th>
        <th style="text-align:center">ons-node-list</th>
          <th style="text-align:center">ons-wallet-file</th>
            <th style="text-align:center">active-gridlink</th>
              <th style="text-align:center">oracle-optimize-utf8-conversion</th>
                <th style="text-align:center">affinity-policy</th>
                  <th style="text-align:center">oracle-proxy-session</th>
                    <th style="text-align:center">use-database-credentials</th>
                      <th style="text-align:center">replay-initiation-timeout</th>

 </tr>

<xsl:for-each select="/jdbc_list/leo:jdbc-data-source">
   <xsl:variable name="value"  select="leo:jdbc-oracle-params"/>
   <xsl:variable name="pos" select="position()" />

  <xsl:choose>
     <xsl:when test="$value">


   <tr class="item-oracle">


     <td><xsl:value-of select="/jdbc_list/leo:jdbc-data-source[$pos]/leo:name"/></td>
      <td><xsl:value-of select="/jdbc_list/leo:jdbc-data-source[$pos]/leo:datasource-type"/></td>



     <td>
     <xsl:variable name="value"  select="leo:jdbc-oracle-params/leo:fan-enabled"/>
      <xsl:choose>
         <xsl:when test="$value">
     <xsl:value-of select="leo:jdbc-oracle-params/leo:fan-enabled"/>
      </xsl:when>
         <xsl:otherwise>
     <xsl:text> default fan-enabled </xsl:text>
      </xsl:otherwise>
       </xsl:choose>
     </td>


     <td>
     <xsl:variable name="value"  select="leo:jdbc-oracle-params/leo:ons-node-list"/>
      <xsl:choose>
         <xsl:when test="$value">
     <xsl:value-of select="leo:jdbc-oracle-params/leo:ons-node-list"/>
      </xsl:when>
         <xsl:otherwise>
     <xsl:text> default ons-node-list </xsl:text>
      </xsl:otherwise>
       </xsl:choose>
     </td>


     <td>
     <xsl:variable name="value"  select="leo:jdbc-oracle-params/leo:ons-wallet-file"/>
      <xsl:choose>
         <xsl:when test="$value">
     <xsl:value-of select="leo:jdbc-oracle-params/leo:ons-wallet-file"/>
      </xsl:when>
         <xsl:otherwise>
     <xsl:text> default ons-wallet-file </xsl:text>
      </xsl:otherwise>
       </xsl:choose>
     </td>


     <td>
     <xsl:variable name="value"  select="leo:jdbc-oracle-params/leo:active-gridlink"/>
      <xsl:choose>
         <xsl:when test="$value">
     <xsl:value-of select="leo:jdbc-oracle-params/leo:active-gridlink"/>
      </xsl:when>
         <xsl:otherwise>
     <xsl:text> default active-gridlink </xsl:text>
      </xsl:otherwise>
       </xsl:choose>
     </td>


     <td>
     <xsl:variable name="value"  select="leo:jdbc-oracle-params/leo:oracle-optimize-utf8-conversion"/>
      <xsl:choose>
         <xsl:when test="$value">
     <xsl:value-of select="leo:jdbc-oracle-params/leo:oracle-optimize-utf8-conversion"/>
      </xsl:when>
         <xsl:otherwise>
     <xsl:text> default oracle-optimize-utf8-conversion </xsl:text>
      </xsl:otherwise>
       </xsl:choose>
     </td>


     <td>
     <xsl:variable name="value"  select="leo:jdbc-oracle-params/leo:affinity-policy"/>
      <xsl:choose>
         <xsl:when test="$value">
     <xsl:value-of select="leo:jdbc-oracle-params/leo:affinity-policy"/>
      </xsl:when>
         <xsl:otherwise>
     <xsl:text> default affinity-policy </xsl:text>
      </xsl:otherwise>
       </xsl:choose>
     </td>


     <td>
     <xsl:variable name="value"  select="leo:jdbc-oracle-params/leo:oracle-proxy-session"/>
      <xsl:choose>
         <xsl:when test="$value">
     <xsl:value-of select="leo:jdbc-oracle-params/leo:oracle-proxy-session"/>
      </xsl:when>
         <xsl:otherwise>
     <xsl:text> default oracle-proxy-session </xsl:text>
      </xsl:otherwise>
       </xsl:choose>
     </td>


     <td>
     <xsl:variable name="value"  select="leo:jdbc-oracle-params/leo:use-database-credentials"/>
      <xsl:choose>
         <xsl:when test="$value">
     <xsl:value-of select="leo:jdbc-oracle-params/leo:use-database-credentials"/>
      </xsl:when>
         <xsl:otherwise>
     <xsl:text> default use-database-credentials </xsl:text>
      </xsl:otherwise>
       </xsl:choose>
     </td>


     <td>
     <xsl:variable name="value"  select="leo:jdbc-oracle-params/leo:replay-initiation-timeout"/>
      <xsl:choose>
         <xsl:when test="$value">
     <xsl:value-of select="leo:jdbc-oracle-params/leo:replay-initiation-timeout"/>
      </xsl:when>
         <xsl:otherwise>
     <xsl:text> default replay-initiation-timeout </xsl:text>
      </xsl:otherwise>
       </xsl:choose>
     </td>


 </tr>

   </xsl:when>
    </xsl:choose>
   </xsl:for-each>

  </table>

  <button class="btn btn-info btn-sm" onclick="exportTableToExcel('oracle-table', 'jdbc-oracle-params')">Export To Excel </button>

<p/> <br/> <p/>

  </div>

</div>



</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
