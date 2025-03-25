<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:key name="store-id-key" match="customer" use="@store_id" />

  <xsl:template match="/">
    <html>
      <body>
        <table border="1">
          <thead>
            <tr>
              <th>Store ID</th>
              <th>Number of Clients</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each
              select="//customer[generate-id() = generate-id(key('store-id-key', @store_id)[1])]">
              <xsl:variable name="store-id" select="@store_id" />
              <xsl:variable name="count"
                select="count(key('store-id-key', $store-id))" />
              <tr>
                <td>
                  <xsl:value-of select="$store-id" />
                </td>
                <td>
                  <xsl:value-of select="$count" />
                </td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>