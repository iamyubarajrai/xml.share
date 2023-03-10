<?xml version="1.0"?>
<!-- 
    XSL is a namespace, which can by any name, i.e.: abc
    Namespace belongs to URL/URI 
    But, URL/URI may be fake also
    match: root path expression to find elements, XML uses XPATH as match

    Lets work on transforming XML to HTML
    XPATH = / <- We are at the top/start of the document with '/' root path

    XHTML is strict version of HTML
-->
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
                            <th>ID</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Email</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="personData/user">
                            <xsl:sort select="@id" order="descending" />
                            <tr>
                                <td><xsl:value-of select="@id" /></td>
                                <td><xsl:value-of select="fname" /></td>
                                <td><xsl:value-of select="lname" /></td>
                                <td><xsl:value-of select="email" /></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>