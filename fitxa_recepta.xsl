<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/receptes/recepta">
    <html>
    <head>
        <style type="text/css">
.titol {
    font-size:2.83em;
	color:#000000;
	font-family:Tahoma, "Lucida Sans Unicode", Verdana, sans-serif;
	font-weight:bold;
}

.subtitol {
    font-size:1.23em;
	color:#000000;
	font-family:Arial;
	font-weight:bold;
}

.ingredients {
    font-size:0.9em;
	color:#000000;
	font-family:Arial;
	}


.categoria {

width: 300px;	
height: 40px;

    font-size:1.6em;
	color:#000000;
	font-family:Tahoma, "Lucida Sans Unicode", Verdana, sans-serif;
	font-weight:bold;	
    padding:0.3em 1em;
	
border-radius: 0px 27px 26px 0px; 
-moz-border-radius: 0px 27px 26px 0px; 
-webkit-border-radius: 0px 27px 26px 0px; 


color: #ffffff;
background: #6495FC;
}        
		
.info {		
background: #AFE1FA ; 
width: 400px;
height: 90px;
padding: 30px;
}

.info2{		
background: #DAF3F8 ; 
width: 400px;
padding: 30px;
}

.rodona {
    position: relative; 
	border-radius: 50%;
	width: 30px;
	height: 30px; 
    background: #6495FC;
	color: #ffffff;
	font-size:1.2em;
	font-family:Tahoma, "Lucida Sans Unicode", Verdana, sans-serif;
	font-weight:bold;	
	text-align: center; 
	/* width and height can be anything, as long as they're equal */
}

.prepa {
position: relative ; 
top: -25px; 
left: 40px; 
width: 830px;
font-weight:bold;
}

.foto{
padding: 0px;
}

        </style>
    </head>
<body>

<div class="categoria">Recetas de <xsl:value-of select="categoria"/></div>
<br />
<div class="titol"><xsl:value-of select="nom"/></div>
<table>
<tr>
<td rowspan="2" class="foto">
<xsl:element name="img">
   <xsl:attribute name="src">
   <xsl:value-of select="informacio_general/foto"/>
   </xsl:attribute>
   <xsl:attribute name="height">
   <xsl:value-of select="390"/>
   </xsl:attribute>
 </xsl:element>
</td>
<td class="info">
<b>Comensals </b> <xsl:value-of select="informacio_general/comensals" /><br />
<b>Temps </b> <xsl:value-of select="informacio_general/temps" /> <xsl:value-of select="concat(' ',informacio_general/temps/@unitat)" /><br />
<b>Dificultat </b> <xsl:value-of select="informacio_general/dificultat" /><br />
</td>
</tr>
<tr>
<td class="info2">
<span class="subtitol">Ingredients</span><br /><br />
<span class="ingredients">
          <xsl:for-each select="ingredients/ingredient">
              <xsl:value-of select="@quantitat"/><xsl:value-of select="concat(' ',.)"/> <br />
        </xsl:for-each>
</span>		
</td>
</tr>
</table>
<br />
<span class="subtitol">Preparació</span> <br />

<xsl:for-each select="preparacio/pas">
    <div class="rodona"> <xsl:value-of select="@numero"/></div><div class="prepa"><xsl:value-of select="." /></div>
	</xsl:for-each>
<br/>

                    <xsl:for-each select="/recepta">
                    
					<!-- 
					<xsl:element name="a">
                            <xsl:attribute name="href">
                                <xsl:value-of select="link"/>
                            </xsl:attribute>
                            <xsl:value-of select="title"/>
                        </xsl:element>
                     
					 -->
					 
                    </xsl:for-each>
        
     
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>