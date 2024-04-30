<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Actors and Movies</title>
                <style>
                    table {
                        border-collapse: collapse;
                        width: 100%;
                    }
                    th, td {
                        border: 1px solid #dddddd;
                        text-align: left;
                        padding: 8px;
                    }
                    th {
                        background-color: #95C11E;
                        
                    }
                </style>
            </head>
            <body>
                <h1>Actors and Movies</h1>
                <table>
                    <thead>
                        <tr>
                            <th>Actor Name</th>
                            <th>Date of Birth</th>
                            <th>Movies</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:apply-templates/>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="actor">
        <tr>
            <td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="dob"/></td>
            <td>
                <ul>
                    <xsl:apply-templates select="movies/movie"/>
                </ul>
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="movie">
        <li>
            <xsl:value-of select="title"/> (<xsl:value-of select="year"/>)
        </li>
    </xsl:template>
</xsl:stylesheet>
