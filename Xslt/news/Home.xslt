<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
	<div class="about-1 lapthanh-section">
		<div class="container">
			<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
		</div>
	</div>
  </xsl:template>
  <xsl:template match="News">
	<h2 class="main-title"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
	<div class="desc">
		<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
	</div>
	<div class="row about-block">
		<xsl:apply-templates select="NewsAttributes"></xsl:apply-templates>
	</div>
  </xsl:template>
	<xsl:template match="NewsAttributes">
		<xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>
</xsl:stylesheet>