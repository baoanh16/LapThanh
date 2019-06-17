<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
	<div class="projects lapthanh-section">
		<div class="container">
			<h1 class="main-title"><xsl:value-of select="/NewsList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of></h1>
			<div class="row main-projects">
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				<div class="view-more">
					<a href="http://preview6308.canhcam.com.vn/projects">
						<xsl:text disable-output-escaping="yes">view more</xsl:text>
						<xsl:attribute name="href">
							<xsl:value-of select="/NewsList/FullUrl"></xsl:value-of>
						</xsl:attribute>
					</a>
					<xsl:value-of select="/NewsList/EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
		</div>
	</div>
  </xsl:template>
  <xsl:template match="News" mode="viewmore">
	<a>
		<xsl:text disable-output-escaping="yes">view more</xsl:text>
		<xsl:attribute name="href">
			<xsl:value-of select="FullUrl"></xsl:value-of>
		</xsl:attribute>
	</a>
  </xsl:template>
  <xsl:template match="News">
	<xsl:if test="position()=1">
		<xsl:text disable-output-escaping="yes">&lt;div class="col-lg-8"&gt;</xsl:text>
	</xsl:if>
	<xsl:if test="position()=2">
		<xsl:text disable-output-escaping="yes">&lt;div class="col-lg-4"&gt;</xsl:text>
	</xsl:if>
	<xsl:if test="position()=3">
	</xsl:if>
		<a class="project">
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<div class="img">
				<img class="lazyload blur-up">
					<xsl:attribute name="data-src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</div>
			<div class="content">
				<p><xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of></p>
				<h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2><em class="mdi mdi-arrow-right"></em>
			</div>
			<div class="cover">
			</div>
		</a>
	<xsl:if test="position()=1">
		<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
	</xsl:if>
	<xsl:if test="position()=2">
	</xsl:if>
	<xsl:if test="position()=3">
		<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
	</xsl:if>
  </xsl:template>
</xsl:stylesheet>