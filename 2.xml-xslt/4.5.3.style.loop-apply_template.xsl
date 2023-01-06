<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>XSLT Tutorial</title>
            </head>
            <body>
                <table border="1" cellpadding="6" cellspacing="6">
                    <thead bgcolor="#F2F2F2">
                        <tr>
                            <th>Category</th>
                            <th>Title</th>
                            <th>Author</th>
                            <th>Year</th>
                            <th>Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Applying Configured Template -->
                        <xsl:apply-templates />
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>

    <!-- Templates Application -->
    <xsl:template match="book">
        <tr>
            <td><xsl:apply-templates select="@category" /></td>
            <td><xsl:apply-templates select="title" /></td>
            <td><xsl:apply-templates select="author" /></td>
            <td><xsl:apply-templates select="year" /></td>
            <td><xsl:apply-templates select="price" /></td>
        </tr>
    </xsl:template>
    
    <!-- Templates -->
    <xsl:template match="@category">
        <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="title">
        <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="author">
        <xsl:value-of select="."/>,
    </xsl:template>
    <xsl:template match="year">
        <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="price">
        <xsl:value-of select="."/>
    </xsl:template>
    <!-- ends Templates -->

</xsl:stylesheet>