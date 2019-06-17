<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
    <div class="table-main">
      <table>
        <thead>
          <tr>
            <th>position</th>
            <th>quantity</th>
            <th>area</th>
            <th>start day</th>
            <th>expiry day</th>
          </tr>
        </thead>
        <tbody class="listJob">
          <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
        </tbody>
      </table>
    </div>
	</xsl:template>
	<xsl:template match="News">
		<tr>
			<xsl:if test="floor(ShowOption div 1) mod 2=1">
				<xsl:attribute name="class">
					<xsl:text>hot</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<td>
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</a>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
			</td>
			<td><xsl:value-of select="StartDate" disable-output-escaping="yes"></xsl:value-of></td>
			<td><xsl:value-of select="EndDate" disable-output-escaping="yes"></xsl:value-of></td>
		</tr>
	</xsl:template>
</xsl:stylesheet>