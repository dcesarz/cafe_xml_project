<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" />
    <xsl:template match="/">
        <html>
            <head>
            <xsl:comment>Example.</xsl:comment>
            </head>
            <body>
                <div class="header box">
                <h1>Kawiarnia Blue</h1>
                </div>

                <div class="content">

                    <div class="menu">
                        <h1>MENU</h1>
                        <div class="drink">
                        <xsl:apply-templates select="//menu/item/drink"/>
                        </div>

                        <div class="food">
                        <xsl:apply-templates select="//menu/item/food"/>
                        </div>

                        </div>

                    <div class="pracownicy">

                        <h1>PRACOWNICY</h1>
                        <xsl:apply-templates select="//pracownicy"/>
                    </div>

                    <div class="npp">

                        <h1>NAJLEPIEJ ZARABIAJACY PRACOWNIK</h1>
                        <xsl:apply-templates select="//pracownicy"/>
                    </div>



                </div>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>