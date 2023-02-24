<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
    
    <xsl:template match="/">
        <html>
            <body>
                
                
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Titre</th>
                        <th>Resume</th>
                        <th>Objectifs</th>
                        <th>Prerequis</th>
                        <th>Motscles</th>
                        <th>Auteurs</th>
                        <th>Type</th>
                        <th>Duree</th>
                        <th>Support</th>
                        <th>Lien d'accee</th>
                    </tr>
                    <xsl:for-each select="ListeCours/cours">
                        <xsl:if test="Titre = 'Technologie XML'">
                        <tr>
                            <td><xsl:value-of select="Titre"/></td>
                            <td><xsl:value-of select="Resume"/></td>
                            <td>
                                <xsl:for-each select="objectifs">
                                    <xsl:value-of select="objectif"/>
                                </xsl:for-each>
                            </td>
                            <td><xsl:value-of select="prerequis"/></td>
                            <td>
                                <xsl:for-each select="motscles">
                                    <xsl:value-of select="motcle"/>
                                </xsl:for-each>
                            </td>
                            <td>
                                <xsl:for-each select="auteurs">
                                    <xsl:value-of select="auteur"/>
                                </xsl:for-each>
                            </td>
                            <td><xsl:value-of select="type"/></td>
                            <td><xsl:value-of select="duree"/></td>
                            <td><xsl:value-of select="support"/></td>
                            <td><xsl:value-of select="lienAcces"/></td>
                        </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>

            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>