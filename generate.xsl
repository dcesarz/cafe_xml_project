<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"
                doctype-public="XSLT-compat"
                omit-xml-declaration="yes"
                encoding="UTF-8"
                indent="yes"
    />
    <xsl:template match="/">

        <html>
            <head>
            <xsl:comment>Example.</xsl:comment>
                <link rel="stylesheet" href="stylehtml.css"/>
                <title>CAFE BLUE</title>
            </head>
            <body>
                <div class="main">
                <div class="header box">
                <h1>Kawiarnia Blue</h1>
                </div>

                <div class="content">

                    <div class="menu">
                        <h1>MENU</h1>
                        <div class="drink">

                            <xsl:for-each select="//menu/item/drink">

                                <ol>
                                    <li>
                               <xsl:choose>
                                   <xsl:when test="kawa"><xsl:value-of select="kawa"/></xsl:when>
                                   <xsl:when test="herbata"><xsl:value-of select="herbata"/></xsl:when>
                                   <xsl:when test="innedrink"><xsl:value-of select="innedrink"/></xsl:when>
                               </xsl:choose>
                                    </li>
                                </ol>

                            </xsl:for-each>

                        </div>

                        <div class="food">
                            <xsl:for-each select="//menu/item/food">
                                <ul>
                                    <li>
                                    <xsl:choose>
                                        <xsl:when test="dezert"><xsl:value-of select="dezert"/></xsl:when>
                                        <xsl:when test="innefood"><xsl:value-of select="innefood"/></xsl:when>
                                    </xsl:choose>
                                    </li>
                                </ul>
                            </xsl:for-each>
                        </div>

                        </div>

                    <div class="pracownicy">

                        <h1>PRACOWNICY</h1>
                        <xsl:for-each select="//pracownicy/pracownik">
                           <xsl:sort select="nazwisko"/>
                            <ul>
                                <li>
                                <xsl:value-of select="imie"/>
                                &#160;
                                <xsl:value-of select="nazwisko"/>
                                &#160;
                                <xsl:value-of select="kontakt/tel"/>
                                </li>
                            </ul>
                        </xsl:for-each>
                    </div>

                    <div class="npp">

                        <h1>PENSJA WLASCICIELKI</h1>

                            <xsl:apply-templates select="//pracownicy/pracownik[@id='a00001']/pensja"/>

                        <h1>BARISTY</h1>


                        <xsl:for-each select="//pracownicy/pracownik[stanowisko='barista']">
                                <ul>
                                <li>
                                <span style="color:grey">

                                    <xsl:value-of select="imie"/>&#160;<xsl:value-of select="nazwisko"/>

                                    </span>
                                </li>
                                </ul>


                        </xsl:for-each>

                        <h1>



                        </h1>


                    </div>



                </div>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>