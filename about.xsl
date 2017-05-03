<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	
	
<xsl:template match="/">
 <title>About Us</title>
<html>
<link href="desktopSOHStyle.css" rel="stylesheet" media="screen"></link>
<body>
<div id="wrapper">
<h1>Segways Over the Hudson : About</h1>
<div class="nav">
	<ul>
		<li><a href="index.html">Home</a></li>
		<li><a href="aboutSOH.html">About</a></li>
		<li><a href="diningSOH.html">Dining</a></li>
		<li><a href="toursSOH.html">Tours</a></li>
		<li><a href="viewsSOH.html">Views</a></li>
		<li><a href="history.html">History</a></li>
		<li><a href="contactSOH.html">Contact Us</a></li>
	</ul>
 </div>
 
 <div id="content">
<h2>Segway Tours About</h2>
<p><span class="resort">We give segway tours over the Hudson river and provide food and refreshments on the walk-way.</span></p>
<br></br>


<ul>
  <li>Segway Tours for a reasonable price</li>
  <li>Apetizers, Sandwiches, Pizza, And many other gourmet meals</li>
  <li>T-Shirts</li>
  <li>Soft drinks and craft beers</li>
  <li>Professional photographs of your experience</li>
</ul>



<div class="clear">Segways Over the Hudson
11201 Segways Rock Road
Poughkeepsie, NY ;12601

888-555-5555 


<div id="footer">Copyright 2017 Segways Over the Hudson
  <a href="mailto:yourfirstname@yourlastname.com">yourfirstname@yourlastname.com</a></div>



  </div></div>
  <center>Please fill out, and submit the form below</center>
  <xsl:apply-templates/>  
  <br/>
  </div>
  
  

</body>
  </html>
</xsl:template>

<xsl:template match="form">
<table  width="700" height="300">
 
 <p>
    <xsl:apply-templates select="fname"/>
    <xsl:apply-templates select="lname"/>    
    <xsl:apply-templates select="email"/>      
    <xsl:apply-templates select="phone"/>
    <xsl:apply-templates select="comment"/>
	<xsl:apply-templates select="submit"/>
</p>
  </table>
</xsl:template>




<xsl:template match="submit">

<FORM METHOD="LINK" ACTION="http://www.tipjar.com/cgi-bin/test">
   FirstName: <input type="text" name="fname" value=""><xsl:value-of select="."/></input>
   LastName: <input type="text" name="lname" value=""><xsl:value-of select="."/></input>
   Email:    <input type="text" name="email" value=""><xsl:value-of select="."/></input>
   Phone:    <input type="text" name="phone" value=""><xsl:value-of select="."/></input>
   Comment:  <input type="text" name="comment" value=""><xsl:value-of select="."/></input>
			<xsl:variable name="type" select="'submit'"/>
			<xsl:variable name="value" select="concat('XML','Submit')"/>
        
			<INPUT >
				<xsl:attribute name="TYPE"><xsl:value-of select="$type"/></xsl:attribute>
				<xsl:attribute name="VALUE"><xsl:value-of select="$value"/></xsl:attribute>
			
			

  <xsl:value-of select="."/></INPUT></FORM>
  <br />
</xsl:template>





</xsl:stylesheet>

