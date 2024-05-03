<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Student Grades</title>
                <style>
                    table {
                        border-collapse: collapse;
                        width: 100%;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 8px;
                        text-align: left;
                    }
                    tr:nth-child(even) {
                        background-color: #f2f2f2;
                    }
                    th {
                        background-color: #4CAF50;
                        color: white;
                    }
                    .highlight {
                        background-color: yellow;
                    }
                </style>
            </head>
            <body>
                <h2>Student Grades</h2>
                <table>
                    <tr>
                        <th>Name</th>
                        <th>Grade</th>
                    </tr>
                    <xsl:apply-templates select="students/student"/>
                </table>
            </body>
        </html>
    </xsl:template>
   
    <xsl:template match="student">
        <tr>
            <xsl:choose>
                <xsl:when test="grade='A'">
                    <xsl:attribute name="class">highlight</xsl:attribute>
                </xsl:when>
            </xsl:choose>
            <td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="grade"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
